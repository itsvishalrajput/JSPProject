<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body>
<%-- <%
	String uname = request.getParameter("uname");
	String pwd = request.getParameter("pwd");
	if(uname.equals(pwd)){
%>
<h2> Welcome <%= uname %></h2>
<%
	}
	else{
%>
You are not allowed!
<%
	}
%> --%>
<form action="homeScreen.jsp" method="post">
	Username: <input type="text" name="uname"><br>
	Password: <input type="password" name="pwd"><br>
	<input type="submit" value="Login">
	<input type="submit" value="Register">
</form>
</body>
</html>