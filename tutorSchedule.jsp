<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>
<body>
	<%--check if apps array list is empty; if not, display contents in a table --%>
	<c:choose>	
		<c:when test="${empty requestScope.schedule}">
				<h2 id="center">You have no appointments scheduled.</h2>
		</c:when>
		<c:otherwise>
			<h2 id="center">Here are your appointments for the week:</h2>
				<table id="regularTable">	
					<tr id="regularTable">
						<th id="regularTable"><u>Subject</u></th>
						<th id="regularTable"><u>Day</u></th>
						<th id="regularTable"><u>Time</u></th>
						<th id="regularTable"><u>Customer Email</u></th>			
		 			</tr>
		
		
			<c:forEach var="s" items="${requestScope.schedule}">
					<tr id="regularTable">
						<td id="regularTable">${s.subject}</td>
						<td id="regularTable">${s.day}</td>
						<td id="regularTable">${s.timeFrame}</td>
						<td id="regularTable">${s.userEmail}</td>				
					</tr>		
			</c:forEach>
	
	 			</table>
	 	</c:otherwise>
	 </c:choose>
	
<%@include file="footer.jsp" %>
</body>
</html>