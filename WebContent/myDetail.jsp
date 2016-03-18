<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.lnt.project.loan.person.*" %>
<%@page import="com.lnt.project.loan.address.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String str=(String)session.getAttribute("pid");
System.out.println(str); %>
<table border="1">
<tr>
    <th>p_id</th>
	<th>name</th>
	<th>gender</th>
	<th>DOB</th>
	<th>panCard</th>
	<th>email</th>
	<th>mobileNo</th>
	<th>securityQuestion</th>
	<th>securityAnswer</th>
</tr>

<%
DaoPerson personD = PersonDaoImpl.getInstance();
Person add=personD.getPerson(str);
%>

<tr>
<td><%= add.getP_id()%></td>
<td><%= add.getName()%></td>
<td><%= add.getGender()%></td>
<td><%= add.getDOB()%></td>
<td><%= add.getPanCard() %></td>
<td><%= add.getEmail()%></td>
<td><%= add.getMobileNo()%></td>
<td><%= add.getSecurityQuestion()%></td>
<td><%= add.getSecurityAnswer()%></td>

</tr>
</table>

<table border="1">
	<tr>
	
	<th>type</th>
	<th>houseNo</th>
	<th>street</th>
	<th>city</th>
	<th>state</th>
	<th>country</th>
	<th>pinCode</th>
	</tr>
<% 
DaoAddress AddressD= new AddressDaoImpl();
for(Address p:AddressD.getAddresses(str))
{%>
<tr>
<td><%= p.getType() %></td>
<td><%= p.getHouseNo() %></td>
<td><%= p.getStreet() %></td>
<td><%= p.getCity() %></td>
<td><%= p.getState() %></td>
<td><%= p.getCountry() %></td>
<td><%= p.getPinCode() %></td>
</tr> 
<%} %>
</table>
</body>
</html>