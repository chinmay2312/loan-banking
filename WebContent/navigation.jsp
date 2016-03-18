<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin nav</title>
<link rel="stylesheel" href="Layout.css">
<style type="text/css">
 ul{
        padding: 0;
        list-style: none;
        background: #f2f2f2;
    }
    ul li{
        display: inline-block;
        position: relative;
        line-height: 21px;
        text-align: left;
    }
    ul li a{
        display: block;
        padding: 8px 25px;
        color: #333;
        text-decoration: none;
    }
    ul li a:hover{
        color: #fff;
        background: #939393;
    }
 ul li ul.dropdown{
        min-width: 125px; /* Set width of the dropdown */
        background: #c0c0c0;
        display: none;
        position: absolute;
        z-index: 999;
        left: 0;
    }
  ul li:hover ul.dropdown{
        display: block;	/* Display the dropdown */
    }
    ul li ul.dropdown li{
        display: block;
    }
    </style>
</head>

<body><% String name=(String)session.getAttribute("name");%>
<nav id="navigation">

		<ul>
			<li><a href="Admin.jsp">Home</a></li>
			 <li><a href="#">View &#9662;</a>
            	<ul class="dropdown">
               		 <li><a href="PersonDet.jsp">Person</a></li>
                	<li><a href="loandetails.jsp">Loan</a></li>
            	</ul>
     		 </li>
     		 <li><a href="#">Update &#9662;</a>
            	<ul class="dropdown">
               		 <li><a href="ChargesTable.jsp">Charges</a></li>
                	<li><a href="UpdateInterestRate.jsp">Interest</a></li>
            	</ul>
     		 </li>
			<li><a href="Profitloss.jsp">Profit/Loss</a></li>
			<li style="color:red;float:right" id="name">Hello,<%=name %></li>
		</ul>
	</nav>
</body>
</html>