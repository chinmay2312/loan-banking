<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ page import="java.sql.*"%>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<%@ page import="javax.servlet.RequestDispatcher"%>
<%@ page import="java.lang.Integer.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Decide to Apply</title>
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="block.jsp"></jsp:include>
	
	<jsp:include page="homenavigation.jsp"></jsp:include>

		<%@page import="java.sql.Connection"%>
		<%@page import=" java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.SQLException"%>
		<%@page import=" java.sql.Statement"%>
<jsp:forward page="undConstr.html"></jsp:forward>
    <%  
    try
    {
    
    String loanType = request.getParameter("nam");
    String sendToNextPage="";
    String extra1 = "";
    String extra2 = "";
    if(loanType.equalsIgnoreCase("car"))
	{
		sendToNextPage = request.getParameter("model");
	}
	if(loanType.equalsIgnoreCase("home"))
	{
		sendToNextPage = request.getParameter("category");
		extra1 = request.getParameter("constructioncost");
		extra2 = request.getParameter("cost");
	}
    
    int j=0;
    int k=0;
    int retire1=0;
    String ths=request.getParameter("income");
    	if(ths!=null)
    	   	 j=Integer.parseInt(ths);

/*     	String str3=request.getParameter("monthlyincome");
    	if(str3!="")
    		
    	 j=Integer.parseInt(str3);

    	String str7=request.getParameter("income");
    	if(str7!="")
    	 j=Integer.parseInt(str7);
    	 */
    
    	
   	String str4=request.getParameter("emiexists");
    	if(str4!=null)
    		
    		 k=Integer.parseInt(str4);
    
    	int max=(j-k)*60;
/*        out.println(i);
        out.println(j);
        out.println(k);
        out.println(max);
*/
		//String age=request.getParameter("age");
		String retire=request.getParameter("retireage");
		
		//int age1=Integer.parseInt(age);
		if (retire!=null)
		{
		 retire1=Integer.parseInt(retire);
		}
		int tenure=5;//(retire1-age1)*12;
	/*	 out.println(age1);
		 out.println(retire1);
		 out.println(tenure);*/
     			%>
<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Loan Amount</font>
<!-- <form oninput="x.value=parseInt(loanamt.value)"> --> Min. Amt
<%-- <input type="range" id="loanamt" value="50" min="0" max=<%=max%> >Max. Amt


=<output name="x" for="loanamt"></output>
<!-- </form> -->
<font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tenure</font>

<!-- <form oninput="x.value=parseInt(yrs.value)"> --> Min. months
<input type="range" id="yrs"  value="50" min="1" max=<%=tenure  %> >Max. months
=<output name="x" for="yrs"></output>
<!-- </form> --> --%>
 Amt : <input type="number" id="loanamt" name="loanAmt" value="50">
<br><br>
 Months: <input type="number" id="yrs" name="loanAmt" value="36">

	<% 
       
       		Class.forName("oracle.jdbc.driver.OracleDriver");
       		
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "loangroup3", "Newuser123");
            ResultSet resultset=null;
            ResultSet resultset1=null;
			int fees=0;
            Statement statement = conn.createStatement() ;
            String str=request.getParameter("nam");
            String str2=request.getParameter("custtype");
            if(str.equals("car"))
            	{
            				resultset1=statement.executeQuery("select procfee,lawyercharge from Charges where loantype='CAR'");
            			      while(resultset1.next()) 
            			        {
            			           fees= resultset1.getInt(1)+resultset1.getInt(2);
            			        }		
   							if(str2.equals("regular"))
                    		{
                                 resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='MALE'") ;
                    		}
                    		if(str2.equals("senior"))
                    		{
                                 resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='SENIOR CITIZEN'") ;
                    		}
                    		if(str2.equals("nri"))
                    		{
                                 resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='NRI'") ;
                    		}
                    		if(str2.equals("woman"))
                    		{
                                 resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='WOMEN'") ;
                    		}
            	}
            else if(str.equals("home"))
        	{
				resultset1=statement.executeQuery("select procfee,lawyercharge from Charges where loantype='HOME'");
			      while(resultset1.next()) 
			        {
			           fees= resultset1.getInt(1)+resultset1.getInt(2);
			        }
							if(str2.equals("regular"))
                		{
                             resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='MALE'") ;
                		}
                		if(str2.equals("senior"))
                		{
                             resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='SENIOR CITIZEN'") ;
                		}
                		if(str2.equals("nri"))
                		{
                             resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='NRI'") ;
                		}
                		if(str2.equals("woman"))
                		{
                             resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='WOMEN'") ;
                		}
        	}
            else  if(str.equals("personal"))
        	{
				resultset1=statement.executeQuery("select procfee,lawyercharge from Charges where loantype='PERSONAL'");
			      while(resultset1.next()) 
			        {
			           fees= resultset1.getInt(1)+resultset1.getInt(2);
			        }
							if(str2.equals("regular"))
                		{
                             resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='MALE'") ;
                		}
                		if(str2.equals("senior"))
                		{
                             resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='SENIOR CITIZEN'") ;
                		}
                		if(str2.equals("nri"))
                		{
                             resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='NRI'") ;
                		}
                		if(str2.equals("woman"))
                		{
                             resultset = statement.executeQuery("select IRTYPE,RATE from Interest where loantype='CAR' and custtype='WOMEN'") ;
                		}
        	}

  

        %>
 
 
        
	<form action="http://172.17.111.120:8085/MyLoanProj/Complete.jsp" name="formname" id="formname" onsubmit="return(validate());">

		<table border="5" width="80%">
			<tr bgcolor="grey" height="50">
				<th colspan="5">TYPE</th>
				<th colspan="5">EMI</th>
				<th colspan="5">Interest Rate</th>
				<th colspan="5">Fees</th>
			</tr>
			<% 
  				int rateCounter=1;
			 	while(resultset.next())
			 	{ 
			 %>

			<tr align="center" height="150">
				<td colspan="5" ><%= resultset.getString(1) %>%</td> 
				<td colspan="5" id="emi<%=rateCounter%>"> Rs.28000</td>
				<td colspan="5" id="rateValue<%=rateCounter%>"><%= resultset.getDouble(2) %>%</td>
				<td colspan="5"><%=fees %></td> 
				<td colspan="5"><input type="submit" value="Apply" /></td>
			</tr> 
		
			<% 
           			
                rateCounter++;
            } %>

			<tr>
				<td><input type="hidden" value="<%=loanType %>" name="loanType"></td>
				<td><input type="hidden" value="<%=ths %>" name="ths"></td>
				<td><input type="hidden" value="<%=sendToNextPage %>" name="thisPage"></td>
			</tr>
			<tr>
				<td><input type="hidden" value="<%=extra1 %>" name="constructioncost"></td>
				<td><input type="hidden" value="<%=extra2 %>" name="cost"></td>
			</tr>
			
	
		</table>	
		
	</form>
	<%
	}
	catch(Exception e)
	{
		%>

		<jsp:forward page="undConstr.html"></jsp:forward>
		<%
	}%>
	
		<jsp:include page="footer.jsp"></jsp:include>
</div>
	
</body>
</html>