---
title: King Gizzard Songs and Lyrics
---

{% assign tracks = '' | split: '' %}
{% for album in site.data.discography.studio %}
  {% unless album.slug %}
    {% assign album.slug = album.title | slugify %}
  {% endunless %}
  {% for track in album.tracks %}
    {% unless track.slug %}
      {% assign track.slug = track.title | slugify %}
    {% endunless %}
    {% assign track.album_data = album %}
    {% assign tracks = tracks | push: track %}
  {% endfor %}
{% endfor %}

{% assign sorted_tracks = tracks | sort: "title" %}

<ul class="songlist">
  {% for track in sorted_tracks %}
    <li><a href="/songs/{{track.slug}}" title="song info and lyrics for &quot;{{track.title}}&quot;">{{track.title}}</a></li>
  {% endfor %}
</ul>
