---
layout: default
title: "Gallery"
description: ""
---
{% include JB/setup %}

<div class="container">
<div class="popup-gallery">
{% for pair in site.data.gallery %}
  <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
  <a class="thumbnail" href="{{BASE_PATH}}/{{pair.image}}"><img src="{{BASE_PATH}}/{{pair.thumbnail}}" alt="写真" height="200" width="200"></a>
  </div>
{% endfor %}
</div>
</div>