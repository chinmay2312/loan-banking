<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<body>
<% String reqid=request.getParameter("reqid");
%>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	<% Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:Oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");
	Statement st=conn.createStatement();
	ResultSet rs;
	rs=st.executeQuery("select status from loanmaster where reqid='"+reqid+"'");
	if(rs.next())
	{
		if(rs.getString(1).equalsIgnoreCase("IN PROCESS"))
		{
			%><h1>Your Application Is Under Process</h1><% 
		}
		else if(rs.getString(1).equalsIgnoreCase("REJECTED"))
		{
			%><h1>Sorry!!!!Your Application Has Been Rejected</h1><% 
		}
		else
		{
			
			%><h1>Congrates!!!!Your Application Has Been Sanctioned</h1><br>
			<h3>Sign Up</h3><br>
			<form method="post" action="http://172.17.111.120:8087/MyLoanProj/signupnext.jsp">
			<table>
			<tr>
				<td>Enter new password : </td>
				<td><input id="Pass" name="Pass" type="password" required></td>
			</tr>
			<tr>
				<td>Confirm new password : </td>
				<td><input id="rePass" name="rePass" type="password" required></td>
			</tr>
			<tr>
				<td>Security Question : </td>
				<td><input id="sques" name="sques" type="text" required></td>
			</tr>
			<tr>
				<td>Security Asnwer : </td>
				<td><input id="sans" name="sans" type="text" required></td>
				<td><input type="hidden" name="reqid" value="<%=reqid %>" ></td>
			</tr>
			<tr>
				<td><input type="submit" value="Confirm" onclick="conf()"/></td>
		
			</tr>
			</table>
			</form>
			
			
		<%}
	}
	%>
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>
	

</body>
</html>