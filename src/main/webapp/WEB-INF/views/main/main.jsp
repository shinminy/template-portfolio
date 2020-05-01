<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="resources/css/main.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script type="text/javascript">
$(function() {
	$(".box").each(function() {
		$(this).on("mousewheel DOMMouseScroll", function(e) {
			e.preventDefault();
			var delta = 0;
			if(!event) {
				event = window.event;
			}
			if(event.wheelDelta) {
				delta = event.wheelDelta / 120;
			} else if(event.detail) {
				delta = -event.detail/3;
			} 
			var moveTop = null;
			if(delta < 0) { //위에서 아래로
				if($(this).next() != undefined) {
					moveTop = $(this).next().offset().top;
				}
			} else { //아래서 위로
				if($(this).index() > 0) {
					if($(this).prev() != undefined) {
						moveTop = $(this).prev().offset().top;
					}
				}
			}
			$("html, body").stop().animate(
				{scrollTop: moveTop + 'px'},
				{duration: 800, complete: function () {}
			});
		})
	})
});// end onload
</script>

</head>
<body>
	<div class="main_container">
		<div class="section1 box">
			<p><span class="section1_title">Minee</span><br><span class="section1_desc">다양한 사람과 정보 및 기술을 교환 합니다.</span></p>
		</div>
		<div class="section1 box">
			<p><span class="section1_title">Minee</span><br><span class="section1_desc">다양한 사람과 정보 및 기술을 교환 합니다.</span></p>
		</div>
		<div class="section1 box">
			<p><span class="section1_title">Minee</span><br><span class="section1_desc">다양한 사람과 정보 및 기술을 교환 합니다.</span></p>
		</div>
		<div class="section1 box">
			<p><span class="section1_title">Minee</span><br><span class="section1_desc">다양한 사람과 정보 및 기술을 교환 합니다.</span></p>
		</div>
		<div class="section1 box">
			<p><span class="section1_title">Minee</span><br><span class="section1_desc">다양한 사람과 정보 및 기술을 교환 합니다.</span></p>
		</div>
	
		<div class="section2 box">
			<p class="section2_desc">Minee는 채굴되는 사람 혹은 장소라는 의미로, 다양한 사람과 정보 및 기술을 교류하는 커뮤니티를 지향합니다.<br>
			우리는 단기 프로젝트들을 진행하며 SW 개발 모임을 가지고 있으며, 안드로이드 앱 개발 프로젝트를 수행하여 베타 버전을 배포했습니다.<br>
			그리고 현재는 오픈소스를 이용한 검색엔진 스터디를 진행하고 있습니다.</p>
		</div>
	</div>
</body>
</html>