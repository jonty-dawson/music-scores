---
layout: home
title: Jonty Dawson
name: music-scores-index
image:
  path: assets/images/banner-guitar-neck.jpg
  alt: Closeup banner of a classical guitar neck
  width: 1920
  height: 403
---

![{{ page.image.alt }}]({{page.image.path | relative_url}}){: width="{{page.image.width}}" height="{{page.image.height}}"}


<h3>A place to share these arrangements for guitar.</h3>
<br>
<section>

{% assign sorted_editions = site.editions | sort: 'sort_key' %}
{% for edition in sorted_editions %}
  <article id="{{ edition.slug }}">
    <div class="edition-card-content">
      <h2 class="edition-entry-title">
        <a href="{{ site.baseurl }}{{ edition.url }}">
          {{ edition.title }}
        </a>
      </h2>
      <div class="edition-entry-subheading">
          {{ edition.subheading }}
      </div>
      {% capture edition_pdf_path %}{{ site.edition_download_dir }}/{{ edition.name}}.pdf{% endcapture %}
      {% assign read_duration = edition.content | number_of_words  | divided_by: 180 | at_least: 1 %}
      <span class="edition-tagline">
        <a href="{{ edition_pdf_path | absolute_url }}">{{edition.tagline}}</a>
        <a href="{{ site.baseurl }}{{ edition.url }}">· {{edition.date | date: "%Y-%m-%d"}} · Edition notes</a>
      </span>
    </div>
    <br>
  </article>

{% endfor %}

</section>

<hr>

Maybe I'll add some more pieces in the future!


<br>
<br>
<br>
<br>
<br>