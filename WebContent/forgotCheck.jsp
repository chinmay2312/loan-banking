<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verifying alternate checks...</title>
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	
	<%@page import="java.sql.Connection"%>
	<%@page import=" java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.SQLException"%>
	<%@page import=" java.sql.Statement"%>
	<%@page import="com.lnt.project.loan.person.*"%>

	<%
	/* String check = request.getParameter("forgot");
	System.out.println("check = " + check);
	/* String check[] = new String[2];
	check = request.getParameterValues("forgot");
	System.out.println("forgot parameter 1: "+check[0]);
	System.out.println("forgot parameter 2: "+check[1]);
 */
	SuperPerson dp = PersonDaoImpl.getInstance();
	Person p;
	/*
	if(check.equalsIgnoreCase("emailCheck"))
	{
		p = dp.getPersonByEmail(request.getParameter("inputEmail"));
	}
	//if(check.equalsIgnoreCase("Mobile"))
	else
	{ */
		String ipMob = request.getParameter("inputMobile");
		System.out.println("Mobile string" + ipMob);
		Long mob = Long.valueOf(ipMob);
		System.out.println("Mobile long" + mob);

		p = dp.getPersonByMobile(mob); 
	//}
	String secQuestion= p.getSecurityQuestion();
	
	%>
	
	<table>
		 <form action="http://172.17.111.120:8087/MyLoanProj/forgotVerify.jsp"> 
		
			<tr>
				<td>Security Question: </td>
				<td><%=secQuestion %></td>
			</tr>
			<tr>
				<td>Security Answer: </td>
				<td><input type="text" name="secAns"/></td>
			</tr>
			<tr>
			<td><input type="submit" value="Submit" /></td>
			<td><input type="hidden" id="PID" value="<%=p.getP_id() %>" name="tempID"></td>
			<td><input type="hidden" id="mob" value="<%=ipMob%>" name="inputMobile"></td>
			</tr>
			
		</form>
	</table>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>