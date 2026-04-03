---
permalink: /
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---
<style>
    .experience-card {
        display: flex;
        align-items: center;
        background: #f4fbfa;
        border-radius: 12px;
        padding: 16px;
        margin-bottom: 0px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.05);
        transition: transform 0.3s, box-shadow 0.3s;
    }
    .experience-card:hover {
       
        box-shadow: 0 8px 16px rgba(0,0,0,0.1);
    }
    .experience-logo {
        width: 60px;
        height: 60px;
        margin-right: 20px;
        border-radius: 8px;
        object-fit: contain;
    }
    .experience-info {
        font-family: "Segoe UI", sans-serif;
    }
    .experience-info strong {
        font-size: 1.1em;
    }
    .experience-info a {
        text-decoration: none;
        color: #0f766e;
    }
    .experience-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
    }
    .experience-card {
        box-sizing: border-box;
    }
    .publication-card {
        display: flex;
        align-items: center;
        padding: 3px;
        border: 1.5px solid #cfe2df;
        border-radius: 8px;
        background: #ffffff;
        box-sizing: border-box;
        margin-bottom: 20px; 
        transition: transform 0.3s ease, box-shadow 0.3s ease;

        color: #5f6368; /* 正文整体更浅 */
    }
    .publication-card > div > strong,
    .publication-card > div > div > strong {
        color: #202124;
    }
    .publication-card i {
        color: #6b7280;
    }

    .pub-badge {
        display: inline-block;
        margin-left: 6px;
        padding: 1px 8px;
        border-radius: 999px;
        font-size: 12px;
        font-weight: 700;
        line-height: 1.5;
        vertical-align: baseline;
        white-space: nowrap;
    }

    .pub-badge--oral {
        color: #1d7068;
        background: rgba(15, 118, 110, 0.0);
        border: 1px solid rgba(15, 118, 110, 0.6);
    }

    .pub-badge--contrib {
        color: #0f766e;
        background: rgba(15, 118, 110, 0.08);
        border: 1px solid rgba(15, 118, 110, 0.35);
    }

    .pub-authors {
        font-size: 13px;
        color: #4b5563;
        line-height: 1.45;
    }

    .pub-meta {
        margin-top: 4px;
        margin-bottom: 6px;
    }

    .pub-actions a {
        margin-right: 8px;
        font-size: 14px;
    }
    .publication-card:hover {
       
        box-shadow: 0 8px 16px rgba(0,0,0,0.1);
    }

    .publication-card.featured {
        border-color: #99d8cf;
        background: #eef9f7;
        box-shadow: 0 4px 8px rgba(15, 118, 110, 0.18);
        z-index: 10;
    }

    .publication-card.featured:hover {
        box-shadow: 0 8px 16px rgba(15, 118, 110, 0.3);
    }
    
    .publication-card.non-featured {
        display: flex; /* 默认隐藏非精选出版物 */
    }
    
    .pub-button-container {
        display: flex;
        gap: 10px;
        margin: 20px 0;
        flex-wrap: wrap;
    }
    
    .pub-button {
        background-color: #ecf5f4;
        border: 1px solid #b9d8d3;
        border-radius: 20px;
        padding: 8px 16px;
        cursor: pointer;
        transition: all 0.3s ease;
    }
    
    .pub-button:hover {
        background-color: #dcefeb;
    }
    
    .pub-button.active {
        background-color: #0f766e;
        color: white;
        border-color: #0f766e;
    }

    /* Projects cards: keep styles independent from publications */
    .project-card {
        display: flex;
        align-items: center;
        padding: 3px;
        border: 1.5px solid #cfe2df;
        border-radius: 8px;
        background: #ffffff;
        box-sizing: border-box;
        margin-bottom: 20px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;

        color: #5f6368;
    }

    .project-card > div > strong,
    .project-card > div > div > strong {
        color: #202124;
    }

    .project-card i {
        color: #6b7280;
    }

    .project-card:hover {
        box-shadow: 0 8px 16px rgba(0,0,0,0.1);
    }

