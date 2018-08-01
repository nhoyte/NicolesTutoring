<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Email Confirmation</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>
<body>
	<%--displays email confirmation --%>
	<h2 id="center">Your email has been sent! Please allow up to 24 hours for a response.</h2>
	
	<%--Displays body of the email sent by the user --%>
	<p id="center">	You sent message: <br> ${body}</p>

<%@include file="footer.jsp" %>
</body>
</html>