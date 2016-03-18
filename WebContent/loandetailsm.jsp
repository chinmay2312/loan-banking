<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@page import="com.lnt.project.loan.loanMaster.*" %>
<%@page import="com.lnt.project.loan.carLoan.*" %>
<%@page import="com.lnt.project.loan.homeLoan.*" %>
<%@page import="com.lnt.project.loan.loanMaster.LoanMasterDaoImpl" %>
<%@page import="com.lnt.project.loan.carLoan.CarLoanDaoImpl" %>
<%@page import="com.lnt.project.loan.homeLoan.HomeLoanDaoImpl" %>
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation1.jsp"></jsp:include>
	<section id=imh >
<table border="1">
<tr>
<th>Request ID</th>
<th>Retirement Age</th>
<th>Loan Type</th>
<th>Loan Amount</th>
<th>Tenure</th>
<th>E.M.I</th>2	
<th>Salary</th>
<th>Applied Date</th>
<th>Category</th>
<th>Model</th>
<th>Price</th>
<th>R.C.No</th>
<th>Purpose</th>
<th>Category</th>
<th>Cost Of Construction</th>
<th>Cost of Plot</th>
</tr>
<%
DaoLoanMaster d=LoanMasterDaoImpl.getInstance();
for(LoanMaster l:d.getAllLoanMaster())
{ %>
<tr>
<td><%=l.getReq_id() %></td>
<td><%=l.getRetirementAge()%></td>
<td><%=l.getLoanType()%></td>
<td><%=l.getLoanAmount()%></td>
<td><%=l.getTenure() %></td>
<td><%=l.getEmi() %></td>
<td><%=l.getNetSalary() %></td>
<td><%=l.getAppliedDate()%></td>


<% if(l.getLoanType().equalsIgnoreCase("CAR"))
{
    DaoCarLoan d1=new CarLoanDaoImpl();
	CarLoan c=d1.getCarLoan(l.getReq_id());
	%>
<td><%=c.getCategory() %></td>
<td><%=c.getModel() %></td>
<td><%=c.getPrice() %></td>
<td><%=c.getRcRegNo() %></td>
<% }
else{%>
<td>--</td>
<td>--</td>
<td>--</td>
<td>--</td>
<%}if(l.getLoanType().equalsIgnoreCase("Home"))
{
    DaoHomeLoan d1=new HomeLoanDaoImpl();
	HomeLoan h=d1.getHomeLoan(l.getReq_id());
%>
<td><%=h.getPurposeLoan() %></td>
<td><%=h.getPropCategory() %></td>
<td><%=h.getCostConstruction() %></td>
<td><%=h.getCostPlot()%></td>
<% }
else{%>
<td>--</td>
<td>--</td>
<td>--</td>
<td>--</td>
<%}%>     
</tr>
<%} %>
</table>
</section>
	<jsp:include page="sectionm.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>