<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@page import="com.lnt.project.loan.Transaction.*" %>
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigationapplyuser.jsp"></jsp:include>
	
	<section id=imh >
<table border="1">

<tr>
<th>Transaction Id</th>
<th>Amount Paid</th>
<th>Penalty Paid</th>
<th>Remaining Amount</th>
<th>Payment Date</th>

</tr>
<%String s=request.getParameter("sanga");
DaoTransaction d=new TransactionDaoImpl();
for(Transaction t:d.getTransaction(s))
{%>

 <tr>
<td><%=t.getT_id() %></td>
<td><%=t.getAmountPaid()%></td>
<td><%=t.getPenalty()%></td>
<td><%=t.getRemainingAmount() %></td>
<td><%=t.getPayDate() %></td>
</tr>     
<% }
%>
</table>
</section>
	<jsp:include page="section1.jsp"></jsp:include>
	
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>