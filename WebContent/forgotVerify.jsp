<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Verified !</title>

</head>
<body>

<%@page import="com.lnt.project.loan.person.*"%>

<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	
	<%
		String pid = request.getParameter("tempID");
	String ipMob = request.getParameter("inputMobile");
	System.out.println("ipMob="+ipMob);
		String secAns = request.getParameter("secAns");
		SuperPerson dp = PersonDaoImpl.getInstance();
		
		Person p = dp.getPerson(pid);
		if(p.getSecurityAnswer().equalsIgnoreCase(secAns))
		{
		
	%>
	
	<table>
	<form action="http://172.17.111.120:8087/MyLoanProj/forgotFinal.jsp">
		<tbody id="newPass">
				<tr>
					<td>Enter new password : </td>
					<td><input id="Pass" name="Pass" type="password" required></td>
				</tr>
				<tr>
					<td>Confirm new password : </td>
					<td><input id="rePass" name="rePass" type="password" required></td>
				</tr>
				<tr>
					<td><input type="submit" value="Confirm" onclick="conf()"/></td>
					<td><input type="hidden" id="PID" value="<%=pid %>" name="tempID"></td>
				</tr>
			</tbody>
			</form>
	</table>
<%		
		}
		else
		{
			%>
			
			<jsp:forward page="forgotCheck.jsp">
				<jsp:param name="inputMobile" value="<%=ipMob%>"></jsp:param>
			</jsp:forward>
			<script>
			alert("Security asnwer mismatches !");
			</script>
			<%
		}
		
		%>
<script>
				function conf()
				{
					if(document.getElementById('Pass').value != document.getElementById('rePass').value)
					{
						alert("Values do not match !");
						window.location = "http://172.17.111.120:8087/MyLoanProj/forgotCred.jsp";
						
					}
				}
			</script>	
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>



</body>
</html>