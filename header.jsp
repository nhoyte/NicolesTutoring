<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Nicole's Tutoring</title>
	<link rel="stylesheet" href="styles/main.css">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>

<body>
	<h1 id="shadow">Nicole's Tutoring!  &emsp;&emsp;&emsp;&emsp;&emsp;
	<img id="headerimg" class="center" src="images/lop.jpg" alt="math">
	</h1>				
			<%--a user is logged in --%>
			<c:choose>
				<c:when test="${sessionScope.user != null}">
					<p class="floatRght">
					
					<%--display welcome and logout link --%>
						
						Welcome, ${sessionScope.user.firstName}! 					
						<a href="UsersServlet?action=logout"><u>(logout)</u></a>
					</p>
				</c:when>
				
				<%--a tutor is logged in --%>
				<c:when test="${sessionScope.tutor != null}">
					<p class="floatRght">
					<%--display welcome and logout link --%>				
					
					Welcome, ${sessionScope.tutor.firstName}! 					
					<a href="TutorsServlet?action=logout"><u>(logout)</u></a>
					</p>
				</c:when>
				<c:otherwise>
					<%--displays link to create an account when neither a tutor or user is logged in --%>
					<p class="floatRight"><a href="login.jsp">login or create an account</a></p>					
				</c:otherwise>
			</c:choose>
						
	<br><br><br><br>
	
	<%--Navigation Menu --%>
	<ul>
  		<li><a href="index.jsp">Home</a></li>
  		<li><a href="subjects.jsp">Appointments</a></li>
  		<li><a href="ourResults.jsp">Our Results</a></li>
  		<li><a href="aboutUs.jsp">About Us</a></li>
  		<li><a href="contactUs.jsp">Contact Us!</a></li>
  		<li class="floatRight"><a href="tutorLogin.jsp">Tutor Login</a></li>
  		
	</ul>
	
	<br><br>
					
			<%--a user is logged in --%>
			<c:choose>
				<c:when test="${sessionScope.user != null}">
					<p class="floatRght">
					
					<%--displays link to view appointments --%>
						<a href="UsersServlet?action=viewAppts&email=${sessionScope.user.email}"><u>View Appointments</u></a>
					</p>
				</c:when>
				
				<%--a tutor is logged in --%>
				<c:when test="${sessionScope.tutor != null}">
					<p>
						<%--displays links to view schedule --%>
						<a href="TutorsServlet?action=viewSchedule&email=${sessionScope.tutor.email}"><u>View Schedule</u></a>
					</p>
				</c:when>
			</c:choose>

</body>
</html>