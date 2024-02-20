{% capture preview_path %}{{ site.edition_preview_dir }}/{{ page.name }}{{ site.edition_preview_suffix }}{% endcapture %}
{% capture preview_url %}{{ preview_path | relative_url }}{% endcapture %}
{% capture preview_alt %}{{'Sheet music PDF. ' | append: page.image.alt}}{% endcapture %}
{% capture pdf_path %}{{ site.edition_download_dir }}/{{ page.name}}.pdf{% endcapture %}

{% if page.preview_caption != "" %}
{% assign preview_caption = {{page.page_count}} | append: " pages. " | append: page.preview_caption %}
{% else %}
{% assign preview_caption = "Page 1 of " | append: page.page_count %}
{% endif %}
<div class="summary-caption"><span data-nosnippet>{{preview_caption}}</span></div>
<a href="{{pdf_path | absolute_url}}" target="_blank" data-goatcounter-click="{{pdf_path}}" data-goatcounter-title="{{page.name}}.pdf" data-goatcounter-referrer="edition-preview">
![{{ preview_alt }}]({{preview_url}}){: width="{{page.preview_image.width}}" height="{{page.preview_image.height}}" alt={{ preview_alt  }}}
</a>

<hr>