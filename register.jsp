<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>
<body>

<%--Allow new users to register for an account; must not already have an email address registered --%>
	<h2 id="center"><u>Register for a free account today!</u></h2><br>
	<p id="center"><i>${message}</i></p>
	
	<form action="UsersServlet" method="post">
		<input type="hidden" name="action" value="register">
	
		<table id="alignTable">
			<tr>
				<td><label>First Name:</label></td>
				<td><input class="left" type="text" name="firstName" <c:out value="${requestScope.firstName }" /> required></td>				
			</tr>
			<tr>
				<td><label>Last Name:</label></td>
				<td><input class="left" type="text" name="lastName" <c:out value="${requestScope.lastName }" /> required></td>				
			</tr>
			<tr>
				<td><label>Create Email:</label></td>
				<td><input class="left" type="email" name="createEmail" <c:out value="${requestScope.createEmail}" /> required 
				placeholder="Please enter a valid email address"></td>				
			</tr>
			<tr>
				<td><label>Confirm Email:</label></td>
				<td><input class="left" type="email" name="confirmEmail" <c:out value="${requestScope.confirmEmail}" /> required></td>				
			</tr>
			<tr>
			<%--Password fields use Javascript for checking password strength requirements; must match pattern --%>
				<td><label for="psw">Create Password:</label></td>
				<td><input class="left" type="password" id="psw" name="createPass" <c:out value="${requestScope.createPass}" />
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W])(?=.*[^\s]).{8,}" 
					placeholder="Must match requested format" required></td>	
									
			</tr>
			<tr>
				<td></td>
				<td>
					<%--Display Password Requirements --%>	
	  				<span id="message">
	 					<p class="pink">Password <b>must</b> contain the following:</p>
		 				<p id="letter" class="invalid">A <b>lowercase</b> letter</p>
		  				<p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
		  				<p id="number" class="invalid">A <b>number</b></p>
		  				<p id="length" class="invalid">Minimum <b>8 characters</b></p>
		  				<p id="special" class="invalid">A <b>special character: !@$#&*%=</b></p>
		  				<p id="white" class="valid">No <b>spaces</b></p><br>
					</span>
				</td>
			</tr>
			<tr>
				<td><label>Confirm Password:</label></td>
				<td><input class="left" type="password" name="confirmPass" <c:out value="${requestScope.confirmPass}" /> required></td>				
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>				
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input class="button left" type="submit" name="login" value="submit"></td>				
			</tr>
		</table>
		
	</form>
	
	

	<script src="js/PasswordValidation.js"></script>

	
<%@include file="footer.jsp" %>
</body>
</html>