---
layout: home
title: Music Scores · classical guitar PDF sheet music
name: music-scores-index
description: >-
  Sheet music PDF editions for classical guitar.
    Download free PDF arrangments and transcriptions of guitar repertoire with notes and analysis.
image:
  path: assets/edition-cards/default-1200x628.card.jpg
  alt: Classical guitar sheet music from Jonty Dawson. Free PDF editions.
  width: 1200
  height: 628
banner_image:
  path: assets/images/banner-guitar-neck.jpg
  alt: Banner image of a classical guitar fretboard.
  width: 1920
  height: 403
last_modified_at: 2024-02-08 16:11:00
---

<h1>Sheet music for classical guitar</h1>
![{{ page.image.alt }}]({{page.image.path | relative_url}}){: width="{{page.image.width}}" height="{{page.image.height}}" alt="{{page.image.alt}}}

A place for me to share these music scores for guitar. Free PDF sheet music to download, with a short article about each edition. There are Bach transcriptions, and some arrangements of pieces by other composers that could make interesting additions to a guitar repertoire list.

<br>
<section id="editions">

{% assign recent_edition_date_utc = site.recent_edition_date | date: "%s" %}

{% assign sorted_editions = site.editions | sort: 'date' | reverse %}
{% for edition in sorted_editions %}
  <article id="{{ edition.slug }}">
    <div class="edition-card-content">
      <h2 class="edition-entry-title">
        <a href="{{ site.baseurl }}{{ edition.url }}">
          {{ edition.title | markdownify }}
        </a>
      </h2>
      <div class="edition-entry-subheading">
          {{ edition.subheading }}
      </div>


      {% assign read_duration = edition.content | number_of_words  | divided_by: 180 | at_least: 1 %}
      <div class="edition-card-img" >
        <a href="{{ site.baseurl }}{{ edition.url }}" >
          <img src="{{ edition.image.path | relative_url }}" alt="{{ edition.image.alt }}" >
        </a>
      </div>
      {% assign edition_date_utc = edition.date | date: "%s" %}
      <span class="edition-tagline">
        {% if edition_date_utc >= recent_edition_date_utc %}
          {{site.recent_edition_tagline}}
        {% endif %}
        Added {{edition.date | date: "%Y-%m-%d"}}
      </span>
    </div>
    <br>
  </article>

{% endfor %}

</section>

<hr>


## About {#about}
![{{ page.banner_image.alt }}]({{page.banner_image.path | relative_url}}){: width="{{page.banner_image.width}}" height="{{page.banner_image.height}}" alt="{{page.banner_image.alt}}}

Greetings from Scotland!

I play guitar as a hobby, and occasionally make my own editions of music that I'm interested in learning to play. Mostly these are transcriptions where manuscript facsimiles or other sources exist in the public domain. I've made the sheet music available as pdf files on this site, along with some brief thoughts and explanations about each edition.

I use LilyPond for typesetting the music - it creates good-looking output, and can deal with guitar notation such as fingering and barré markings. LilyPond uses text-based input, which makes version control simple - you can find the source files for the editions in my [music-scores GitHub repository](https://github.com/jonty-dawson/music-scores){:data-goatcounter-click="about-src-github"}.

There are new additions occasionally, so check back to see what's new.

I hope you enjoy the music - happy guitar playing!

Jonty Dawson
<br>

<hr>
Website and sheet music

{{site.copyright}}.
