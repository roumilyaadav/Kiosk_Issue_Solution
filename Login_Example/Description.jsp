<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<script type="text/javascript" src="jquery-1.2.6.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Description</title>
</head>
<body>
<% String name = (String)session.getAttribute("name"); 
	if(name != null){ %>
	Welcome,
	<%=name %>
	to Description Page... Here, we will talk about your interests,
	hobbies, passions, and lot more in detail...

	<a href="UserProfile.jsp">Go to Profile</a>

	<% }
	else
	  response.sendRedirect("login.html");
   %>

</body>
</html>