</style>
<html> 
<head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Fredericka+the+Great&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Homemade+Apple&display=swap');
        body {
            background-color:	 #FFFFFF;
            font-family: 'Arial Rounded MT Bold', 'Verdana', sans-serif;
            font-size: 15px;
        }
        .main-heading {
            font-family: 'Permanent Marker', cursive;
            text-align: center;
            color: #0f766e;
        }
        div.markdown-body a,a {
            text-decoration: none !important;
            color: #0f766e;
            transition: all 0.3s ease; /* 平滑过渡效果 */
        }
        div.markdown-body a:hover, a:hover {
            color: #115e59;
            text-decoration: underline; /* 加上悬浮时的下划线 */
        }
    </style>
</head>
<body>
<h1 class="main-heading">Hi there <img src="images/Hi.gif" width="40px"> Welcome to my Homepage!</h1>
</body>
</html>

I am **Zefeng Wu (吴泽锋)**, a senior undergraduate in **Network Engineering** at **Xidian University**.
I will soon begin my PhD journey in **Cyberspace Security** at **Zhejiang University**.

I am currently advised by <a href="https://scholar.google.com/citations?hl=zh-CN&user=6Zu6W88AAAAJ&view_op=list_works&sortby=pubdate"><em>Yilong Yang</em></a>
and <a href="https://scholar.google.com/citations?user=uU5Q0mMAAAAJ&hl=en"><em>Zhuo Ma</em></a> at Xidian University.
My incoming PhD advisors at Zhejiang University are
<a href="https://scholar.google.com/citations?user=Docv-hkAAAAJ&hl=en"><em>Tianhang Zheng</em></a>,
<a href="https://scholar.google.com/citations?hl=en&user=5fa4lOQAAAAJ&view_op=list_works&sortby=pubdate"><em>Zhan Qin</em></a>, and
<a href="https://scholar.google.com/citations?user=uuQA_rcAAAAJ&hl=en"><em>Kui Ren</em></a>.

My current interests include **Federated Learning**, **LLM Alignment**, **Safety Pre-training**, and **Safety Fine-tuning**.

Education & Experience
--------------
<div class="experience-container">
    <div class="experience-card">
            <img src="images/XDU.png" alt="XDU logo" class="experience-logo">
            <div class="experience-info">
                    <strong>Xidian University</strong><br>
                    2022 - 2026<br>
                    B.Eng. in Network Engineering<br>
                    Advisors: <a href="https://scholar.google.com/citations?hl=zh-CN&user=6Zu6W88AAAAJ&view_op=list_works&sortby=pubdate"><em>Yilong Yang</em></a>,
                    <a href="https://scholar.google.com/citations?user=uU5Q0mMAAAAJ&hl=en"><em>Zhuo Ma</em></a>
            </div>
    </div>

    <div class="experience-card">
                    <img src="images/zju.png" alt="ZJU logo" class="experience-logo">
            <div class="experience-info">
                    <strong>Zhejiang University</strong><br>
                    Incoming PhD Student<br>
                    Cyberspace Security<br>
                    Advisors: <a href="https://scholar.google.com/citations?user=Docv-hkAAAAJ&hl=en"><em>Tianhang Zheng</em></a>,
                    <a href="https://scholar.google.com/citations?hl=en&user=5fa4lOQAAAAJ&view_op=list_works&sortby=pubdate"><em>Zhan Qin</em></a>,
                    <a href="https://scholar.google.com/citations?user=uuQA_rcAAAAJ&hl=en"><em>Kui Ren</em></a>
            </div>
    </div>
</div>

Research Interests
--------
- Federated Learning
- LLM Alignment
- Safety Pre-training
- Safety Fine-tuning

