<%@page import="java.io.PrintWriter"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%@page import="java.sql.Connection"%>
<%@page import=" java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import=" java.sql.Statement"%>
<%@page import="Login.login"%>
<%@page import="Login.encrypt"%>

<%
	String user1=request.getParameter("username");
	String pass1=request.getParameter("password"); 
	 /* String user1="aishwarya19@gmail.com";
	String pass1="priya"; */ 
	String pass2;
	int check;
	encrypt e=new encrypt();
	pass2=e.byteArrayToHexString(pass1);
	System.out.println("Encrypted : "+pass2);
	login loginref=new login();
	check=loginref.verify(user1,pass2);
	
	String pid="";
	String name="";
	if(check>=1 && check<=3 )
	{
		pid=loginref.getPiDbyEmail(user1);
		name=loginref.getnamebyEmail(user1);
	}
	if(check==1)
	{
		session.setAttribute("pid",pid);
		session.setAttribute("name",name);
%>
	
	<jsp:include page="LoanUser.jsp"><jsp:param name="pid" value="<%=pid %>"/></jsp:include>
<% }
else if(check==2)
{session.setAttribute("pid",pid);
session.setAttribute("name",name);
%>
	
	<jsp:include page="Manager.jsp">
		<jsp:param name="pid" value="<%=pid %>"/>
	</jsp:include>
<% 
}
else if(check==3)
{session.setAttribute("pid",pid);
session.setAttribute("name",name);
%>
	
	<jsp:include page="Admin.jsp">
		<jsp:param name="pid" value="<%=pid %>"/>
	</jsp:include>
<% 
}
else if(check==4)
{
%>

<jsp:forward page="index.jsp">
	<jsp:param name="pVis" value="visible"/>
</jsp:forward>
 <script language="javascript">
 document.getElementById('p').style.visibility = 'visible';
 </script> 
<!-- <script language="javascript">

alert(" password wrong" ) ;
</script> --> 
 

	<% 
}
else if(check==5)
{%>
 
<jsp:forward page="index.jsp">
	<jsp:param name="uVis" value="visible"/>
</jsp:forward>
<script language="javascript">
	
	document.getElementById('u').style.visibility = 'visible';

 </script> 
  <!-- <script language="javascript">

alert("username wrong" ) ;
</script>  -->
	<% 
}%>

</body>
</html>