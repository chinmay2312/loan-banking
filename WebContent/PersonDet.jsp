<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Person Details</title>
<link rel="stylesheet" href="Layout.css">
</head>
 <%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<body>
 <% 
       
       		 Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");

            Statement statement = conn.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from Person") ;
        %>
     
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation.jsp"></jsp:include>
	<section id=imh >
	<h3>Customer Details</h3>
	<form method="post" action="http://localhost:8086/LoanProjectPerson/Details.jsp">
	<table>
	<tr>
	 <th>p_id</th>
	<th>name</th>
	<th>gender</th>
	<th>DOB</th>
	<th>panCard</th>
	<th>email</th>
	<th>mobileNo</th>
	</tr>
	<%  
	int i=0;
	 while(resultset.next()){ %>
	 <TR>
	     <TD> <input type="button" name="Dob" value="<%=resultset.getString(1) %>" readonly></TD>
         <TD> <input name="id<%=i %>" value="<%=resultset.getString(2) %>" readonly></TD>
         <TD><%=resultset.getString(3) %></TD>
         <TD><%=resultset.getString(4) %></TD>
         <TD><%=resultset.getString(5) %></TD>
    	 <TD><%=resultset.getString(6) %></TD>
    	 <TD><%=resultset.getDouble(8) %></TD>
    </tr>
      <% i++;
         
     } %>
	</table>
	</form>
	</section>
	<jsp:include page="sectiona.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>