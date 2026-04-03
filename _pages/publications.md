---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if site.author.googlescholar %}
  <div class="wordwrap">You can also find my articles on <a href="{{site.author.googlescholar}}">my Google Scholar profile</a>.</div>
{% endif %}

{% include base_path %}

{% assign sorted_pubs = site.publications | sort: "sort_key" | reverse %}
{% for post in sorted_pubs %}
  <div class="publication-card" style="display: flex; align-items: center; padding: 8px; border: 1.5px solid #cfe2df; border-radius: 8px; background: #fff; box-sizing: border-box; margin-bottom: 20px;">
    {% if post.header.teaser %}
      <img src="{{ base_path }}{{ post.header.teaser }}" alt="{{ post.title }}" width="220" height="120" style="margin-right: 20px; border-radius: 8px; object-fit: cover;">
    {% endif %}
    <div>
      {% if post.paperurl %}
        <strong><a href="{{ post.paperurl }}">{{ post.title }}</a></strong><br>
      {% else %}
        <strong><a href="{{ base_path }}{{ post.url }}">{{ post.title }}</a></strong><br>
      {% endif %}
      {% if post.authors %}<i style="font-size: 13px;">{{ post.authors }}</i><br>{% endif %}
      {% if post.venue %}<b><i style="color:#1d7068;">{{ post.venue }}</i></b>{% if post.date %}, {{ post.date | date: "%Y" }}{% endif %}<br>{% endif %}
      {% if post.excerpt %}{{ post.excerpt }}<br>{% endif %}
      {% if post.paperurl %}<a href="{{ post.paperurl }}"><em>[paper]</em></a>{% endif %}
      {% if post.codeurl %} <a href="{{ post.codeurl }}"><em>[code]</em></a>{% endif %}
      {% if post.projecturl %} <a href="{{ post.projecturl }}"><em>[project]</em></a>{% endif %}
      {% if post.videourl %} <a href="{{ post.videourl }}"><em>[video]</em></a>{% endif %}
      {% if post.contribution %}<br><small><strong>Contribution:</strong> {{ post.contribution }}</small>{% endif %}
    </div>
  </div>
{% endfor %}
