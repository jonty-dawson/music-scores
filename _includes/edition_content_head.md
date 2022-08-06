{% capture pdf_path %}{{ site.edition_download_dir }}/{{ page.name}}.pdf{% endcapture %}
{% capture preview_path %}{{ site.edition_preview_dir }}/{{ page.name }}{{ site.edition_preview_suffix }}{% endcapture %}

{{ page.subheading }}

Sheet music PDF free to [download][1]{:download=""}.

[![Preview]({{ preview_path | relative_url }})][1]


<br>


<table>
  <tbody>
    <tr>
      <td>Composer</td><td><b>{{ page.composer }}</b></td>
    </tr>
    <tr>
      <td>Title</td><td><b>{{ page.work_title }}</b></td>
    </tr>
    {% if page.work_number %}
      <tr>
        <td>Work number</td><td><b>{{ page.work_number }}</b></td>
      </tr>
    {% endif %}
    {% if page.instrument %}
      <tr>
        <td>Instrument</td><td><b>{{ page.instrument }}</b></td>
      </tr>
    {% endif %}
    {% if page.original_key %}
      <tr>
        <td>Original key</td><td><b>{{ page.original_key }}</b></td>
      </tr>
    {% endif %}
    <tr>
      <td>Edition PDF</td><td>[ <a href="{{ pdf_path | relative_url }}" target="_blank"><b>view</b></a> ][ <a href="{{ pdf_path | relative_url }}" download><b>download</b></a> ]</td>
    </tr>
  </tbody>
</table>

___
<br>



[1]:{{ pdf_path | relative_url }}