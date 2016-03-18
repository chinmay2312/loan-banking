<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation.jsp"></jsp:include>
	<section id=imh >
<% 
Connection conn=(Connection)session.getAttribute("conn");
Statement statement=(Statement)session.getAttribute("statement");
 //Class.forName("oracle.jdbc.driver.OracleDriver");
//Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "loangroup3", "Newuser123");
 PreparedStatement pst=null;
 String x=request.getParameter("size");
int num = Integer.parseInt(x.trim()); 
for(int i=1;i<num;i++)
{
	String procFee=request.getParameter("msgs"+i);
	int num1 = Integer.parseInt(procFee);
	System.out.println(num1);
	String LowyerFee=request.getParameter("msg"+i);
	int num2 = Integer.parseInt(LowyerFee);
	String ide = request.getParameter("id"+i);
	String qry = "update charges set procfee="+num1+" ,lawyercharge="+num2+" where loantype='"+ide+"'";
	System.out.println(qry);
	pst  = conn.prepareStatement(qry);
	pst.executeUpdate();


}%>
<h1>Charges has been Updated</h1>
<%conn.close();
statement.close();
pst.close();

%>
 </section>
      <jsp:include page="sectiona.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>