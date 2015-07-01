---
layout: page
title: "Column"
description: ""
group: navigation
---
{% include JB/setup %}

+M（ぷらすみゅーじっく）ではクラシック音楽のあれこれや、おすすめ公演、演奏者との対談を公開していきます。

<ul class="post-list">
    {% for post in site.posts %}
      <li>
        <span class="post-meta">{{ post.date | date: "%m月号" | remove:'0' }}</span> 
          <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
   		<a class="btn btn-default pull-right" href="{{ post.url | prepend: site.baseurl }}" role="button">読む»</a>
      <blockquote>
      {{ post.description }}
      </blockquote>
      </li>
    {% endfor %}
</ul>