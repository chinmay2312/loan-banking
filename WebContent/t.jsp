<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@ page import="java.sql.*" %>
<%@ page import="com.lnt.project.loan.Transaction.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigationapplyuser.jsp"></jsp:include>
	
	<section id=imh >
<%
String str = request.getParameter("cn"); 
System.out.println("sssss"+str);
double x = Double.parseDouble(str);
String reqid = request.getParameter("reqid"); 
String str2= request.getParameter("pass");
int y= Integer.parseInt(str2);
String st1=request.getParameter("with");
Double z = Double.parseDouble(st1);
String st3=request.getParameter("cvv");
int a = Integer.parseInt(st3);					

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection("jdbc:Oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");
Statement st=conn.createStatement();
Statement st2=conn.createStatement();
Statement st4=conn.createStatement();
ResultSet rs;	
ResultSet rs2,rs3;
rs =	st.executeQuery("select * from debit where cardno="+x);

if(rs.next())
{
	if(y==(rs.getInt(2))&&a==rs.getInt(3))
	{
		if(z<=rs.getInt(4))
		{
			DaoTransaction d=new TransactionDaoImpl();
			rs2= st2.executeQuery("select max(tid) from transaction");
			if(rs2.next())
			{
				String ss=rs2.getString(1);
				String ss1=ss.substring(1,5);
				System.out.println("ss1" + ss1);
				int xx=Integer.parseInt(ss1);
				xx=xx+1;
				System.out.println("xx="+xx);
				String f = String.valueOf(xx);
				int l = f.length();
				String temp="";
				for(int i=0; i<4-l;i++)
				{
					temp += "0";
					System.out.println("temp "+temp);
				}
				String sss=temp+f;
				System.out.println("sss"+sss);
				String ss2="T";
				ss2=ss2+sss;
				System.out.println(ss2);
				Transaction t=d.getLastTransaction(reqid);
				System.out.println("trn id"+ss2);
				double remamt=t.getRemainingAmount();
				remamt=remamt-z;
				double d11=0;
				String dat="12/02/2015";
				int reminstall=t.getRemainingInstallment();
				reminstall=reminstall-1;
				Transaction t1=new Transaction(ss2,reqid,z,remamt,d11,dat,reminstall);
				d.addTransaction(t1);
			}
			PreparedStatement pst=conn.prepareStatement("update debit set balance= "+(rs.getInt(4)-z)+" where cardno ="+ x);
			pst.executeUpdate();
			
			%><h1>Transaction Sucessful.....</h1>
			<h1>Remaining Balance in Your Account is :<%=(rs.getInt(4)-z)%></h1>
		<%}
		else
		{%>
				<h1>You Dont Have Sufficient Balance</h1>
		<%}
	}
	else
	{
		%><h1>Authentication failed.....</h1><%
	}
				
}
else 
{%>
	<h1>Card Invalid </h1>
<%}%>
	</section>
	<jsp:include page="section1.jsp"></jsp:include>
	
	<jsp:include page="footer.jsp"></jsp:include>
	</div>	
</body>
</html>