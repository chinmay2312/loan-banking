<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profit & Loss</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation.jsp"></jsp:include>
	<section id=imh >
	<br>
	<h3>View Profit & Loss</h3>
	<br>
	Select Start Date : <input type="date"> 
	Select  End  Date : <input type="date">
	<br>
	 <h5></h5>
	</section>
	<jsp:include page="section1.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>