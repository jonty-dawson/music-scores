## Edition summary
<table>
  <tbody>
    <tr>
      <td>Title </td><td>{{ page.work_title }}</td>
    </tr>
    <tr>
      <td>Composer </td><td>{{ page.composer }}</td>
    </tr>
    {% if page.work_number %}
      <tr>
        <td>Work number </td><td>{{ page.work_number }}</td>
      </tr>
    {% endif %}
    {% if page.instrument %}
      <tr>
        <td>Instrument </td><td>{{ page.instrument }}</td>
      </tr>
    {% endif %}
    {% if page.original_key %}
      <tr>
        <td>Original key </td><td>{{ page.original_key }}</td>
      </tr>
    {% endif %}
    {% if page.arranger %}
      <tr>
        <td>Arranger </td><td><b>{{ page.arranger }}</b></td>
      </tr>
    {% endif %}
    <tr>
      <td>Edition PDF </td><td><a href="{{ pdf_path | absolute_url }}" ><strong>{{ page.slug }}.pdf</strong></a></td>
    </tr>
  </tbody>
</table>
