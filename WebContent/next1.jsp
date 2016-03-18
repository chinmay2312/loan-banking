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
<%@page import="java.util.Calendar" %>
<%@page import="java.util.Date" %>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation1.jsp"></jsp:include>
	<section id=imh >
<%
DaoLoanMaster d=LoanMasterDaoImpl.getInstance();
if (request.getParameter("sanga").equals("sanction"))
{
	System.out.println("sanction");
	Date now=new Date();
	String s=request.getParameter("priya");
	System.out.println("s"+s);
	
	Calendar calendar = Calendar.getInstance();
    calendar.setTime(now);
    int x=(calendar.get(Calendar.DAY_OF_MONTH)%29);
    if(x==0)
    	x=1;
    System.out.println(x);
	d.updateSanctionedDate(s, x);
	d.updateStatus(s, "SANCTIONED");
	%><H1>Loan Sanctioned </H1><%
}
else if(request.getParameter("sanga").equals("reject"))
{
	System.out.println("reject");
	String s1=request.getParameter("priya");
	d.updateStatus(s1, "REJECTED");
	%><H1>Loan Rejected </H1><%
}
%>

</section>
	<jsp:include page="section1.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>