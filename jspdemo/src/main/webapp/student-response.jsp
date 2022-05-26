<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students</title>
</head>
<body>
	<h4>The student is confirmed:</h4>
	<p>${param.firstName} ${param.lastName}</p>
	<p>From: ${param.country}</p>
	<%
		String[] langs = request.getParameterValues("favoriteLanguage");
		if(langs!=null){
			out.println("<p>Favorite Languages:</p>");
			for(String tempLang : langs){
				out.println("<li>"+tempLang+"</li>");
			}
		} else{
			out.println("<p>No favorite programming language :(</p>");
		}
		
	%>
</body>
</html>