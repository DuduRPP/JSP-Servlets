<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookies</title>
</head>
<body>
	<h3>Training Portal</h3>
	<%
		String favLang = "Java";
	
		Cookie[] theCookies = request.getCookies();
		
		if(theCookies != null){
			for(Cookie tempCookie : theCookies){
				if("myApp.favoriteLanguage".equals(tempCookie.getName())){
					favLang = tempCookie.getValue();
					break;
				}
			}
		}
	%>
	
	<h4>New Books for <%= favLang %></h4>
	<ul>
		<li>Kappa</li>
		<li>Kappa</li>
	</ul>
	<h4>Latest News Reports for <%= favLang %></h4>
	<ul>
		<li>Kappa</li>
		<li>Kappa</li>
	</ul>
	<h4>Hot jobs for <%= favLang %></h4>
	<ul>
		<li>Kappa</li>
		<li>Kappa</li>
	</ul>
	
	<a href="cookies-personalize-form.html">Change Favorite Language</a>
</body>
</html>