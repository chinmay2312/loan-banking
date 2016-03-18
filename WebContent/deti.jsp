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
<%@page import="com.lnt.project.loan.loanMaster.*" %>
<%@page import="com.lnt.project.loan.carLoan.*" %>
<%@page import="com.lnt.project.loan.homeLoan.*" %>
<%@page import="com.lnt.project.loan.loanMaster.LoanMasterDaoImpl" %>
<%@page import="com.lnt.project.loan.carLoan.CarLoanDaoImpl" %>
<%@page import="com.lnt.project.loan.homeLoan.HomeLoanDaoImpl" %>
<%@page import="java.util.*" %>
<%@page import="java.lang.Integer.*" %>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigationapplyuser.jsp"></jsp:include>
	
	<section id=imh >
<% String s=request.getParameter("reqid");
System.out.println("s"+s);
String s1="";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:Oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");
Statement st=conn.createStatement();
ResultSet rs;
rs=st.executeQuery("select reqid from loanmaster where loanaccno='"+s+"'");
if(rs.next())
{
	 s1=rs.getString(1);
}
DaoLoanMaster d=LoanMasterDaoImpl.getInstance();

LoanMaster l=d.getLoanMaster(s1);%>
<form>
<table>

<tr><td>Request ID</td><td><%=l.getReq_id() %></td></tr>
<tr><td>Loan Type</td><td><%=l.getLoanType()%></td></tr>
<tr><td>Loan Amount</td><td><%=l.getLoanAmount()%></td></tr>
<tr><td>Tenure</td><td><%=l.getTenure() %></td></tr>
<tr><td>E.M.I</td><td><%=l.getEmi() %></td></tr>
<tr><td>Applied Date</td><td><%=l.getAppliedDate()%></td></tr>

<% if(l.getLoanType().equalsIgnoreCase("CAR"))
{
    DaoCarLoan d1=new CarLoanDaoImpl();
	CarLoan c=d1.getCarLoan(s1);
	%>
<tr><td>Category :</td><td><%=c.getCategory() %></td></tr>
<tr><td>Model :</td><td><%=c.getModel() %></td></tr>
<tr><td>Price :</td><td><%=c.getPrice() %></td></tr>
<tr><td>R.C.No :</td><td><%=c.getRcRegNo() %></td></tr>
<% }
else if(l.getLoanType().equalsIgnoreCase("Home"))
{
    DaoHomeLoan d1=new HomeLoanDaoImpl();
	HomeLoan h=d1.getHomeLoan(s1);
%>
<tr><td>Purpose :</td><td><%=h.getPurposeLoan() %></td></tr>
<tr><td>Category:</td><td><%=h.getPropCategory() %></td></tr>
<tr><td>Cost Of Construction :</td><td><%=h.getCostConstruction() %></td></tr>
<tr><td>Cost of Plot</td><td><%=h.getCostPlot()%></td></tr>
<% }%>     


</table>
</form>
</section>
	<jsp:include page="section1.jsp"></jsp:include>
	
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>