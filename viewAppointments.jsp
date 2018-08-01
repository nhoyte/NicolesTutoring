<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointments</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>
<body>

	<c:choose>
	<%--check if apps array list is empty; if not, display contents in table --%>
		<c:when test="${empty requestScope.apps}">
				<h2 id="center">You have no appointments scheduled.</h2>
		</c:when>
		<c:otherwise>
			<h2 id="center">Here are your appointments for the week:</h2>
				<table id="regularTable">	
					<tr id="regularTable">
						<th id="regularTable"><u>Subject</u></th>
						<th id="regularTable"><u>Day</u></th>
						<th id="regularTable"><u>Time</u></th>
						<th id="regularTable"><u>Tutor</u></th>	
						<th id="regularTable">&nbsp;</th>		
		 			</tr>
	
				<c:forEach var="a" items="${requestScope.apps}">
					<tr id="regularTable">
						<td id="regularTable">${a.subject}</td>
						<td id="regularTable">${a.day}</td>
						<td id="regularTable">${a.timeFrame}</td>
						<td id="regularTable">${a.tutorEmail}</td>
						
						<%--Link to delete an appointment --%>
						<td id="regularTable"><a href="UsersServlet?action=deleteAppt&subject=${a.subject}&
										day=${a.day}&timeFrame=${a.timeFrame}&tutorEmail=${a.tutorEmail}">delete</td>				
					</tr>		
				</c:forEach>
	 	
				</table>
			
		</c:otherwise>
	</c:choose>



<%@include file="footer.jsp" %>
</body>
</html>