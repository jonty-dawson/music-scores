---
layout: home
title: "Music Scores - PDF sheet music for classical guitar | Jonty Dawson"
name: music-scores-index
image:
  path: assets/images/banner-guitar-neck.jpg
  alt: Banner image of a classical guitar fretboard
  width: 1920
  height: 403
---

<h1>Sheet music for classical guitar</h1>
![{{ page.image.alt }}]({{page.image.path | relative_url}}){: width="{{page.image.width}}" height="{{page.image.height}}" alt="{{page.image.alt}}}

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
        <a href="{{ edition_pdf_path | absolute_url }}" data-goatcounter-click="{{edition_pdf_path}}" data-goatcounter-title="{{edition.name}}.pdf" data-goatcounter-referrer="edition-card-tagline">{{edition.tagline}}</a>
        <a href="{{ site.baseurl }}{{ edition.url }}">· {{edition.date | date: "%Y-%m-%d"}} · Edition notes</a>
      </span>
    </div>
    <br>
  </article>

{% endfor %}

</section>

<hr>
<h3>
Maybe I'll add some more pieces in the future!
</h3>


<br>
<br>
<br>
<br>
<br>