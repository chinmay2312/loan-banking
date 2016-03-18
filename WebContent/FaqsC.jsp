<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FAQ's : Car Loan</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	<section id="ln">
<!-- <form action="http://localhost:8086/dddd/"> -->
	<br><br>
	<ul>
			<li><a href="EmiCal.jsp">EMI Calculator</a></li>
<!-- 			<li><a href="EligibilityCal.jsp">Eligibility Calculator</a></li> -->
<!-- 			<li><a href="EligibilityH.jsp">Eligibility</a></li> -->
			<li><a href="InterestRateC.jsp">Interest Rate</a></li>
			<li><a href="DocumentationC.jsp">Documentation</a></li>
			<li><a href="FaqsC.jsp">FAQ's</a></li>
			<li><a href="ScnfC.jsp">Service charges & Fees</a></li>
			<li><a href="Checkstatus.jsp">Check Status</a></li>
		</ul>
	</section>
	<section id=imh1>
	<h2>Car Loans</h2>
<br>
<ul>
<li><p>How much finance can I avail of on New Car Loans?</p></li>
<h6>You can borrow up to 80% of the invoice value. However, the minimum loan amount is Rs. 1,00,000.</h6>
<br>
<li><p>Who can avail of HiTech Bank New Car Loans?</p></li>
<h6>We offer New Car Loans to the following:
1. Salaried individuals in the age group of 21 to 60 years (at the end of the tenure)
2. Self-employed individuals in the age group of 21 to 65 years (at the end of the tenure)
3. Partnership Firms
4. Public & Private Ltd. Companies</h6>
<br>
<li><p>Do I have the option to pre-pay the entire loan amount?</p></li>
<h6>Yes. You can pre-pay the loan any time after 6 months of availing of the loan. 
You just have to pay a small pre-payment fee on the outstanding loan amount.</h6>
</ul>
<br>
	<form method="post" action="http://localhost:8086/dddd/GetEligibilityC.jsp">
	<div align="center">
	<button type="submit" value="apply">APPLY NOW</button></div>
	</form>
</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>