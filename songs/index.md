---
title: King Gizzard Songs and Lyrics
---

<ul>
  {% for album in site.data.discography.studio %}
    {% if album.slug %}
      {% assign slug = album.slug %}
    {% else %}
      {% assign slug = album.title | slugify %}
    {% endif %}
    <li data-album="{{slug}}">
      <a href="/releases/{{slug}}">{{album.title}}</a>
      <ol>
        {% for track in album.tracks %}
          {% if track.slug %}
            <li><a href="/songs/{{track.slug}}">{{track.title}}</a></li>
          {% else %}
            {% assign slug = track.title | slugify %}
            <li><a href="/songs/{{slug}}">{{track.title}}</a></li>
          {% endif %}
        {% endfor %}
      </ol>
    </li>
  {% endfor %}
</ul>
