<%@ page import="java.util.*" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To-Do List</title>
</head>
<body>
	<h1>To-Do List</h1>
	<form action="todo-demo.jsp">
		<p> Add new item: <input type="text" name="theItem" /> </p>
		<p><input type="submit" value="Submit" /></p>
	</form>
	
	<%
		List<String> items = (List<String>) session.getAttribute("myToDoList");
		if(items == null){
			items = new ArrayList<String>();
			session.setAttribute("myToDoList",items);
		}
		String theItem = request.getParameter("theItem");
		
		boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
    	boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
		
    	if(isItemNotEmpty && isItemNotDuplicate){
			items.add(theItem);
		}
	%>
	
	<h3>Current Entries:</h3>
	
	<ol>
	<%
		for(String temp:items){
			out.println("<li>" + temp + "</li>");
		}
	%>
	</ol>
	
	
</body>
</html>