<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="jquery.min.js"></script>
    <script type="text/javascript" src="ajax_kill_session.js"></script>
    
<!--     <script type="text/javascript" src="js_to_kill_session.js"></script> -->
<meta http-equiv="Content-Type" content="text/html;">
<title>User Profile</title>
</head>

<!-- <body window.onbeforeunload="doUnload()" onmousedown="somefunction()"> -->
<body onbeforeunload="bodyUnload();" onmousedown="somefunction()">
<%
Cookie ck[]=request.getCookies();  
        if(ck!=null){  
         String name=ck[0].getValue();  
        if(!name.equals("")||name!=null){   %>
	 
	 Welcome, <%=name %> to your profile

	<a href="Description.jsp">Go to Description</a>
		
	<% }}
	else
	  response.sendRedirect("login.html");
   %>

</body>
</html>