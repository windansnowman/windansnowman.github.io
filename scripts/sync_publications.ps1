param(
  [string]$InputFile = "PUBLICATIONS_INPUT.md",
  [string]$OutputDir = "_publications"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Normalize-ImagePath {
  param([string]$Path)
  if ([string]::IsNullOrWhiteSpace($Path)) { return "" }
  $p = ($Path.Trim() -replace '\\', '/')
  $p = $p -replace '^/images/images/', '/images/'
  $p = $p -replace '^images/images/', 'images/'
  if ($p -match '^/images/') { return $p }
  if ($p -match '^images/') { return "/$p" }
  if ($p -match '^https?://') { return $p }
  return "/images/$p"
}

function Normalize-Link {
  param([string]$Link)
  if ([string]::IsNullOrWhiteSpace($Link)) { return "" }
  $l = $Link.Trim()
  if ($l -eq "" -or $l -eq "-") { return "" }
  if ($l -match '^https?://') { return $l }
  return ""
}

function Esc {
  param([string]$s)
  if ($null -eq $s) { return "" }
  return ($s -replace '"', '\\"')
}

if (-not (Test-Path $InputFile)) { throw "Input file not found: $InputFile" }
if (-not (Test-Path $OutputDir)) { New-Item -ItemType Directory -Path $OutputDir | Out-Null }

$lines = Get-Content -Path $InputFile -Encoding UTF8
$papers = @()
$current = $null

foreach ($lineRaw in $lines) {
  $line = $lineRaw.TrimEnd()
  if ($line -match '^##\s+Paper\s+(\d+)\s*$') {
    if ($current -and -not [string]::IsNullOrWhiteSpace($current.Title)) {
      $papers += [pscustomobject]$current
    }
    $current = @{
      PaperId = [int]$Matches[1]
      Title = ""
      Authors = ""
      Venue = ""
      Year = ""
      Summary = ""
      PaperUrl = ""
      CodeUrl = ""
      ProjectUrl = ""
      VideoUrl = ""
      Teaser = ""
      Contribution = ""
    }
    continue
  }

  if (-not $current) { continue }

  if ($line.StartsWith('Title:')) { $current.Title = $line.Substring(6).Trim(); continue }
  if ($line.StartsWith('Authors:')) { $current.Authors = $line.Substring(8).Trim(); continue }
  if ($line.StartsWith('Status/Venue:')) { $current.Venue = $line.Substring(13).Trim(); continue }
  if ($line.StartsWith('Year:')) { $current.Year = $line.Substring(5).Trim(); continue }
  if ($line.StartsWith('Summary:')) { $current.Summary = $line.Substring(8).Trim(); continue }

  if ($line.StartsWith('- Paper:')) { $current.PaperUrl = Normalize-Link($line.Substring(8).Trim()); continue }
  if ($line.StartsWith('- Code:')) { $current.CodeUrl = Normalize-Link($line.Substring(7).Trim()); continue }
  if ($line.StartsWith('- Project:')) { $current.ProjectUrl = Normalize-Link($line.Substring(10).Trim()); continue }
  if ($line.StartsWith('- Video:')) { $current.VideoUrl = Normalize-Link($line.Substring(8).Trim()); continue }
  if ($line.StartsWith('- Image file:')) { $current.Teaser = Normalize-ImagePath($line.Substring(13).Trim()); continue }
  if ($line.StartsWith('- Contribution (first-author/co-first/corresponding):')) { $current.Contribution = $line.Substring(53).Trim(); continue }
}

if ($current -and -not [string]::IsNullOrWhiteSpace($current.Title)) {
  $papers += [pscustomobject]$current
}

if ($papers.Count -eq 0) { throw "No valid papers found in $InputFile" }

foreach ($paper in $papers) {
  $year = 0
  if (-not [int]::TryParse([string]$paper.Year, [ref]$year)) { $year = (Get-Date).Year }

  $existingFile = $null
  $existingRaw = ""
  $candidates = Get-ChildItem -Path $OutputDir -Filter *.md

  foreach ($f in $candidates) {
    $c = Get-Content -Raw -Path $f.FullName -Encoding UTF8
    if ($c -match "(?im)^paper_id:\s*$($paper.PaperId)\s*$" -and $c -match "(?im)^pub_year:\s*$year\s*$") {
      $existingFile = $f.FullName
      $existingRaw = $c
      break
    }
  }

  if (-not $existingFile) {
    foreach ($f in $candidates) {
      $c = Get-Content -Raw -Path $f.FullName -Encoding UTF8
      if ($c -match ('(?im)^title:\s*"?' + [regex]::Escape($paper.Title) + '"?\s*$')) {
        $existingFile = $f.FullName
        $existingRaw = $c
        break
      }
    }
  }

  function ReadField([string]$content,[string]$name){
    $m=[regex]::Match($content,'(?im)^'+[regex]::Escape($name)+':\s*"?(.*?)"?\s*$')
    if($m.Success){ return $m.Groups[1].Value.Trim() }
    return ""
  }
  function ReadTeaser([string]$content){
    $m=[regex]::Match($content,'(?ims)^header:\s*\r?\n\s*teaser:\s*"?(.*?)"?\s*$')
    if($m.Success){ return $m.Groups[1].Value.Trim() }
    return ""
  }

  $paperUrl = if ([string]::IsNullOrWhiteSpace($paper.PaperUrl)) { Normalize-Link (ReadField $existingRaw 'paperurl') } else { $paper.PaperUrl }
  $codeUrl = if ([string]::IsNullOrWhiteSpace($paper.CodeUrl)) { Normalize-Link (ReadField $existingRaw 'codeurl') } else { $paper.CodeUrl }
  $projectUrl = if ([string]::IsNullOrWhiteSpace($paper.ProjectUrl)) { Normalize-Link (ReadField $existingRaw 'projecturl') } else { $paper.ProjectUrl }
  $videoUrl = if ([string]::IsNullOrWhiteSpace($paper.VideoUrl)) { Normalize-Link (ReadField $existingRaw 'videourl') } else { $paper.VideoUrl }
  $teaser = if ([string]::IsNullOrWhiteSpace($paper.Teaser)) { Normalize-ImagePath (ReadTeaser $existingRaw) } else { $paper.Teaser }

  if (-not $existingFile) {
    $existingFile = Join-Path $OutputDir ("{0}-paper-{1:D2}.md" -f $year, [int]$paper.PaperId)
  }

  $day = [Math]::Min([int]$paper.PaperId, 28)
  $date = "{0}-01-{1:D2}" -f $year, $day
  $sortKey = "{0}-{1:D3}" -f $year, [int]$paper.PaperId

  $front = @(
    "---",
    ('title: "{0}"' -f (Esc $paper.Title)),
    "collection: publications",
    "date: $date",
    "pub_year: $year",
    "paper_id: $([int]$paper.PaperId)",
    ('sort_key: "{0}"' -f $sortKey)
  )
  if (-not [string]::IsNullOrWhiteSpace($paper.Venue)) { $front += ('venue: "{0}"' -f (Esc $paper.Venue)) }
  if (-not [string]::IsNullOrWhiteSpace($paper.Authors)) { $front += ('authors: "{0}"' -f (Esc $paper.Authors)) }
  if (-not [string]::IsNullOrWhiteSpace($paper.Contribution)) { $front += ('contribution: "{0}"' -f (Esc $paper.Contribution)) }
  if (-not [string]::IsNullOrWhiteSpace($paper.Summary)) { $front += ('excerpt: "{0}"' -f (Esc $paper.Summary)) }
  if (-not [string]::IsNullOrWhiteSpace($paperUrl)) { $front += ('paperurl: "{0}"' -f $paperUrl) }
  if (-not [string]::IsNullOrWhiteSpace($codeUrl)) { $front += ('codeurl: "{0}"' -f $codeUrl) }
  if (-not [string]::IsNullOrWhiteSpace($projectUrl)) { $front += ('projecturl: "{0}"' -f $projectUrl) }
  if (-not [string]::IsNullOrWhiteSpace($videoUrl)) { $front += ('videourl: "{0}"' -f $videoUrl) }
  if (-not [string]::IsNullOrWhiteSpace($teaser)) { $front += "header:"; $front += ('  teaser: "{0}"' -f $teaser) }
  $front += "---"

  $body = @()
  if (-not [string]::IsNullOrWhiteSpace($paper.Authors)) { $body += ""; $body += "**Authors**: $($paper.Authors)" }
  if (-not [string]::IsNullOrWhiteSpace($paper.Contribution)) { $body += ""; $body += "**Contribution**: $($paper.Contribution)" }
  if (-not [string]::IsNullOrWhiteSpace($paper.Summary)) { $body += ""; $body += "**Summary**: $($paper.Summary)" }

  $links = @()
  if (-not [string]::IsNullOrWhiteSpace($paperUrl)) { $links += "- [Paper]($paperUrl)" }
  if (-not [string]::IsNullOrWhiteSpace($codeUrl)) { $links += "- [Code]($codeUrl)" }
  if (-not [string]::IsNullOrWhiteSpace($projectUrl)) { $links += "- [Project]($projectUrl)" }
  if (-not [string]::IsNullOrWhiteSpace($videoUrl)) { $links += "- [Video]($videoUrl)" }
  if ($links.Count -gt 0) { $body += ""; $body += "**Links**:"; $body += $links }

  if (-not [string]::IsNullOrWhiteSpace($teaser)) { $body += ""; $body += "![Figure]($teaser)" }

  $content = ($front + $body) -join "`r`n"
  Set-Content -Path $existingFile -Value $content -Encoding UTF8
  Write-Output "Synced: $existingFile"
}

Write-Output "Done. Synced $($papers.Count) paper(s)."
