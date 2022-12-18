---
title: KGLW News
---

{%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
{%- assign recent_blog = site.categories.blog | slice: 0, 10 -%}
<ul>
{% for post in recent_blog %}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
    — {{ post.date | date: date_format }}
  </li>
{% endfor %}
</ul>
