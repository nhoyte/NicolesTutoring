<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tutor Login</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>

<body>
<div class="row">	
		
	<div class="column">
		<p></p>
	</div>	
	<div class="column">

		<h2 id="center">Welcome Tutors!</h2>
		<p id="center"><i>${message}</i></p>
	
		<%--Tutor login (acts as admin); tutors log in to view their schedules --%>
		<form action="TutorsServlet" method="post">
			<input type="hidden" name="action" value="tutorLogin">
		
			<table id="alignTable">
				<tr>
					<td><label>Email:</label></td>
					<td><input class="left" type="email" name="tutorEmail" <c:out value="${requestScope.tutorEmail}" /> autofocus></td>
				</tr>
				<tr>
					<td><label>Password:</label></td>
					<td><input class="left" type="password" name="tutorPass" <c:out value="${requestScope.tutorPass}" /> ><br><br></td>
				</tr>
				<tr>
					<td>&emsp;</td>
					<td><input class="button left" type="submit" name="login" value="submit"></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="column">
		<img id="help" class="center" src="images/tutor.jpg" alt="need help?">
	</div>
</div>
<%@include file="footer.jsp" %>
</body>
</html>