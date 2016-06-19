<%@page import="com.sun.javafx.scene.control.SelectedCellsMap"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.rajput.Game" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Game</title>
</head>
<body>
<%! int questionNumber; %>
<% 	questionNumber++;
	String answer = request.getParameter("options");
	Game game = new Game();
	game.saveAnswers(answer);
	if(questionNumber<=10){
	String question = game.bringQuestion(questionNumber);
%>
<p> <%= question %>
<% } else {
	int result = game.bringResults();
%>
<p>	Your score is : <h3><%= result %></h3>
<form method="post" action="homeScreen.jsp">
	<input type="submit" value="Play Again">
</form>

<%
	}
%>
<form method="post" action="GameSetter.jsp">
	<input type="radio" name="options" value="A"><% %><br>
	<input type="radio" name="options" value="B"><% %><br>
	<input type="radio" name="options" value="C"><% %><br>
	<input type="radio" name="options" value="D"><% %><br>
	<input type="submit" value="Submit Answer">
</form>

</body>
</html>