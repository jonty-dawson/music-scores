---
layout: home
name: bach-js-bwv998-prelude-fugue-allegro-guitar
---

![](assets/images/banner-guitar-neck.jpg)

A place to share this guitar sheet music - maybe I'll add some more pieces the future!

<p>
<h3>
<li>
{% for edition in site.editions %}

    <a href="{{ site.baseurl }}{{ edition.url }}">
      {{ edition.title }}
    </a>

{% endfor %}
</li>
</h3>
</p>

<br>
<br>
<br>
<br>
<br>