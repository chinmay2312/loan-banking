<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Loan User</title>
<link rel="stylesheet" href="Layout.css">
<script language="javascript">
function myfunction(s){
 var y = document.getElementById("reqid");
 y.value=s;
 
 }
 </script>
</head>
<%@page import="com.lnt.project.loan.loanMaster.*" %>
<%@page import="java.util.ArrayList"%>
<body>

<div id="wrapper">
	<jsp:include page="block.jsp"></jsp:include>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigationapplyuser.jsp"></jsp:include>
	
	<section id=imh >
	<!-- style="border-style: solid"> -->
	<br><% String s=(String)session.getAttribute("pid");
System.out.println(s);
	 DaoLoanMaster d=LoanMasterDaoImpl.getInstance();%>
	
	
	
	<ul><form method="get" action="dets.jsp">
		<li>On Going Loan Details</li>
		<ol>
			<li> <table border="1">

				<tr>
				<td>SR.No</td>
				<td>Account Number</td>
				<td>Loan Type</td>
				<td>E.M.I</td>
				<td>EMI Date</td>
				</tr>
				<%int i=1;
				for(LoanMaster l:d.getpsLoanMaster(s))
				   {
					System.out.println("hdhdsjdjssdjsdkj");
				   %>
				   <tr>
				   <td><%=i %></td>
					<td><input type="submit" name="reqid"  value="<%=l.getLoanAccountNo()%>"></td>
					<td><%=l.getLoanType() %></td>
					<td><%=l.getEmi() %></td>
					<td><%=l.getEmiDate() %></td>
					</tr>
			
				<%i++; }%>
				</table>
				
			</li>
		</ol>
		<br>
		</form>
		<form method="post" action="deti.jsp">
		<li>Under Process Loan Details</li>
		<ol>
			<li> <table border="1">

				<tr>
				<td>SR.No</td>
				<td>Account Number</td>
				<td>Loan Type</td>
				<td>E.M.I</td>
				</tr>
			<%int j=1;
			for(LoanMaster l:d.getpiLoanMaster(s))
				   {
				   %>
				   
					<tr>
				   <td><%=j %></td>
					<td><input type="submit" name="reqid" value="<%=l.getLoanAccountNo()%>"></td>
					<td><%=l.getLoanType() %></td>
					<td><%=l.getEmi() %></td>
					</tr>
				<% }%>
				</table>
			</li>
		</ol>
		</form>
	</ul>
	</section>
	<jsp:include page="section1.jsp"></jsp:include>
	
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>