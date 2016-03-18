<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="com.lnt.project.loan.person.*"%>

<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>

<%
String pass = request.getParameter("Pass");
String pid = request.getParameter("tempID");
SuperPerson dp = PersonDaoImpl.getInstance();
dp.updatePersonPassword(pid, pass);
%>

<h3>Your new password has been activated.</h3>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>