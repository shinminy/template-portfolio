<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Minee - Page Error</title>
</head>
<body>
	
	<div class="error_message">
		<c:out value='${ message }' />
	</div>
	
</body>
</html>
