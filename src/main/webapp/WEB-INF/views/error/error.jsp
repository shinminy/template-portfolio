<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Minee - Page Error</title>
<link rel="stylesheet" type="text/css" href="/resources/css/common/reset.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/error/error.css" />
</head>
<body>

	<div class="error_container">
	
		<div class="error_message">
			<c:out value='${ message }' />
		</div>
		
		
		<div class="back_to_home_container">
			
			<div class="back_to_home_text">Back to Home</div>
			
			<a href="/">
				<img class="home_button" alt="Button"
					src="/resources/img/about/move_btn.png">
			</a>
			
		</div>
	
	</div>
	
</body>
</html>
