---
layout: page
title: "Activity"
description: ""
---
{% include JB/setup %}

# 過去の活動
コンサートのフライヤーや情報などを掲載しています。

## 自遊人処Cafeコンサート
<div class="row jiyu-jin-flyers">
	{% assign isfirst=true %}
	{% for flyer in site.data.concert.jiyu-jin %}
	{% if isfirst %}
		{% assign isfirst=false %}
	{% else %}
	<div class="col-xs-6 col-md-6">
		<div class="thumbnail">
			<img src="{{ BASE_PATH }}/assets/images/{{flyer}}" alt="...">
		</div>
	</div>
	{% endif %}
	{% endfor %}
</div>

## リトミック

<div class="row">

	{% assign isfirst=true %}
	{% for flyer in site.data.concert.rythmique %}
	{% if isfirst %}
		{% assign isfirst=false %}
	{% else %}
	<div class="col-xs-6 col-md-6 rythmique-flyers">
		<div class="thumbnail">
			<img src="{{ BASE_PATH }}/assets/images/{{flyer}}" alt="...">
		</div>
	</div>
	{% endif %}
	{% endfor %}
</div>

## その他

- 4月26日（日）  
第１回村や祭り  
「森だよ！ピザだよ！音楽だよ！食べて遊んで村や尽くし」  
（トロンボーン　竹内優彦）  
（フルート　三浦千佳）  
（声楽　近藤喬之）
- 2月1日（日）  
「森のミニコンサート」  
大人の遊び場「村や」  
（声楽　近藤喬之）  
（トロンボーン　竹内優彦）

<script src="{{ BASE_PATH }}/assets/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript">
	$(".jiyu-jin-flyers .thumbnail").matchHeight({});
	$(".rythmique-flyers .thumbnail").matchHeight({});
</script>