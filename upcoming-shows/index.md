---
title: Schedule of upcoming King Gizzard concerts
---

{%- assign date_format = site.minima.date_format | default: "%b %-d" -%}
<ul class="upcoming_shows">
{% assign reverse_upcoming_shows = site.categories['upcoming-shows'] | sort: 'date' %}
{% for upcoming in reverse_upcoming_shows %}
  <li data-date="{{ upcoming.date | split: ' ' | first }}" data-year="{{ upcoming.date | split: ' ' | first | split: '-' | first }}">
    <a href="{{ upcoming.url | relative_url }}">
      <span class="post-date">{{ upcoming.date | date: date_format }}</span>
      <span class="post-title">{{ upcoming.title | escape }}</span>
    </a>
    {%- if site.show_excerpts -%}
      {{ upcoming.excerpt }}
    {%- endif -%}
  </li>
{% endfor %}
</ul>
