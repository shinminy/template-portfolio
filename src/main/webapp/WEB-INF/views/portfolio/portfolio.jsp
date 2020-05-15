<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MINEE - Portfolio</title>
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/portfolio/portfolio.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script charset="utf-8" type="text/javascript" src="/resources/js/portfolio/portfolio.js"></script>
</head>
<body>
	
	<%@ include file="/WEB-INF/views/header/header.jsp"%>
	
	<div class="portfolio_container">
		
		<div class="portfolio_img_container">
			<div class="project_name">
				<h1>
					COLLA
				</h1>
			</div>
			<a href="portfolio/portfolio-a">
				<img class="portfolio_img" alt="Amy's portfolio"
					src="/resources/img/portfolio/portfolio-a.jpg" >
			</a>
		</div>
		
		<div class="portfolio_img_container">
			<div class="project_name">
				<h1>
					Forest
				</h1>
			</div>
			<a href="portfolio/portfolio-j">
				<img class="portfolio_img" alt="Jenny's portfolio"
					src="/resources/img/portfolio/portfolioJ/forest1.png">
			</a>
		</div>
		
		<div class="portfolio_img_container">
			<div class="project_name">
				<h1>
					WILL
				</h1>
			</div>
			<a href="portfolio/portfolio-s">
				<img class="portfolio_img" alt="Shin's portfolio"
					src="/resources/img/portfolio/portfolioS/WILL-background.png">
			</a>
		</div>
		
		<div class="comming_soon_img_container">
			<img class="comming_soon_img" alt="Minee Search"
				src="/resources/img/portfolio/Minee_Search-main.png">
			<div class="comming_soon">
				<h1>
					comming soon...
				</h1>
			</div>
		</div>
	
	</div>

</body>
</html>
