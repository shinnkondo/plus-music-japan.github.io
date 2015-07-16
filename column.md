---
layout: page
title: "コラム"
description: ""
group: navigation
order: 2
---
{% include JB/setup %}
# クラシックコラム
+M（ぷらすみゅーじっく）ではクラシック音楽のあれこれや、おすすめ公演、演奏者との対談を公開していきます。{% for post in site.posts %}
  
<div class="row">
  <div class="col-xs-12">
    <a class="post-link" href="{{ post.url | prepend: BASE_PATH }}">{{ post.title }}</a>
    <div class="pull-right hidden-xs">
      <a class="btn btn-info pull-right" href="{{ post.url | prepend: BASE_PATH }}" role="button">読む»</a>
    </div>
  </div>
</div>
<blockquote>{{ post.description }}</blockquote>{% endfor %}