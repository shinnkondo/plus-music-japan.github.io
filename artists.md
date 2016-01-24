---
layout: page
title: "所属アーティスト"
description: ""
---
{% include JB/setup %}
#アーティスト
+M（ぷらすみゅーじっく）所属の演奏者及び伴奏者です。

<div class="container narrow table-responsive" >
  <table class="table two-lines-table">
    <tbody>{% for artist in site.data.artists %}
      <tr>
        <td> {{ artist.part | replace: '_', '<br>'}}</td>
        {% if artist.url %}
        <td><a href="{{ artist.url}}"> {{ artist.name }}</a></td>
        {% else %}
        <td> {{ artist.name }}</td>        
        {% endif %}
        <td> {{ artist.school | replace: '_', '<br>'}}</td>
      </tr>{% endfor %}
    </tbody>
  </table>
</div>