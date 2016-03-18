<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<%@page import="com.lnt.project.loan.person.*"%>
<%@page import="com.lnt.project.loan.person.*"%>
<body>
<% 
%>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	<section id=imh >
	<%
	String pass = request.getParameter("Pass");
	System.out.println("signup1"+pass);
	String reqid = request.getParameter("reqid");
	System.out.println("signup1"+reqid);
	String sque = request.getParameter("sques");
	System.out.println("signup1"+sque);
	String sans = request.getParameter("sans");
	System.out.println("signup1"+sans);
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:Oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");
	Statement st=conn.createStatement();
	Statement st1=conn.createStatement();
	ResultSet rs;	
	rs=st.executeQuery("select pid from loanmaster where reqid='"+reqid+"'");
	if(rs.next())
	{
		String pid=rs.getString(1);
		System.out.println("signup1"+pid);
		DaoPerson dp = PersonDaoImpl.getInstance();
		dp.updatePersonPassword(pid, pass);
		PreparedStatement psw=conn.prepareStatement("update person set securityquestion=?,securityanswer=? where pid=?");
		psw.setString(1,sque);
		psw.setString(2,sans);
		psw.setString(3,pid);
		psw.executeUpdate();
		%><h3>Successfully SignUp..</h3><%
	}
%>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>