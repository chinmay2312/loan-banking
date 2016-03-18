<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	<form method="post" action="http://172.17.111.120:8087/MyLoanProj/chkStatus.jsp">
	Enter your RequestId:<input type="text" name="reqid">
	<input type="submit">
	</form>
	<jsp:include page="footer.jsp"></jsp:include>
</div>
	
</body>
</html>