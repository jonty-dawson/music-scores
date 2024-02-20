## Edition summary
<table>
  <tbody>
    <tr>
      <td>Title </td><td itemprop="title">{{ page.work_title }}</td>
    </tr>
    <tr>
      <td>Composer </td><td itemprop="composer">{{ page.composer }}</td>
    </tr>
    {% if page.work_number %}
      <tr>
        <td>Work number </td><td itemprop="work-number">{{ page.work_number }}</td>
      </tr>
    {% endif %}
    {% if page.instrument %}
      <tr>
        <td>Instrument </td><td itemprop="instrument">{{ page.instrument }}</td>
      </tr>
    {% endif %}
    {% if page.original_key %}
      <tr>
        <td>Original key </td><td itemprop="original-key">{{ page.original_key }}</td>
      </tr>
    {% endif %}
    {% if page.editor and page.editor != '' %}
      <tr>
        <td>Editor </td><td itemprop="editor">{{ page.editor }}</td>
      </tr>
    {% elsif page.arranger and page.arranger != '' %}
      <tr>
        <td>Arranger </td><td itemprop="arranger">{{ page.arranger }}</td>
      </tr>
    {% endif %}
    <tr>
      <td>Edition date </td><td itemprop="edition-date">{{ page.date | date: "%Y-%m-%d" }}</td>
    </tr>
    {% if page.page_count %}
      <tr>
        <td>Page count </td><td itemprop="page-count">{{ page.page_count }}</td>
      </tr>
    {% endif %}
    <tr>
      <td>Edition PDF </td><td itemprop="edition-pdf"><a href="{{ pdf_path | absolute_url }}"
        data-goatcounter-click="{{pdf_path}}"
        data-goatcounter-title="{{page.name}}.pdf"
        data-goatcounter-referrer="edition-summary"><strong>{{ page.slug }}.pdf</strong></a></td>
    </tr>
  </tbody>
</table>
