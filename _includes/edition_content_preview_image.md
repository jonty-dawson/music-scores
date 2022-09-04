{% capture preview_path %}{{ site.edition_preview_dir }}/{{ page.name }}{{ site.edition_preview_suffix }}{% endcapture %}
{% capture preview_url %}{{ preview_path | relative_url }}{% endcapture %}


<div class="summary-caption"><span data-nosnippet>Summary extract</span></div>
![{{ page.image.alt }}]({{preview_url}}){: width="{{page.image.width}}" height="{{page.image.height}}"}

<hr>