<%@page import="com.minee.portfolio.contact.MailSend"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/resources/css/common/reset.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/contact/contact.css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%=request.getContextPath() %>"/>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCt1dBoMQ4TbIL__e24JVMgpDPcjOXop0U"></script>
<script>
	function initialize() {
		var myLatlng = new google.maps.LatLng(37.500709, 127.024550);
		var mapOptions = {
			zoom : 16,
			center : myLatlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		}
		var map = new google.maps.Map(document.getElementById('map_canvas'),
				mapOptions);

		var marker = new google.maps.Marker({
			position : myLatlng,
			map : map,
			title : "Minee"
		});
	}
</script>
<script>
	function send_mail() {
		
		if (confirm("메세지를 보내시겠습니까?")) {
			
			var userName = document.getElementsByName("user_name")[0].value;
			var userMail = document.getElementsByName("user_mail")[0].value;
			var userMsg = document.getElementsByName("user_msg")[0].value;
			
			if ((userName != null) && (userMail != null) && (userMsg != null) 
					&& userName.length != 0 && userMail.length != 0 && userMsg != 0) {
				$.ajax({
					type : "post",
					url : "${contextPath}/contact/sendMail.do",
					data : {
						"name" : userName,
						"mail" : userMAil,
						"msg" : userMsg
					},
					dataType : "text",
					success : function(result) {
						if(result == "success") {
							alert("메세지를 보냈습니다.");
						}
						else {
							alert("메세지를 보내지 못했습니다.");
						}
					},
					error : function() {
						alert("데이터 전송 실패");
						return false;
					}
				});
			}
			else return false;
			
		}
		else return false;
		
	}
</script>
<title>Minee - Contact</title>