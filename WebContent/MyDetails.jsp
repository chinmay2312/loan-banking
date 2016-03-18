<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MyDetails</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigationapplyuser.jsp"></jsp:include>
	
	<section id=imh>
	
	 <jsp:include page="myDetail.jsp"></jsp:include>
	
	 
	 <form action="http://172.17.111.120:8087/MyLoanProj/LoanUser.jsp">
	<div align="right">
	<button type="submit" value="back">Back</button></div>
	</form>
	</section>
	<jsp:include page="section1.jsp"></jsp:include>
	
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>