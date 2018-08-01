<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select A Tutor</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>
<body>
	<p id="center">The following tutors are available during the day and time you selected. Please select 
		an appointment.</p>
		
	<%--Users select day, time, and tutor they would like to work with (if they have a preference) --%>

	<table id="regularTable">	
		
		<tr id="regularTable">
			<th id="regularTable">&nbsp;</th>
			<th id="regularTable"><u>Day</u></th>
			<th id="regularTable"><u>Time Slot</u></th>
			<th id="regularTable"><u>Tutor Name</u></th>
			<th id="regularTable"><u>Tutor Email</u></th>
			
		 </tr>
		 
	<%--Select link appends required values to the URL using GET method --%>	 
	
	<c:forEach var="a" items="${requestScope.a}">
			<tr id="regularTable">
				<td id="regularTable"><a href="UsersServlet?action=createAppt&subject=${cookie.subjectCookie.value}&
									day=${a.day}&timeFrame=${a.timeFrame}&tutorEmail=${a.tutorEmail}">select</a></td>				
				<td id="regularTable">${a.day}</td>
				<td id="regularTable">${a.timeFrame}</td>
				<td id="regularTable">${a.tutorFname}</td>
				<td id="regularTable">${a.tutorEmail}</td>
			</tr>
	 </c:forEach> 
	 </table>
	 <br><br><br><br>

<%@include file="footer.jsp" %>
</body>
</html>