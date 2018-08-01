<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>

<body>
	<h2 id="center">Login here!</h2>
	<p id="center"><i>${message}</i></p>
	
	<form action="UsersServlet" method="post">
		<input type="hidden" name="action" value="userLogin">
		
		<%--Users that have already signed up log in here --%>
		<table id="alignTable">
			<tr>
				<td><label>Email:</label></td>
				<td><input class="left" type="email" name="email" <c:out value="${requestScope.email}" />  required  autofocus></td>
			</tr>
			<tr>
				<td><label>Password:</label></td>
				<td><input class="left" type="password" name="pass" <c:out value="${requestScope.pass}" /> required><br><br></td>
			</tr>
			<tr>
				<td>&emsp;</td>
				<td><input class="button left" type="submit" name="login" value="submit"></td>
			</tr>
		</table>
	</form>
	
		<table id="alignTable">
			<tr>
  				<td>&nbsp;</td>
  				<td>&nbsp;</td>
  			</tr>
			<tr>
			<%--Go to Register.jsp to sign up --%>
				<td>&emsp;</td>
				<td><a class="left" href="register.jsp">Register for a new account</a></td>
			</tr>				
		</table>
				
<%@include file="footer.jsp" %>
	
	
</body>
</html>