<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact Us</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>

<body id="white">

	
<div class="row">	
	
	<div class="column11">
		<img id="tree" class="center" src="images/images.png" alt="tree">		
	</div>
	
	<div class="column22">
	
	<h2 id="center"><u>Contact Us!</u></h2>
	<p id="center"><i>${message}</i></p>
	
	<%--Form sends comments to customer service email --%>
	<form action="UsersServlet" method="post">
		<input type="hidden" name="action" value="contactUs">
		
		<table id="alignTable">
			<tr>
				<td><label>Name:</label></td>
				<td><input class="left" type="text" name="name" <c:out value="${name}" /> value="${sessionScope.user.firstName}" required></td>
			</tr>			
			<tr>
				<td><label>Email:</label></td>
				<td><input class="left" type="email" name="email" <c:out value="${email}" />  value="${sessionScope.user.email}" required></td>				
			</tr>
			<tr>
				<td><label>Comments:</label></td>
				<td><textarea class="left" name="comments" <c:out value="${comments}" /> required></textarea></td>				
			</tr>
			<tr>
  				<td>&nbsp;</td>
  				<td>&nbsp;</td>
  			</tr>
			<tr>
				<td>&emsp;</td>
				<td><input class="button left" type="submit" name="send" value="submit"></td>				
			</tr>
		</table>
	</form>
	</div>
	<div class="column33">
		<p></p>
	</div>
	
</div>
<%@include file="footer.jsp" %>
</body>
</html>