Publications
--------
{% assign recent_pubs = site.publications | sort: "sort_key" | reverse %}
{% for post in recent_pubs limit: 5 %}
<div class="publication-card featured">
    <div style="display: flex; align-items: center;">
        {% if post.header.teaser %}
            <img src="{{ base_path }}{{ post.header.teaser }}" alt="{{ post.title }}" width="200" height="110" style="margin-right: 20px; border-radius: 8px; object-fit: cover;">
        {% endif %}
        <div>
            {% if post.paperurl %}
                <strong><a href="{{ post.paperurl }}">{{ post.title }}</a></strong><br>
            {% else %}
                <strong><a href="{{ base_path }}{{ post.url }}">{{ post.title }}</a></strong><br>
            {% endif %}
            {% assign clean_authors = post.authors | replace_first: 'Authors:', '' | strip %}
            {% if clean_authors %}<div class="pub-authors"><i>{{ clean_authors }}</i></div>{% endif %}
            <div class="pub-meta">
              {% if post.venue %}<b><i style="color:#1d7068;">{{ post.venue }}</i></b>{% if post.date %}, {{ post.date | date: "%Y" }}{% endif %}{% endif %}
              {% if post.contribution %}<span class="pub-badge pub-badge--contrib">{{ post.contribution }}</span>{% endif %}
            </div>
            {% if post.excerpt %}{{ post.excerpt }}<br>{% endif %}
            <div class="pub-actions">
              {% if post.paperurl %}<a href="{{ post.paperurl }}"><em>[paper]</em></a>{% endif %}
              {% if post.codeurl %}<a href="{{ post.codeurl }}"><em>[code]</em></a>{% endif %}
              {% if post.projecturl %}<a href="{{ post.projecturl }}"><em>[project]</em></a>{% endif %}
              {% if post.videourl %}<a href="{{ post.videourl }}"><em>[video]</em></a>{% endif %}
            </div>
        </div>
    </div>
</div>
{% endfor %}

<p><a href="{{ base_path }}/publications/"><strong>See all publications</strong></a></p>

You can find my papers on [Google Scholar](https://scholar.google.com/citations?user=7DTCT_YAAAAJ&hl=zh-CN).

Projects
--------
{% if site.data.profile_sections.projects and site.data.profile_sections.projects.size > 0 %}
{% for item in site.data.profile_sections.projects %}
<div class="project-card">
    <div style="display: flex; align-items: center;">
        {% if item.image and item.image != "" %}
            <img src="{{ item.image }}" alt="{{ item.title }}" width="200" height="110" style="margin-right: 20px; border-radius: 8px; object-fit: cover;">
        {% endif %}
        <div>
            {% if item.url and item.url != "" %}
                <strong><a href="{{ item.url }}">{{ item.title }}</a></strong><br>
            {% else %}
                <strong>{{ item.title }}</strong><br>
            {% endif %}
            {{ item.summary }}
        </div>
    </div>
</div>
{% endfor %}
{% else %}
Project section is being updated.
{% endif %}

Awards
--------
{% if site.data.profile_sections.awards and site.data.profile_sections.awards.size > 0 %}
{% for item in site.data.profile_sections.awards %}
- {{ item.year }} - {{ item.title }}{% if item.issuer and item.issuer != "" %}, {{ item.issuer }}{% endif %}
{% endfor %}
{% else %}
Award section is being updated.
{% endif %}

Patents
--------
{% if site.data.profile_sections.patents and site.data.profile_sections.patents.size > 0 %}
{% for item in site.data.profile_sections.patents %}
- {% if item.url and item.url != "" %}[{{ item.title }}]({{ item.url }}){% else %}{{ item.title }}{% endif %}
    {% if item.status and item.status != "" %}({{ item.status }}){% endif %}
    {% if item.id and item.id != "" %}- {{ item.id }}{% endif %}
    {% if item.year and item.year != "" %}- {{ item.year }}{% endif %}
{% endfor %}
{% else %}
Patent section is being updated.
{% endif %}