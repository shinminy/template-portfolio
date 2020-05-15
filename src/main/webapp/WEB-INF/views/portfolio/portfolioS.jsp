<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MINEE - Portfolio - S</title>
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/portfolio/portfolioS.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script charset="utf-8" type="text/javascript" src="/resources/js/portfolio/portfolioS.js"></script>
</head>
<body>
	
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	
	<div class="templateS_container">
	
		<div class="templateS_bg_container">
			<img class="templateS_bg_img" alt="Background image"
				src="/resources/img/portfolio/portfolioS/WILL-background.png">
		</div>
		
		<div class="templateS_mobile_slide">
			
			<img class="templateS_android_frame"
				src="/resources/img/portfolio/portfolioS/android_frame.png">
			
			<div class="templateS_mobile_slide_imgs">
				
				<img class="templateS_mobile_slide_img" alt="Main image"
					src="/resources/img/portfolio/portfolioS/WILL-main.png">
				
				<img class="templateS_mobile_slide_img" alt="Task management image"
					src="/resources/img/portfolio/portfolioS/WILL-task_management.png">
				
				<img class="templateS_mobile_slide_img" alt="Search image"
					src="/resources/img/portfolio/portfolioS/WILL-search.png">
				
				<img class="templateS_mobile_slide_img" alt="Popup image"
					src="/resources/img/portfolio/portfolioS/WILL-popup.png">
				
				<img class="templateS_mobile_slide_img" alt="Group management image"
					src="/resources/img/portfolio/portfolioS/WILL-group_management.png">
					
			</div>
			
		</div>
		
		<h1 class="templateS_title fade_in_up_with_scrolling">
			WILL
		</h1>
		
		<p class="templateS_info fade_in_up_with_scrolling">
			간편하고 깔끔한 할 일 관리(to do list), 습관(habit) 관리 앱
		</p>

		<div class="templateS_screenshots fade_in_up_with_scrolling">
		
			<img class="templateS_img_first_left templateS_mobile_img templateS_mobile_bg" alt="Search image"
				src="/resources/img/portfolio/portfolioS/WILL-search.png">
				
			<img class="templateS_img_first_right templateS_mobile_img templateS_mobile_bg" alt="Popup image"
				src="/resources/img/portfolio/portfolioS/WILL-popup.png">
				
			<img class="templateS_img_second_left templateS_mobile_img templateS_mobile_bg" alt="Task management image"
				src="/resources/img/portfolio/portfolioS/WILL-task_management.png">
				
			<img class="templateS_img_second_right templateS_mobile_img templateS_mobile_bg" alt="Group management image"
				src="/resources/img/portfolio/portfolioS/WILL-group_management.png">
				
		</div>
		
		<h2 class="templateS_sub_title fade_in_up_with_scrolling">
			주요 개발 기능
		</h2>
		
		<p class="templateS_info fade_in_up_with_scrolling">
			할일검색
		</p>
		<p class="templateS_info fade_in_up_with_scrolling">
			할일관리
		</p>
		<p class="templateS_info fade_in_up_with_scrolling">
			그룹관리
		</p>
		
		<div class="templateS_screenshots fade_in_up_with_scrolling">
			
			<img class="templateS_mobile_img templateS_screenshot" alt="Main image"
				src="/resources/img/portfolio/portfolioS/WILL-main.png">
			
			<img class="templateS_mobile_img templateS_screenshot" alt="Popup image"
				src="/resources/img/portfolio/portfolioS/WILL-popup.png">
			
			<img class="templateS_mobile_img templateS_screenshot" alt="Store image"
				src="/resources/img/portfolio/portfolioS/WILL-store.png">
			
		</div>
		
		<a class="store_link fade_in_up_with_scrolling"
			href="https://play.google.com/store/apps/details?id=com.willy.will&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1">
			<img class="google_play_badge" alt="Google Play badge"
				src="/resources/img/portfolio/portfolioS/google-play-badge.png">
		</a>

	</div>

</body>
</html>
