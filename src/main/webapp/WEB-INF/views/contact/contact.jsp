<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "/WEB-INF/views/contact/contactMap.jsp"%>
<% request.setCharacterEncoding("UTF-8"); %>
</head>
<body onload="initialize()">
<%@ include file="/WEB-INF/views/header/headerBox.jsp"%>
	<div class=contact_container>
		<div class ="map" id="map_canvas"></div>
		<div class = contact_txt>
			<div class= contact_info>
				<h3 class=contact_info_title>주소</h3>
				<p class=contact_info_content>서울 서초구 서초대로73길 38 2층</p>
				<h3 class=contact_info_title>Mail</h3>
				<p class=contact_info_content>ceres.minee@gmail.com</p>
				<h3 class=contact_info_title>SNS</h3>
				<button class="fb_btn" onclick="location.href=window.open('http://www.facebook.com/Minee-108917280800775/?moda=admin_todo_tour')"></button>
				
				<button class="is_btn" onclick="location.href=window.open('http://www.instagram.com/minee_ceres/')"></button>
			</div>
			<div class=contact_msg>
			<form class="mail_form" name="mailForm" method="post" accept-charset="utf-8">
			
				<h3 class=contact_info_title>이름</h3>
				<input type="text" name="user_name" placeholder="이름"/>
				<h3 class=contact_info_title>메일주소</h3>
				<input type="text" name="user_mail" placeholder="메일주소"/>
				<h3 class=contact_info_title>메세지</h3>
				<input class="msg" type="text" name="user_msg" placeholder="메세지"/>
				<input type="submit" onclick="send_mail()" value="전송">
			</form> 
			</div>
		</div>
	</div>
</body>
</html>