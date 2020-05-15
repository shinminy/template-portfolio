<%@page import="com.minee.portfolio.contact.MailSend"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("user_name");
	String mail = request.getParameter("user_mail");
	String msg = request.getParameter("user_msg");
	%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/contact.css" />
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCt1dBoMQ4TbIL__e24JVMgpDPcjOXop0U"></script>
	 <script>
	  function initialize() {
	   var myLatlng = new google.maps.LatLng(37.500709,127.024550);
	   var mapOptions = {
	        zoom: 16,
	        center: myLatlng,
	        mapTypeId: google.maps.MapTypeId.ROADMAP
	   }
	   var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
	   
	   var marker = new google.maps.Marker({
		   position : myLatlng,
		   map: map,
		   title: "Minee"
	   });
	  }
	 </script>
	 <script>function send_mail(){
		 <% 
		 if(name!=null && mail != null && msg != null && !(name.equals("")) 
		 	&& !(mail.equals("")) && !(msg.equals(""))){
		 MailSend ms = new MailSend(name,mail,msg);
		 System.out.println("COMPLET SEND");
		 }
		 else{
			 System.out.println("Mail service is not working");
		 }
		 %>
	 </script>
	<title>Minee - Contact</title>