{% capture pdf_path %}{{ site.edition_download_dir }}/{{ page.name}}.pdf{% endcapture %}
{% capture preview_path %}{{ site.edition_preview_dir }}/{{ page.name }}{{ site.edition_preview_suffix }}{% endcapture %}



<table>
  <tbody>
    <tr>
      <td>Composer</td><td>{{ page.composer }}</td>
    </tr>
    <tr>
      <td>Title</td><td>{{ page.work_title }}</td>
    </tr>
    {% if page.work_number %}
      <tr>
        <td>Work number</td><td>{{ page.work_number }}</td>
      </tr>
    {% endif %}
    {% if page.instrument %}
      <tr>
        <td>Instrument</td><td>{{ page.instrument }}</td>
      </tr>
    {% endif %}
    {% if page.original_key %}
      <tr>
        <td>Original key</td><td>{{ page.original_key }}</td>
      </tr>
    {% endif %}
    <tr>
      <td>Edition pdf</td><td>[ <a href="{{ pdf_path | relative_url }}" target="_blank">view</a> ][ <a href="{{ pdf_path | relative_url }}" download>download</a> ]</td>
    </tr>
  </tbody>
</table>



[![Preview]({{ preview_path | relative_url }})][1]{:target="_blank"}


[1]:{{ pdf_path | relative_url }}