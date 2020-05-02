<%@page import="com.minee.portfolio.contact.MailSend"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="/resources/css/contact.css" />
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC-L4_VOT050fUwW54SAjLRVV-LURYm0Ok"></script>
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
		 <% MailSend ms = new MailSend();
		 out.println("COMPLETE");
		 %>
	 }</script>
	<title>Minee - Contact</title>