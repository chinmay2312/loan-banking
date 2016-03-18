<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HiTech Home</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>

<%

String uVis = request.getParameter("uVis");
String pVis = request.getParameter("pVis");
%>

<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="block.jsp"></jsp:include>
	
	<jsp:include page="homenavigation.jsp"></jsp:include>
	<jsp:include page="section.jsp"></jsp:include>
	<jsp:include page="homenavigation1.jsp">
		<jsp:param name="uVis" value="<%=uVis %>"/>
		<jsp:param name="pVis" value="<%=pVis %>"/>
	</jsp:include> 
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>