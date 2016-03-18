<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<%@ page import = "javax.servlet.RequestDispatcher" %>
 <%@ page import="java.lang.Integer.*" %>

<HTML>
    <HEAD>
        <TITLE>The Interest Database Table </TITLE>
        <link rel="stylesheet" href="Layout.css">
    </HEAD>

    <BODY>
    <div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation1.jsp"></jsp:include>
	<section id=imh >
        <H1>The Interest Database Table </H1>

        <% 
       
       				 Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");

            Statement statement = conn.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from Interest") ;
        %>
        <TABLE BORDER="1">
            <TR>
                <TH>RATEID</TH>
                <TH>CUSTTYPE</TH>
                <TH>LOANTYPE</TH>
                <TH>IRTYPE</TH>
                <TH>RATE</TH>
            </TR>
            <% 
            
            
            while(resultset.next()){ %>
            <TR>
                <TD> <%=resultset.getString(1) %></td>
                <TD> <%= resultset.getString(2) %></TD>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(4) %></TD>
               <TD>  <%=resultset.getDouble(5) %></TD>
            
            
             <% 
                
            } %>
          
            </TR>
        </TABLE>
         
      <%
			
     
      %>
      </form>
      </section>
	<jsp:include page="sectionm.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
    </BODY>
</HTML>