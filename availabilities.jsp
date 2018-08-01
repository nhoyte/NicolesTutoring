<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Availabilities</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
</head>
<body>
	<h2 id="center">Availabilities for  :</h2>
	
	<div class="center">
	
	<%--allows users to choose desired day and timeframe --%>
	
		<form action="UsersServlet" method="post">
		<input type="hidden" name="action" value="selectSlot"> 
			<p>Select day of the week:</p>
			<select name="day">
  				<option value="Monday">Monday</option>
  				<option value="Tuesday">Tuesday</option>
  				<option value="Wednesday">Wednesday</option>
  				<option value="Thursday">Thursday</option>
  				<option value="Friday">Friday</option>  		
			</select>
			<p>Select time slot: <br>
			<i>(appointments are scheduled in 2-hour blocks)</i></p>
			<select name="timeFrame">
  				<option value="2pm-4pm">2pm - 4pm</option>
  				<option value="4pm-6pm">4pm - 6pm</option>
  				<option value="6pm-8pm">6pm - 8pm</option>  		  				
			</select>
		<br><br>
	
		<input class="button left" type="submit" value="Submit">	
		</form>
	</div>
	
<%@include file="footer.jsp" %>
</body>
</html>