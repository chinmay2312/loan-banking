<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>

    <HEAD>
        <TITLE>The Charges Database Table </TITLE>
        <link rel="stylesheet" href="Layout.css">
    </HEAD>
<%@ page import="java.sql.*" %>
<% Class.forName("sun.jdbc.odbc.JdbcOdbcDriver"); %>
<%@ page import = "javax.servlet.RequestDispatcher" %>
 <%@ page import="java.lang.Integer.*" %>



    <BODY>
    <div id="wrapper">
    <jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="navigation.jsp"></jsp:include>
	<section id=imh >
        <H1>The Charges Database Table </H1>

        <% 
       
       				 Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@172.17.111.147:1521:XE", "loangroup3", "Newuser123");

            Statement statement = conn.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from Charges") ;
        %>
		<form action="UpdateCharges.jsp" method ="post">
        <TABLE BORDER="1">
            <TR>
                <TH>LoanType</TH>
                <TH>ProcFee</TH>
                <TH>LowyerCharges</TH>
              
            </TR>
            <% 
            int i=1;
             while(resultset.next()){ %>
            <TR>
                <TD> <input name="id<%=i %>" value="<%=resultset.getString(1) %>" readonly></TD>
            <TD> <input type="number" name="msgs<%=i %>" value="<%=resultset.getInt(2) %>"></TD>
            <TD> <input type="text" name="msg<%=i %>" value="<%=resultset.getInt(3) %>"></TD>
             <% i++;
                
            } %>
          <td> <input type="hidden" name="size" value="<%=i %>"></td>
            </TR>
        </TABLE>
         <input type="submit" name="submit" value="update">
      
      </form>
      <%session.setAttribute("conn", conn) ;
      session.setAttribute("statement", statement);
      
      %>
      </section>
      <jsp:include page="sectiona.jsp"></jsp:include>
	<jsp:include page="footer.jsp"></jsp:include>
	</div>
    </BODY>
    
</HTML>