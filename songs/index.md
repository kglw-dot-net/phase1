---
title: King Gizzard Songs and Lyrics
---

<ul>
  {% for album in site.data.discography.studio %}
    <li data-album="{{album.slug}}">
      <a href="/releases/{{album.slug}}">{{album.title}}</a>
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
