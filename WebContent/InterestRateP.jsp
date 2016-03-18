<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Interest Rate for Personal Loan</title>
<link rel="stylesheet" href="Layout.css">
<style >
table,th, td {
    border: 1px solid black;
}
th
{ 
 background-color:#8080ff;
}
</style>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	<section id="ln">
<!-- <form action="http://localhost:8086/dddd/"> -->
	<br><br>
	<ul>
			<li><a href="EmiCal.jsp">EMI Calculator</a></li>
			<li><a href="EligibilityP.jsp">Eligibility</a></li>
			<li><a href="InterestRateP.jsp">Interest Rate</a></li>
			<li><a href="DocumentationP.jsp">Documentation</a></li>
			<li><a href="FaqsP.jsp">FAQ's</a></li>
			<li><a href="ScnfP.jsp">Service charges & Fees</a></li>
			<li><a href="Checkstatus.jsp">Check Status</a></li>
		</ul>
	</section>
	<section id=imh1>
	<form method="post" action="http://localhost:8086/dddd/GetEligibilityP.jsp">
	<div align="right">
	<button type="submit" value="apply">APPLY NOW</button></div>
	</form>
	<br>
<h2>Personal Loan Interest Rates</h2>
<p>Loans & Advances - Indicative lending rates updated on March 01, 2015</p>

<br>
<br>
<h5>Women</h5>
<table>
<tr>
<th> Type of Interest Rate </th>
<th> Rate of Interest </th>
</tr>
<tr>
<td>
<%
	
%>
</td>
</tr>
</table>
<h5>Senior Citizen</h5>
<table>
<tr>
<th> Type of Interest Rate </th>
<th> Rate of Interest </th>
</tr>
<tr>
<td>
<%
	
%>
</td>
</tr>
</table>
<h5>NRI</h5>
<table>
<tr>
<th> Type of Interest Rate </th>
<th> Rate of Interest </th>
</tr>
<tr>
<td>
<%
	
%>
</td>
</tr>
</table>
<h5>Male</h5>
<table>
<tr>
<th> Type of Interest Rate </th>
<th> Rate of Interest </th>
</tr>
<tr>
<td>
<%
	
%>
</td>
</tr>
</table>
		<jsp:include page="EligibilityCalP.jsp"></jsp:include>

</section>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>