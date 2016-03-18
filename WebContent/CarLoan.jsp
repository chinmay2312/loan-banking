<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car Loan</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>
<section id=imh1>
<h2>Car Loan</h2>
<p>HiTech Bank offers car loans up to 100% ex-showroom price of the car, with
attractive interest rates and up to 7 years tenure.</p>
<br>
	<form method="post" action="http://172.17.111.120:8087/MyLoanProj/GetEligibilityCar.jsp">
	<div align="center">
	<button type="submit" value="apply">APPLY NOW</button></div><br>
	</form>
<h3>New Car Loans</h3>
<ul>
<li>Up to 85% on road funding</li>
<li>100% funding scheme for select corporate customers</li>
<li>Simple and hassle free procedures</li>
<li>No income document scheme for select profiles</li>
</ul><br>
<h3>Pre-Owned Car Loans</h3>
<ul>
<li>Loan tenure upto 5 years</li>
<li>Complete transfer support with Pan India tie up with dealers</li>
<li>Upto 90% funding of the valuation amount</li>
<li>Most competitive interest rates</li>
</ul><br>
<h3>Loan against Car</h3>
<ul>
<li>Cash loan facility for existing loan account holders of 
HiTech Bank</li>
<li>Special preapproved offers for loan against your 
existing car</li>
<li>Upto 150% funding of the original loan amount</li>
<li>No verification or valuation of your car required</li>
<li>No income docs required</li>
</ul>
		<%-- <jsp:include page="EligibilityCalC.jsp"></jsp:include> --%>
</section>
</body>
</html>