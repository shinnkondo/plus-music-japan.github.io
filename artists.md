---
layout: page
title: "所属アーティスト"
description: ""
---
{% include JB/setup %}
#アーティスト
+M（ぷらすみゅーじっく）所属の演奏者及び伴奏者です。

<div  class="container narrow table-responsive" >
  <table class="table">
    <tbody>{% for artist in site.data.artists %}
      <tr>{% for elem in artist %}
        <td> {{ elem | replace: '_', '<br>'}}</td>{% endfor%}
      </tr>{% endfor%}
    </tbody>
  </table>
</div>