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

- 2015年4月26日（日）  
第１回村や祭り  
「森だよ！ピザだよ！音楽だよ！食べて遊んで村や尽くし」  
（トロンボーン　竹内優彦）  
（フルート　三浦千佳）  
（声楽　近藤喬之）
- 2015年2月1日（日）  
「森のミニコンサート」  
大人の遊び場「村や」  
（声楽　近藤喬之）  
（トロンボーン　竹内優彦）

- 2015年9月20日（日）みんなでラララVol.1 お椅子に座ってリトミックコンサート
- 2015年11月29日（日）みんなでラララVol.2 お椅子に座ってリトミックコンサート
- 2015年10月4日（日）小坪潮騒祭り
- 2015年10月31日（土）葉山木の下町内会クラシックコンサート
- 2015年11月22日（日）逗子ワンコインコンサート
- 2016年3月27日（日）第10回逗子市子どもフェスティバル出演【ママと一緒の小さな音楽会+M(ぷらすみゅーじっく)】
- 2016年4月24日(日)　[Mai Teramoto Piano Concert]({{ BASE_PATH }}/assets/images/solo-	2016-04-24.jpg)
- 2016年5月22日（日）[みんなでラララ♪Vol.3 お椅子に座ってリトミックコンサート]({{ BASE_PATH }}/assets/images/rarara-2016-05-22.jpg)

<script src="{{ BASE_PATH }}/assets/js/jquery.matchHeight-min.js"></script>
<script type="text/javascript">
	$(".jiyu-jin-flyers .thumbnail").matchHeight({});
	$(".rythmique-flyers .thumbnail").matchHeight({});
</script>