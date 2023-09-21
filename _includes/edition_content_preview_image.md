{% capture preview_path %}{{ site.edition_preview_dir }}/{{ page.name }}{{ site.edition_preview_suffix }}{% endcapture %}
{% capture preview_url %}{{ preview_path | relative_url }}{% endcapture %}
{% capture image_alt %}{{'Sheet music incipit image. ' | append: page.image.alt}}{% endcapture %}


<div class="summary-caption"><span data-nosnippet>Incipit</span></div>
![{{ image_alt }}]({{preview_url}}){: width="{{page.image.width}}" height="{{page.image.height}}" alt={{ image_alt  }}}

<hr>