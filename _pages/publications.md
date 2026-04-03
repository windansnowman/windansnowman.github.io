---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

<style>
  .pub-list-card {
    display: flex;
    align-items: center;
    padding: 10px;
    border: 1.5px solid #cfe2df;
    border-radius: 10px;
    background: #ffffff;
    margin-bottom: 20px;
    box-sizing: border-box;
  }
  .pub-list-authors {
    font-size: 13px;
    color: #4b5563;
    line-height: 1.45;
  }
  .pub-list-meta {
    margin-top: 4px;
    margin-bottom: 6px;
  }
  .pub-list-actions a {
    margin-right: 8px;
    font-size: 14px;
  }
  .pub-list-badge {
    display: inline-block;
    margin-left: 6px;
    padding: 1px 8px;
    border-radius: 999px;
    font-size: 12px;
    font-weight: 700;
    line-height: 1.5;
    color: #0f766e;
    background: rgba(15, 118, 110, 0.08);
    border: 1px solid rgba(15, 118, 110, 0.35);
  }
</style>

{% if site.author.googlescholar %}
  <div class="wordwrap">You can also find my articles on <a href="{{site.author.googlescholar}}">my Google Scholar profile</a>.</div>
{% endif %}

{% include base_path %}

{% assign sorted_pubs = site.publications | sort: "sort_key" | reverse %}
{% for post in sorted_pubs %}
  <div class="pub-list-card">
    {% if post.header.teaser %}
      <img src="{{ base_path }}{{ post.header.teaser }}" alt="{{ post.title }}" width="220" height="120" style="margin-right: 20px; border-radius: 8px; object-fit: cover;">
    {% endif %}
    <div>
      {% if post.paperurl %}
        <strong><a href="{{ post.paperurl }}">{{ post.title }}</a></strong><br>
      {% else %}
        <strong><a href="{{ base_path }}{{ post.url }}">{{ post.title }}</a></strong><br>
      {% endif %}
      {% assign clean_authors = post.authors | replace_first: 'Authors:', '' | strip %}
      {% if clean_authors %}<div class="pub-list-authors"><i>{{ clean_authors }}</i></div>{% endif %}
      <div class="pub-list-meta">
        {% if post.venue %}<b><i style="color:#1d7068;">{{ post.venue }}</i></b>{% if post.date %}, {{ post.date | date: "%Y" }}{% endif %}{% endif %}
        {% if post.contribution %}<span class="pub-list-badge">{{ post.contribution }}</span>{% endif %}
      </div>
      {% if post.excerpt %}{{ post.excerpt }}<br>{% endif %}
      <div class="pub-list-actions">
        {% if post.paperurl %}<a href="{{ post.paperurl }}"><em>[paper]</em></a>{% endif %}
        {% if post.codeurl %}<a href="{{ post.codeurl }}"><em>[code]</em></a>{% endif %}
        {% if post.projecturl %}<a href="{{ post.projecturl }}"><em>[project]</em></a>{% endif %}
        {% if post.videourl %}<a href="{{ post.videourl }}"><em>[video]</em></a>{% endif %}
      </div>
    </div>
  </div>
{% endfor %}
