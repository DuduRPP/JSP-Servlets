<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String[] cities = {"Mumbai","Singapore","Philadelphia"};

	pageContext.setAttribute("myCities", cities);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<ul>
	<c:forEach var="tempCity" items="${myCities}">
		<li>${tempCity}</li>
	</c:forEach>

</ul>

</body>
</html>