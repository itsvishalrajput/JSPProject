<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="com.rajput.setConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Screen</title>
</head>
<body>
<% String uname = request.getParameter("uname");
	String pwd = request.getParameter("pwd");
	setConnection conn = new setConnection();
	if(conn.Validation(uname, pwd)){
%>
	<h2>Welcome <%=uname %></h2>
	<form method="get" action="GameSetter.jsp">
	<input type="submit" value="Start Game">
	</form>
	
	
	
	
<% } 
	else { %>
	<h2>Invalid Username or Password!</h2>
<% }
%>

</body>
</html>