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
<script src="{{ BASE_PATH }}/assets/js/jquery.magnific-popup.min.js"></script>
<script>
$(document).ready(function() {
  $('.popup-gallery').magnificPopup({
    delegate: 'a',
    type: 'image',
    tLoading: 'Loading image #%curr%...',
    mainClass: 'mfp-img-mobile',
    gallery: {
      enabled: true,
      navigateByImgClick: true,
      preload: [0,1] // Will preload 0 - before current, and 1 after the current image
    },
    image: {
      tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
    }
  });
});
</script>