---
layout: default
permalink: /
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

<span class="anchor" id="about-me"></span>
# 🔥 Biography

I am Zefeng Wu (吴泽锋), a first-year PhD student at Zhejiang University,
advised by <a href="https://scholar.google.com/citations?user=Docv-hkAAAAJ&hl=en">Tianhang Zheng</a>,
<a href="https://scholar.google.com/citations?hl=en&user=5fa4lOQAAAAJ&view_op=list_works&sortby=pubdate">Zhan Qin</a>, and
<a href="https://scholar.google.com/citations?user=uuQA_rcAAAAJ&hl=en">Kui Ren</a>.

I received my B.Eng. in Network Engineering from Xidian University in 2026, where I was advised by
<a href="https://scholar.google.com/citations?hl=zh-CN&user=6Zu6W88AAAAJ&view_op=list_works&sortby=pubdate">Yilong Yang</a>
and <a href="https://scholar.google.com/citations?user=uU5Q0mMAAAAJ&hl=en">Zhuo Ma</a>.

My current interests include LLM Alignment, Safety Pre-training, Safety Fine-tuning, and Federated Learning.


# 🎉 News
{: #news}

- *2026.08*: &nbsp; One paper was accepted to EMNLP 2026.
- *2026.04*: &nbsp; One paper was accepted to ACL 2026.
- *2025.11*: &nbsp; One paper was accepted to IEEE TIFS.

# 📝 Publications
{: #publications}

See [Google Scholar]({{ site.author.googlescholar }}) for the full publication list.

{% include publication-list.html %}


# 🎖 Honors and Awards
{: #honors-and-awards}

{% for item in site.data.profile_sections.awards %}
- *{{ item.year }}*: &nbsp; {{ item.title }}{% if item.issuer and item.issuer != "" %}, {{ item.issuer }}{% endif %}.
{% endfor %}

# 📖 Educations
{: #educations}

- *2026 - Present*, Zhejiang University, PhD student in Cyberspace Security.
- *2022 - 2026*, Xidian University, B.Eng. in Network Engineering.

# 💻 Projects
{: #projects}

{% for item in site.data.profile_sections.projects %}
- {% if item.year and item.year != "" %}*{{ item.year }}*: &nbsp; {% endif %}{% if item.url and item.url != "" %}[{{ item.title }}]({{ item.url }}){% else %}{{ item.title }}{% endif %}{% if item.summary and item.summary != "" %}. {{ item.summary }}{% endif %}
{% endfor %}

# 📜 Patents
{: #patents}

{% include patents-list.html %}
