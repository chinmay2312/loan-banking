<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Personal Loan</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigationapply.jsp"></jsp:include>
	<section id="ln">
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
	<jsp:include page="PersonalLoan.jsp"></jsp:include> 
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>