<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="/resources/css/common/reset.css" />
	<link rel="stylesheet" type="text/css" href="/resources/css/portfolio/portfolioJ.css" />
	
	<!-- bootStrap -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
	
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous"></script>
  
<!-- 	<script charset="utf-8" type="text/javascript" src="/resources/js/portfolio/portfolioJ.js"></script> -->
	<title>Minee - Portfolio - J</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/header/headerBox.jsp"%>

	<div class="body_container">
		<div class="templetJ_container">
			<input type="hidden" value="portfolio_j" id="currentPage">
			
			<div class=templetJ_overview>
			
				<p class= templetJ_name>Project</p>
	
				<div class = templetJ_title>
					<p class= templetJ_subdesc>온라인 향수시장의 <br>
											      성장을 위한<br>
											      미디어 인터랙션 프로모션</p>
					<h2 class= templetJ_subtitle>Forest</h2>
				</div>
				
				<p class=templetJ_desc>포레스트는 향수시장이 화장품 전체 시장에 비해 성장이 더딘 점<br>
									      개선하기 위해 제작한 인터랙티브 미디어 프로모션입니다.<br>
									      온라인에서는 향을 직접 맡을 수 없다는 점을 보완하기 위하여 게임, 스토리, 시각적 효과를<br> 
									      사용하였으며 주 사용층인 2,30대 여성이 쉽게 접할 수 있도록 SNS로 <br>
									      직접 업로드 하는 기능을 추가하였습니다.</p>			   
				
				<img class= "templetJ_img" src="/resources/img/portfolio/portfolioJ/forest0.png" alt="포트폴리오 썸네일">
			
			</div>
			
			<div class=templetJ_architecture>
				<p class= templetJ_name>Architecture</p>
				<div class = templetJ_archBox>
					<img class= "templetJ_archImg" src="/resources/img/portfolio/portfolioJ/forestach.png" alt="프로젝트 아키텍처">
				</div>
			</div>
			
			<div class=templetJ_vid>
				<iframe src="https://www.youtube.com/embed/78OYtsr1G5o" ></iframe>
			</div>
			
			<div class=templetJ_overview>
				<p class= templetJ_name>Related activity</p>
				<div class = templetJ_title>
					<p class= templetJ_subdesc>프로젝트 관련 논문<br>
											      저작권 등록</p>
					<h2 class= templetJ_subtitle>관련활동</h2>
				</div>
				
				<p class=templetJ_desc>한국 저작권 위원회 컴퓨터 프로그램 저작물>응용프로그램으로 등록<br>
									   (C-2018-039381)<br><br>
					- 신영인, 정소희, 이재은, 성지은, 고혜영(2018).<br>
					 온라인 향수 브랜드 강화 위한 인터랙티브 미디어 기반 프로모션 연구.<br>
					 한국 멀티미디어학회 춘계 학술발표대회 논문집 21권 1호<br><br>
					- 정소희, 신영인, 이재은, 성지은, 정해현, 고혜영(2018).<br>
					 키넥트를 활용한 인터랙티브 미디어 프로모션'포레스트'구현.<br>
					 한국 멀티미디어학회 춘계 학술발표대회 논문집 21권 2호
				</p>
			</div>
			
			<div id="imgslide" class="carousel slide" data-ride="carousel" data-interval="2000">
				<div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="/resources/img/portfolio/portfolioJ/forest1.png" alt="포레스트 메인" width="1100" height="683">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/portfolio/portfolioJ/forest2.png" alt="포레스트 스토리" width="1100" height="683">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/portfolio/portfolioJ/forest3.png" alt="포레스트 향선택" width="1100" height="683">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/portfolio/portfolioJ/forest4.png" alt="포레스트 구선택" width="1100" height="683">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/portfolio/portfolioJ/forest5.png" alt="포레스트 받기게임" width="1100" height="683">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/portfolio/portfolioJ/forest6.png" alt="포레스트 슬로건영상" width="1100" height="683">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/portfolio/portfolioJ/forest7.png" alt="포레스트 사진찍기" width="1100" height="683">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/portfolio/portfolioJ/forest8.png" alt="포레스트 프로모션" width="1100" height="683">
			    </div>
			    <div class="carousel-item">
			      <img src="/resources/img/portfolio/portfolioJ/forest9.png" alt="포레스트 엔딩" width="1100" height="683">
			    </div>
			  </div>
		</div>
	</div>
</div>
</body>
</html>