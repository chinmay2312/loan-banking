<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hn1</title>
<link rel="stylesheet" href="Layout.css">
</head>
<body>
<section id="hh">
<form  method="post" action="http://172.17.111.120:8087/MyLoanProj/logincheck.jsp">
<h4 align="center">LOGIN</h4>
Login ID :<input size="25" type="email" name="username" />
<br>
<input type="hidden" id="u"  value="Incorrect Email"/>

Password :<input size="25" type="password" name="password"/>
<br>
<input type="hidden" id="p"  value="Incorrect password"/>


<button type="submit" value="Submit">Log-in</button>
<!-- <form method="post" action="http://localhost:8087/MyLoanProj/ForgotCred.jsp"> -->
<!-- <a href="http://localhost:8087/MyLoanProj/ForgotCred.jsp"><button type="submit" value="Submit">Forgot Password</button></a> -->
<!-- </form> -->
<!-- <input type="submit" value="Submit"/> -->
</form> 
<a href="http://172.17.111.120:8087/MyLoanProj/ForgotCred.jsp"><button type="submit" value="Submit">Forgot Password</button></a>

<form class="hm" action="http://172.17.111.120:8087/MyLoanProj/Checkstatus.jsp">
<h4 align="center">TRACK STATUS</h4>
<br>
<div align="center">
<button type="submit" value="Track Status">Track Status</button></div>

</form>

</section>
</body>
</html>