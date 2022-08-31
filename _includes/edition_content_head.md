{% capture pdf_path %}{{ site.edition_download_dir }}/{{ page.name}}.pdf{% endcapture %}
{% capture preview_path %}{{ site.edition_preview_dir }}/{{ page.name }}{{ site.edition_preview_suffix }}{% endcapture %}
{% capture preview_url %}{{ preview_path | relative_url }}{% endcapture %}

##### *{{ page.subheading }}*

{: .highlight}
#### Sheet music [PDF free to download]({{ pdf_path | relative_url }}){:target="_blank"}.

[![{{ page.image.alt }}]({{preview_url}}){: width="{{page.image.width}}" height="{{page.image.height}}"}]({{preview_url}})

{:style="text-align: right;" .post-meta }
*Summary extract*

---