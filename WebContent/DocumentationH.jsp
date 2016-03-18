<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Documents for Home Loan</title>
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
<!-- 			<li><a href="EligibilityH.jsp">Eligibility</a></li>
 -->			<li><a href="InterestRateH.jsp">Interest Rate</a></li>
			<li><a href="DocumentationH.jsp">Documentation</a></li>
			<li><a href="FaqsH.jsp">FAQ's</a></li>
			<li><a href="ScnfH.jsp">Service charges & Fees</a></li>
			<li><a href="Checkstatus.jsp">Check Status</a></li>
		</ul>
	</section>
	<section id=imh1> 
	<br>
	<form method="post" action="http://172.17.111.120:8086/MyLoanProj/GetEligibilityH.jsp">
	<div align="right">
	<button type="submit" value="apply">APPLY NOW</button></div>
	</form>
<h2>Documents Required for Home Loan</h2>
<p>Getting a home loan from HiTech Bank is easy and quick. 
We keep the paperwork and other formalities to a minimum.
Proof of your identity, address and income are some of the key documents 
that are required to be submitted for HiTech Bank home loan</p>
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