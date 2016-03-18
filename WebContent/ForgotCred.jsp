<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Forgot Credentials</title>
</head>
<body>

<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="homenavigation.jsp"></jsp:include>
	
	Forgot Credentials? No problem...
	
	<table>
		<form action="http://172.17.111.120:8087/MyLoanProj/forgotCheck.jsp">
			<!-- <tr>
				<td><input id="radioEmail" type="radio" name="forgot" value="Email"  onclick="check()" checked>Email</td>
				<td><input id="radioMobile" type="radio" name="forgot" value="Mobile" onclick="check()">Mobile</td>
			</tr> -->
			<!-- <tbody id="email" style="display: block">
			<tr>
				<td>Enter email: </td>
				<td><input type="email" name="inputEmail"/></td>
			</tr>
			</tbody> -->
			
			<tbody id="mobile" style="display: block">
			<tr>
				<td>Enter mobile number: </td>
				<td><input type="number" name="inputMobile" minlength="10" maxlength="10" pattern="[0-9]*"/></td>
			</tr>
			</tbody>
			<tr>
			<td><input type="submit" value="Submit" /></td>
			<td></td>
			</tr>
		</form>
	</table>
	
	<!-- <script>
		function check()
		{
			if(document.getElementById('radioEmail').checked)
			{
				document.getElementById('email').style.display = "block";
				document.getElementById('email').value = "emailCheck";
				document.getElementById('mobile').style.display = "none";
				document.getElementById('mobile').value = "Mobile";
			}
			if(document.getElementById('radioMobile').checked)
			{
				document.getElementById('email').style.display = "none";
				document.getElementById('mobile').style.display = "block";
				document.getElementById('mobile').value = "mobileCheck";
				document.getElementById('email').value = "Email";
			}
		}
	</script> -->
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</div>

</body>
</html>