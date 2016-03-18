<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheel" href="Layout.css">
</head>
<body><% String name=(String)session.getAttribute("name");%>
<nav id="navigation">
		<ul>
			<li><a href="LoanUser.jsp">Home</a></li>
			<li><a href="Car.jsp">Car Loan</a></li>
			<li><a href="Home.jsp">Home Loan</a></li>
			<li><a href="Personal.jsp">Personal Loan</a></li>
			<li><a href="AboutUs.jsp">About us </a></li>
			<li><a href="ContactUs.jsp">Contact us</a></li>
			<!-- <li><a href="ContactUs.jsp">Check Eligibility</a></li> -->
			<li style="color:red;float:right" id="name">Hello,<%=name %></li>
			
		<!-- <span>	<li ><a href="ApplyNow.jsp">Apply Now</a></li></span> -->
		</ul>
</nav>		
</body>
</html>