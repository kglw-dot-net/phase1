---
title: Schedule of upcoming King Gizzard concerts
---

{%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
<ul>
{% assign reverse_upcoming_shows = site.categories['upcoming-shows'] | sort: 'date' | reverse %}
{% for upcoming in reverse_upcoming_shows %}
  <li data-date="{{ upcoming.date | split: ' ' | first }}" data-year="{{ upcoming.date | split: ' ' | first | split: '-' | first }}">
    <a href="{{ upcoming.url | relative_url }}">
      {{ upcoming.date | date: date_format }}
      —
      {{ upcoming.title | escape }}
    </a>
  </li>
{% endfor %}
</ul>
