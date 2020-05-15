<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/main.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/plugins/onepage-scroll.css" />
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="/resources/js/plugins/jquery.onepage-scroll.min.js"></script>
<script type="text/javascript">
$(function() {
	callbackTime = 1000;
	$(".main_container").onepage_scroll({
		sectionContainer: ".section",
		easing: "ease",
		animationTime: 700,
		pagination: true,
		loop: false,
		keyboard: true,
		direction: "vertical",
		beforeMove: function(index) {},
		afterMove:  function(index) {
			if(index == 2){
				$('.fade_in_up_with_scrolling1').animate({'opacity':'1','top':'0'}, 800, function(){
					$('.fade_in_up_with_scrolling2').animate({'opacity':'1','top':'0'}, 800, function(){
						$('.fade_in_up_with_scrolling3').animate({'opacity':'1','top':'0'}, 800);
					});
				});
			}
		},
	});
});
</script>

</head>
<body>
	<div class="main_container">
		<div class="section">
			<p><span class="title">Minee</span><br><span class="desc">다양한 사람과 정보 및 기술을 교환 합니다.</span></p>
		</div>
	
		<div class="section">
			<p>
				<span class="fade_in_up_with_scrolling1 desc">마이니(Minee) 는</span><br>
				<span class="fade_in_up_with_scrolling2 desc">채굴되는 사람 혹은 장소라는 의미로,</span><br>
				<span class="fade_in_up_with_scrolling3 desc">다양한 사람과 정보 및 기술 교류를 지향합니다.</span>
			</p>
		</div>
		
	</div>
</body>
</html>