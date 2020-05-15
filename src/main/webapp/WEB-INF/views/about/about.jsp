<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MINEE - About</title>
<link rel="stylesheet" type="text/css" href="/resources/css/common/reset.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/about/about.css" />
</head>
<body>
	
	<%@ include file="/WEB-INF/views/header/headerBox.jsp"%>

	<div class="about_container">

		<div class="pic_on_left">

			<img class="member_img" alt="Profile picture"
				src="/resources/img/about/Amy.jpg">

			<div class="member_desc">
				<h1>Amy</h1>
				<p>멋진 Amy</p>
				<p><a href="mailto:davinchi0928@gmail.com">davinchi0928@gmail.com</a></p>
			</div>

		</div>

		<div class="pic_on_right">

			<img class="member_img" alt="Profile picture"
				src="/resources/img/about/Jenny.jpg">

			<div class="member_desc">
				<h1>Jenny</h1>
				<p>멋진 Jenny</p>
				<p><a href="mailto:je028770@gmail.com">je028770@gmail.com</a></p>
			</div>

		</div>

		<div class="pic_on_left">

			<img class="member_img" alt="Profile picture"
				src="/resources/img/about/Shin.jpg">

			<div class="member_desc">
				<h1>Shin</h1>
				<p>멋진 Shin</p>
				<p><a href="mailto:smy11go@gmail.com">smy11go@gmail.com</a></p>
			</div>

		</div>

		<div class="join_container">

			<div class="join_text">Join Us</div>

			<a href="contact">
				<img class="join_button" alt="Button"
					src="/resources/img/about/move_btn.png">
			</a>

		</div>

	</div>

</body>
</html>