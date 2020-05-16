<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/resources/css/header/header.css" />
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="/resources/js/header/header.js"></script>
<div class="header_container">
	<div class="header_content_container">
		<h1 class="logo">
			<a href="${contextPath}/">
				<img alt = "마이니 로고 입니다" src="/resources/img/header/mainLogo.png">
			</a>
		</h1>
		<div class="m-gnb"> <!-- 800px 이하에서 보여지는 메뉴 버튼 -->
			<div class="gnbBtn">
				<a href="#"></a>
				<ul>
					<li></li>
					<li></li>
					<li></li>
				</ul>
			</div>
			<ul class="gnbUl menu">
				<li><a lang="en" href="${contextPath}/about"> About </a></li>
				<li class="portfolio_menu">
					<a lang="en" href="${contextPath}/portfolio"> Portfolio <i class="fas fa-chevron-down"></i></a>
					<ul class="portfolio_sub_menu">
						<li><a lang="en" href="${contextPath}/portfolio/portfolio-a"> Portfolio-A </a></li>
						<li><a lang="en" href="${contextPath}/portfolio/portfolio-s"> Portfolio-S </a></li>
						<li><a lang="en" href="${contextPath}/portfolio/portfolio-j"> Portfolio-J </a></li>
					</ul>
				</li>
				<li><a lang="en" href="${contextPath}/contact"> Contact </a></li>
			</ul>
		</div>
		<nav class="gnb">
			<ul class="menu">
				<li><a lang="en" href="${contextPath}/about"> About </a></li>
				<li class="portfolio_menu">
					<a lang="en" href="${contextPath}/portfolio"> Portfolio <i class="fas fa-chevron-down"></i> </a>
					<ul class="portfolio_sub_menu">
						<li><a lang="en" href="${contextPath}/portfolio/portfolio-a"> Portfolio-A </a></li>
						<li><a lang="en" href="${contextPath}/portfolio/portfolio-s"> Portfolio-S </a></li>
						<li><a lang="en" href="${contextPath}/portfolio/portfolio-j"> Portfolio-J </a></li>
					</ul>
					
				</li>
				<li><a lang="en" href="${contextPath}/contact"> Contact </a></li>
			</ul>
		</nav>
	</div>
</div>