<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigationapplyuser.jsp"></jsp:include>
	
	<section id=imh >
<% String s=request.getParameter("banga");
System.out.println("reqid"+s);
double s1=0;
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:Oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");
Statement st=conn.createStatement();
ResultSet rs;	
rs=st.executeQuery("select emi from loanmaster where reqid='"+s+"'");
if(rs.next())
{
	 s1=rs.getDouble(1);
}
%>
<marquee><h1>HiTech BANK</h1></marquee>
<form action="http://172.17.111.120:8087/MyLoanProj/t.jsp">
	<table>
	<tr></tr>
	<tr><td>Enter Card Number</td><td> <input type="text" pattern="[0-9]*" minlength="12" maxlength="12" name="cn"></td></tr><br>
	<tr><td>Enter password </td><td><input type="password" pattern="[0-9]*" minlength="4" maxlength="4" name="pass"></td></tr><br>
	<tr><td>Amount</td><td><input type="text" name="with" value="<%=s1%>" readonly></td></tr><br>
	<tr><td>Enter the CVV Number:</td><td><input type="text" pattern="[0-9]*" minlength="3" maxlength="3" name="cvv"></td></tr>
    </table>
    <input type="hidden" name="reqid" value="<%=s%>">
	<input type="submit" name="Pay">
	
</form>





</section>
	<jsp:include page="section1.jsp"></jsp:include>
	
	<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>
</html>
</body>
</html>