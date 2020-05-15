<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/resources/css/header/header.css" />
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
			<script type="text/javascript">
				$(function(){
					$(".m-gnb .gnbBtn a").click(function(){
						$(this).next("ul").toggleClass("active");
						$(".m-gnb .gnbUl").toggleClass("active");
						return false;
					});
				});
			</script>
			<ul class="gnbUl">
				<li><a lang="en" href="${contextPath}/about"> About </a></li>
				<li><a lang="en" href="${contextPath}/portfolio"> Portfolio</a></li>
				<li><a lang="en" href="${contextPath}/contact"> Contact </a></li>
			</ul>
		</div>
		<nav class="gnb">
			<ul>
				<li><a lang="en" href="${contextPath}/about"> About </a></li>
				<li><a lang="en" href="${contextPath}/portfolio"> Portfolio</a></li>
				<li><a lang="en" href="${contextPath}/contact"> Contact </a></li>
			</ul>
		</nav>
	</div>
</div>