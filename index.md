---
layout: home
name: music-scores-index
image: assets/images/banner-guitar-neck.jpg
---

![]({{page.image}})

A place to share these arrangements for guitar.

<p>
<h3>
<ul>
{% assign sorted_editions = site.editions | sort: 'sort_key' %}
{% for edition in sorted_editions %}
  <li>
    <a href="{{ site.baseurl }}{{ edition.url }}">
      {{ edition.title }}
    </a>
  </li>
{% endfor %}
</ul>
</h3>
</p>


Maybe I'll add some more pieces in the future!


<br>
<br>
<br>
<br>
<br>