<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FAQ's : Personal Loan</title>
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
			<li><a href="EligibilityP.jsp">Eligibility</a></li>
			<li><a href="InterestRateP.jsp">Interest Rate</a></li>
			<li><a href="DocumentationP.jsp">Documentation</a></li>
			<li><a href="FaqsP.jsp">FAQ's</a></li>
			<li><a href="ScnfP.jsp">Service charges & Fees</a></li>
			<li><a href="Checkstatus.jsp">Check Status</a></li>
		</ul>
	</section>
	<section id=imh1>
<h2>Personal Loans</h2>
<br>
<ul>
<li><p>What are the minimum and maximum loan amounts?</p></li>
<h6>  You can avail of loans ranging from Rs 50,000/- to Rs 15,00,000/- depending on your eligibility, income and repayment capacity.</h6>
<br>
<li><p>What are the loan tenure options?</p></li>
<h6>The loan can be repaid over a period of 12 to 60 months.</h6>
<br>
<li><p>Are there any additional charges?</p></li>
<h6>A processing fee of 2% to 2.25% depending on the company you are employed in and location of the loan will be levied. This fee will be deducted from the disbursal amount payable to you.</h6>
<br>
<li><p>How much time will it take for my loan to be approved?</p></li>
<h6>Loans are approved within 72 hours of submission of complete documentation.</h6>
<br>
<li><p>How do I repay the loan?</p></li>
<h6>You can repay the loan in Equated Monthly Installments (EMI's) through post-dated cheques favouring ICICI Bank Limited, or if you have an ICICI Bank account you can mandate us to directly debit the same or by ECS ( Electronic Clearing Services) with any other Bank.</h6>
<br>
<li><p>Can I prepay my loan?</p></li>
<h6>Yes, you can prepay the entire loan outstanding anytime after paying 6 installments. Prepayment charges as applicable would be levied on the outstanding loan amount. No part prepayment is allowed.</h6>
</ul>
<br>
<form method="post" action="http://localhost:8086/dddd/GetEligibilityP.jsp">
	<div align="center">
	<button type="submit" value="apply">APPLY NOW</button></div>
	</form>
	<br>
</section>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>