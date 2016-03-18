<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FAQ's : Home Loan</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	<section id="ln">
	<br><br>
	<ul>
	
			<li><a href="EmiCal.jsp">EMI Calculator</a></li>
<!-- 			<li><a href="EligibilityCal.jsp">Eligibility Calculator</a></li> -->
<!-- 			<li><a href="EligibilityH.jsp">Eligibility</a></li> -->
			<li><a href="InterestRateH.jsp">Interest Rate</a></li>
			<li><a href="DocumentationH.jsp">Documentation</a></li>
			<li><a href="FaqsH.jsp">FAQ's</a></li>
			<li><a href="ScnfH.jsp">Service charges & Fees</a></li>
			<li><a href="Checkstatus.jsp">Check Status</a></li>
		</ul>
	</section>
	<section id=imh1>
	<h2>Home Loans</h2>
<br>
<ul>
<li><p>Are my property documents safe with HiTech Ltd.?</p></li>
<h6>HiTech offers in-house scrutiny of property documents for your complete peace of mind. So be assured that your property documents are in safe hands.</h6>
<br>
<li><p>Can I give standing instructions to repay my Home Loan EMIs directly from my HiTech Bank Account?</p></li>
<h6>Yes, you can opt for Automated Repayment and your EMIs will be directly repaid from your HDFC Bank Savings Account, thus saving you the trouble of procuring, signing and tracking post-dated cheques.</h6>
<br>
<li><p>How will HiTech decide my home loan eligibility?</p></li>
<h6>HiTech assess the customer's repayment capacity based on income, age, qualifications, stability and continuity of occupation, and savings history.</h6>
<br>
<li><p>Can I also avail of a Home Loan for Home improvements or a Home extension?</p></li>
<h6>Yes! You can avail of an HiTech Bank Home Loan from for any of the following:
<ul>
	<li>Purchase of a home.</li>
	<li>Construction of a home.</li>
	<li>Home repairs.</li>
	<li>Home improvements.</li>
	<li>Home extension</li>
</ul>
</h6><br>
<li><p>Does HiTech Bank offer different types of Home Loan interest rates?</p></li>
<h6>Yes! HiTech Bank offers both Fixed and Floating rates as explained below:
<ul>
	<li>Fixed Home Loan rates: The rate of interest applicable for the Home Laon is fixed throughout the term of repayment of Loan.</li>
<li>Floating Home Loan rates: The rate of interest applicable for the Home Loan changes with change in the Bank's Base rate</li>
</ul>
</h6>
</ul>
<br>
	<form method="post" action="http://localhost:8086/dddd/GetEligibilityH.jsp">
	<div align="center">
	<button type="submit" value="apply">APPLY NOW</button></div>
	</form>
</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>