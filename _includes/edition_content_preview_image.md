{% capture preview_path %}{{ site.edition_preview_dir }}/{{ page.name }}{{ site.edition_preview_suffix }}{% endcapture %}
{% capture preview_url %}{{ preview_path | relative_url }}{% endcapture %}
{% capture preview_alt %}{{'Sheet music PDF. ' | append: page.image.alt}}{% endcapture %}
{% capture pdf_path %}{{ site.edition_download_dir }}/{{ page.name}}.pdf{% endcapture %}

<div class="summary-caption"><span data-nosnippet>{{page.preview_caption}}</span></div>
<a href="{{pdf_path | absolute_url}}" target="_blank" data-goatcounter-click="{{pdf_path}}" data-goatcounter-title="{{page.name}}.pdf" data-goatcounter-referrer="edition-preview">
![{{ preview_alt }}]({{preview_url}}){: width="{{page.preview_image.width}}" height="{{page.preview_image.height}}" alt={{ preview_alt  }}}
</a>

<hr>