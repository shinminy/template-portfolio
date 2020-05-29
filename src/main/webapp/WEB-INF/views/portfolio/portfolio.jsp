<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MINEE - Portfolio</title>
<link rel="stylesheet" type="text/css" href="/resources/css/common/reset.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/portfolio/portfolio.css" />
</head>
<body>
	
	<%@ include file="/WEB-INF/views/header/headerBox.jsp"%>
	<div class="body_container">
		<div class="portfolio_container">
			<input type="hidden" value="portfolio_main" id="currentPage">
			
			<div class="portfolio_img_container">
				<a href="portfolio/portfolio-a">
					<img class="portfolio_img" alt="Amy's portfolio"
						src="/resources/img/portfolio/portfolio-a.png" >
				</a>
				<a class="project_name" href="portfolio/portfolio-a">
					COLLA
				</a>
			</div>
			
			<div class="portfolio_img_container">
				<a href="portfolio/portfolio-j">
					<img class="portfolio_img" alt="Jenny's portfolio"
						src="/resources/img/portfolio/portfolio-j.png">
				</a>
				<a class="project_name" href="portfolio/portfolio-j">
					Forest
				</a>
			</div>
			
			<div class="portfolio_img_container">
				<a href="portfolio/portfolio-s">
					<img class="portfolio_img" alt="Shin's portfolio"
						src="/resources/img/portfolio/portfolio-s.png">
				</a>
				<a class="project_name" href="portfolio/portfolio-s">
					WILL
				</a>
			</div>
			
			<div class="comming_soon_img_container">
				<img class="comming_soon_img" alt="Minee Search"
					src="/resources/img/portfolio/Minee_Search-main.png">
				<div class="comming_soon">
					comming soon...
				</div>
			</div>
		
		</div>

	</div>

</body>
</html>
