<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Layout.css">
</head>
 <%@page import="com.lnt.project.loan.loanMaster.*" %>

<%@page import="com.lnt.project.loan.loanMaster.LoanMasterDaoImpl" %>
<%@page import="java.util.*" %>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation1.jsp"></jsp:include>
	<section id=imh >
<form method="post" action="next.jsp">
<table border="1">

<tr>
<th>Request ID</th>
<th>TotalAmt</th>
<th>Salary</th>

</tr>

<%
DaoLoanMaster d=LoanMasterDaoImpl.getInstance();
for(LoanMaster l:d.getPendingLoanMaster())
{%>
    <tr>
<%-- <td><input type="radio" name="reqid" value=<%=l.getReq_id()%>> </td> --%>
<td><input type="submit" name="reqid" value=<%=l.getReq_id()%>></td>
<td><%=l.getLoanAmount() %></td>
<td><%=l.getNetSalary() %></td>
</tr>     
<% }
System.out.println("end r.jsp");
%>
</table>
<!-- <input type="submit" value="See Orders"> -->
</form>
</section>
	<jsp:include page="section1.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>