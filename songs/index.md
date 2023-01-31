---
title: King Gizzard Songs and Lyrics
---

{% assign tracks = '' | split: '' %}
{% for album in site.data.discography.studio %}
  {% for track in album.tracks %}
    {% assign track.album_data = album %}
    {% assign tracks = tracks | push: track %}
  {% endfor %}
{% endfor %}

{% assign sorted_tracks = tracks | sort: "title" %}

<ul class="songlist">
  {% for track in sorted_tracks %}
    {% if track.slug %}
      {% assign slug = track.slug %}
    {% else %}
      {% assign slug = track.title | slugify %}
    {% endif %}
    <li><a href="/songs/{{slug}}" title="song info and lyrics for &quot;{{track.title}}&quot;">{{track.title}}</a> {{track.album_data.title}}</li>
  {% endfor %}
</ul>
