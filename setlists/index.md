---
title: King Gizzard concert setlists
---

{%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
<ul>
{% for setlist in site.categories.setlists %}
  <li data-date="{{ setlist.date | split: ' ' | first }}" data-year="{{ setlist.date | split: ' ' | first | split: '-' | first }}">
    <a href="{{ setlist.url | relative_url }}">
      {{ setlist.date | date: date_format }}
      @ {{ setlist.venue | escape }}
    </a>
  </li>
{% endfor %}
</ul>
