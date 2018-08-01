<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subjects</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>
<body>
<div class="row">	
		
	<div class="column1">
		<p></p>
	</div>	
	<div class="column2">
		<h2 id="center">Choose a subject to view availabilities:</h2>
		<p><i>${message}</i></p>
		
		<%--Users select subject they need help with --%>

		<form action="UsersServlet" method="post">
			<input type="hidden" name="action" value="chooseSubject">
	
			<table id="subjectsTable">
			<tr>
   				<td><input class="checkboxes left" type="radio" name="subject" value="High School Math 9-12" required>High School Math (9-12) </td>
   				<td><input class="checkboxes left" type="radio" name="subject" value="College Algebra" required>College Algebra </td>
  			</tr>
  			<tr>
  				<td><input class="checkboxes left" type="radio" name="subject" value="Calculus" required>Calculus </td>
  				<td><input class="checkboxes left" type="radio" name="subject" value="Statistics" required>Statistics </td>
  			</tr>
  			<tr>
  				<td>&nbsp;</td>
  				<td>&nbsp;</td>
  			</tr>
  			<tr>
  				<td>&nbsp;</td>
  				<td><input class="button left" type="submit" value="Submit"></td>
  			</tr>	
  			</table>
		</form>
	</div>
	
	<div class="column">
		<img id="help" class="center" src="images/needhelp.png" alt="need help?">		
	</div>	
	
</div>	

<%@include file="footer.jsp" %>
</body>
</html>