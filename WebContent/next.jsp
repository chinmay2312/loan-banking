<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Layout.css">
<script language="javascript">
function myFunction(s,s1){
 var y = document.getElementById("sanga");
 y.value=s;
 var y = document.getElementById("priya");
 y.value=s1;
 }
 </script> 
</head>
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
	<jsp:include page="navigation1.jsp"></jsp:include>
	<section id=imh >
<form  action="next1.jsp">

<%
String s=request.getParameter("reqid");
System.out.println("s"+s);
DaoLoanMaster d=LoanMasterDaoImpl.getInstance();
LoanMaster l=d.getLoanMaster(s);%>
<table>

<tr><td>Request ID</td><td><%=l.getReq_id() %></td></tr>
<tr><td>Retirement Age</td><td><%=l.getRetirementAge()%></td></tr>
<tr><td>Loan Type</td><td><%=l.getLoanType()%></td></tr>
<tr><td>Loan Amount</td><td><%=l.getLoanAmount()%></td></tr>
<tr><td>Tenure</td><td><%=l.getTenure() %></td></tr>
<tr><td>E.M.I</td><td><%=l.getEmi() %></td></tr>
<tr><td>Salary</td><td><%=l.getNetSalary() %></td></tr>
<tr><td>Applied Date</td><td><%=l.getAppliedDate()%></td></tr>

<% if(l.getLoanType().equalsIgnoreCase("CAR"))
{
    DaoCarLoan d1=new CarLoanDaoImpl();
	CarLoan c=d1.getCarLoan(s);
	%>
<tr><td>Category :</td><td><%=c.getCategory() %></td></tr>
<tr><td>Model :</td><td><%=c.getModel() %></td></tr>
<tr><td>Price :</td><td><%=c.getPrice() %></td></tr>
<tr><td>R.C.No :</td><td><%=c.getRcRegNo() %></td></tr>
<% }
else if(l.getLoanType().equalsIgnoreCase("Home"))
{
    DaoHomeLoan d1=new HomeLoanDaoImpl();
	HomeLoan h=d1.getHomeLoan(s);
%>
<tr><td>Purpose :</td><td><%=h.getPurposeLoan() %></td></tr>
<tr><td>Category:</td><td><%=h.getPropCategory() %></td></tr>
<tr><td>Cost Of Construction :</td><td><%=h.getCostConstruction() %></td></tr>
<tr><td>Cost of Plot</td><td><%=h.getCostPlot()%></td></tr>
<% }%>     


</table>
<input type="submit" name=<%=l.getReq_id()%> value="sanction" onclick="myFunction(value,name)"> 
<input type="submit" name=<%=l.getReq_id()%> value="reject" onclick="myFunction(value,name)">
<input type="hidden" name="sanga" id="sanga">
<input type="hidden" name="priya" id="priya">
</form>
</section>
	<jsp:include page="section1.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>