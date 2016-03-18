<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation.jsp"></jsp:include>
	<section id=imh ><% 


 Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");
 
 String x=request.getParameter("size");
int num = Integer.parseInt(x.trim()); 
for(int i=1;i<num;i++)
{
	String message=request.getParameter("msg"+i);
	String ide = request.getParameter("id"+i);
	String qry = "update interest set rate="+message+" where rateid='"+ide+"'";
	PreparedStatement pst  = conn.prepareStatement(qry);
	
pst.executeUpdate();

%>

<%}%>
<h1>Interest Rate has been Updated</h1>
 </section>
	<jsp:include page="sectiona.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</div></body>
</html>