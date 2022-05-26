<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tags</title>
</head>
<body>
	<c:set var="stuff" value="<%= new java.util.Date() %>"></c:set>
	
	Time on the server is ${stuff}
</body>
</html>