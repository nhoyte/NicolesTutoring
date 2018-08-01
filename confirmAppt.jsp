<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment Confirmation</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>
<body>
	<h2>Your appointment has been scheduled!</h2>
	
	<%--Displays appointment information selected by the user --%>
	<p>
		<b>Subject:</b> ${sessionScope.appointment.subject} <br>
		<b>Day:</b> ${sessionScope.appointment.day}  <br>
		<b>Time:</b> ${sessionScope.appointment.timeFrame}  <br>
		<b>Tutor Email:</b> ${sessionScope.appointment.tutorEmail}  <br>
		
	</p>
		
	<%--link for users to schedule another appointment --%>	
	<a href="availabilities.jsp">Schedule Another Appointment</a>

<%@include file="footer.jsp" %>
</body>
</html>