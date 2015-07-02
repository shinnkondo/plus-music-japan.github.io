---
layout: page
title: "コラム"
description: ""
group: navigation
order: 2
---
{% include JB/setup %}

# クラシックコラム
+M（ぷらすみゅーじっく）ではクラシック音楽のあれこれや、おすすめ公演、演奏者との対談を公開していきます。

<ul class="post-list">
    {% for post in site.posts %}
      <li>
        <span class="post-meta">{{ post.date | date: "%m月号" | remove:'0' }}</span> 
          <a class="post-link" href="{{ BASE_PATH }}">{{ post.title }}</a>
   		<a class="btn btn-default pull-right" href="{{ BASE_PATH }}" role="button">読む»</a>
      <blockquote>
      {{ post.description }}
      </blockquote>
      </li>
    {% endfor %}
</ul>