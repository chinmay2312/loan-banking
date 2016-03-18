<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Documents for Car Loan</title>
<link rel="stylesheet" href="Layout.css">
<style title="tabl">
table,th, td {
    border: 1px solid black;
    
}
td
{
align: center;
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
			<!-- <li><a href="EligibilityC.jsp">Eligibility</a></li> -->
			<li><a href="InterestRateC.jsp">Interest Rate</a></li>
			<li><a href="DocumentationC.jsp">Documentation</a></li>
			<li><a href="FaqsC.jsp">FAQ's</a></li>
			<li><a href="ScnfC.jsp">Service charges & Fees</a></li>
			<li><a href="Checkstatus.jsp">Check Status</a></li>
		</ul>
	</section>
	<section id=imh1> 

	<form method="post" action="http://localhost:8086/dddd/GetEligibilityC.jsp">
	<div align="right">
	<button type="submit" value="apply">APPLY NOW</button></div>
	</form>
<h2>Documents Required for Car Loan</h2>
<p>At ICICI Bank, we offer convenient, flexible and quick car loan at the click of a button. Keeping your convenience in mind, minimal documents are specified.</p>
<p>Our representative will help you with the formats of documents and the information required</p>
<table>
<tr>
<th>Documents</th>
<th>Salaried </th>
<th>Self Employed Professional</th>
<th>Self Employed  Non-Professional</th>
</tr>

<tr> 
<td>Application form</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>

</tr>

<tr>
<td>KYC</td>
<td></td>
<td></td>
<td></td>
</tr>

<tr align="right">
<td> Photographs</td >				
 <td align="center">&#10004</td>
 <td align="center"> &#10004</td> 
<td align="center">&#10004</td>
</tr>

<tr align="right"> 
<td>Identity Proof</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
</tr>

<tr align="right">
<td>Address Proof</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
</tr>

<tr align="right">			
<td>Age Proof</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
</tr>

<tr>			
<td>Last 6 months bank statements</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
</tr>				

<tr>			
<td>Income Proof</td>
<td></td>
<td></td>
<td></td>
</tr>
	 
<tr align="right">			
<td align="center">Latest Salary Slip / Form 16</td>
<td align="center">&#10004</td>
<td></td>
<td></td>
</tr>

<tr align="right">			
<td>Audited financials for the last two years</td>
<td></td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
</tr>

<tr>			
<td>Other Documentation</td>
<td></td>
<td></td>
</tr>

<tr align="right">			
<td>Education qualification certificate and proof of business existence</td>
<td></td>
<td align="center">&#10004</td>
<td align="center">&#10004</td>
</tr>
</table>

	<jsp:include page="EligibilityCalH.jsp"></jsp:include>
	</section>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>