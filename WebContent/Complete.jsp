<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Person Details</title>
<script type="text/javascript">

	function FillBilling(f) {
		if (f.billingtoo.checked == true)
		{
			f.permanentadd1.value = f.currentadd1.value;
			f.permanentadd2.value = f.currentadd2.value;
			f.permanentcity.value = f.currentcity.value;
			f.permanentpincode.value = f.currentpincode.value;
			f.permanentstate.value = f.currentstate.value;

		}
	}

	function validate() 
	{
		if (document.formname.currentstate.value == "-1")
		{
			alert("Please provide your state!");
			return false;
		}
			
		return (true);
	}
	
</script>

</head>


<body bgcolor=white>
<div id="wrapper">
	<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="block.jsp"></jsp:include>

		<%@page import="java.sql.Connection"%>
		<%@page import=" java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.SQLException"%>
		<%@page import=" java.sql.Statement"%>
		<%@page import="com.lnt.project.loan.loanMaster.*"%>
		<%@page import="com.lnt.project.loan.carLoan.*"%>
		<%@page import="com.lnt.project.loan.homeLoan.*"%>


<%
try{
	UserDaoLoanMaster udlm = LoanMasterDaoImpl.getInstance();
	int reqId = udlm.getMaxReqid();
	
	String retAge = request.getParameter("retireage");
	int retireAge = Integer.parseInt(retAge);
	
	String loanType = request.getParameter("loanType");
	
	String loanAmount = request.getParameter("loanAmt");
	double loanAmt = Double.valueOf(loanAmount);
	
	String yrs = request.getParameter("tenure");
	int tenure = Integer.parseInt(yrs);
	
	String ths = request.getParameter("ths");
	double netSal = Double.valueOf(ths);
	
	LoanMaster l = new LoanMaster(String.valueOf(reqId), "", retireAge, loanType, loanAmt, tenure, 5000, 0, "IN PROCESS", netSal, "23-DEC-1993", "sys");
	udlm.addLoanMaster(l);
	
	if(loanType.equalsIgnoreCase("car"))
	{
		String model = request.getParameter("thisPage");
		UserDaoCarLoan udcl = CarLoanDaoImpl.getInstance();
		CarLoan cl = new CarLoan(String.valueOf(reqId), model, "NEW CAR", "--");
		udcl.applyCarLoan(cl);
	}
	else if(loanType.equalsIgnoreCase("home"))
	{
		String propCategory = request.getParameter("thisPage");
		String constructionCost = request.getParameter("constructioncost");
		String flatCost = request.getParameter("cost");

		UserDaoHomeLoan udhl = HomeLoanDaoImpl.getInstance();
		HomeLoan hl = new HomeLoan(String.valueOf(reqId), "", propCategory, Double.valueOf(constructionCost), Double.valueOf(flatCost));
		udhl.applyHomeLoan(hl);
	}

%>

	<form action="http://172.17.111.120:8087/MyLoanProj/reqid.jsp" name="formname" id="formname">

		<table>
			<tr>
				<td>Personal Details</td>
			</tr>
			<tr>
				<td>--------------------------------------------</td>
			</tr>
			<tr>
				<td>First Name</td>
				<td><input type="text" name="firstname" placeholder="Firstname"
					required maxlength="20"  ></td>
				<td>Middle Name</td>
				<td><input type="text" name="Middle Name"
					placeholder="Middle Name" maxlength="20"></td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td><input type="text" name="lastname" placeholder="LastName"
					required maxlength="20"></td>
				<td>Gender</td>
				<td><input type="radio" name="Gender" value="male" checked>
					Male <br> <input type="radio" name="Gender" value="female">
					Female</td>
			</tr>
			<tr>
				<td>Father's Name</td>
				<td><input type="text" name="father's Name"
					placeholder="Father's Name" required maxlength="20"></td>
				<td>Martial Status</td>
				<td><input type="radio" name="Martial Status" value="Single"
					checked> Single <br> <input type="radio"
					name="Martial Status" value="Married"> Married</td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="number" name="Mobile" placeholder="Mobile"
					required  pattern="([0-9]|[0-9]|[0-9])" id="Field"/></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td colspan="4">Current Address Details</td>
			</tr>
			<tr>
				<td>--------------------------------------------</td>
			</tr>
			<tr>
				<td>Address1</td>
				<td><input type="text" name="currentadd1"
					placeholder="Address1" required maxlength="60"></td>
				<td>Address2</td>
				<td><input type="text" name="currentadd2"
					placeholder="Address2"></td>
			</tr>
			<tr>
				<td>City</td>
				<td><input type="text" name="currentcity" placeholder="City"
					required maxlength="20"></td>
				<td>Pincode</td>
				<td><input type="number" name="currentpincode"
					placeholder="Pincode" required></td>
			</tr>
			<tr>
				<td>State</td>
				<td><select name="currentstate">
						<option value="-1" selected>- State -</option>
						<option value="Andaman and nicobar islands">Andaman and
							nicobar islands</option>
						<option value="Andra Pradesh">Andra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chattisgarh">Chattisgarh</option>
						<option value="Dadar and Nagar Haveli">Dadar and Nagar
							Haveli</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa"</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu Kashmir">Jammu Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharsahtra">Maharsahtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagalad">Nagalad</option>
						<option value="Orissa">Orissa</option>
						<option value="Puducherry">Puducherry</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamilnadu">Tamilnadu</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Utharkhand">Utharkhand</option>
						<option value="West Bengal">West Bengal</option>
				</select></td>
				<td colspan="2"></td>
			</tr>
			<tr>
				<td>When did you move to current address</td>

				<td><input type="date"></td>
				<!-- <td><select name="YYYY ">
						<option value="-1" selected>-YYYY -</option>
						<option value="2015">2015</option>
						<option value="2014">2014</option>
						<option value="2013">2013</option>
						<option value="2012">2012</option>
						<option value="2011">2011</option>
						<option value="Before 2011">Before 2011
				</select> <select name="MMM">
						<option value="-1">- Month -</option>
						<option value="January">January</option>
						<option value="Febuary">Febuary</option>
						<option value="March">March</option>
						<option value="April">April</option>
						<option value="May">May</option>
						<option value="June">June</option>
						<option value="July">July</option>
						<option value="August">August</option>
						<option value="September">September</option>
						<option value="October">October</option>
						<option value="November">November</option>
						<option value="December">December</option>
				</select></td>
				<td colspan="2"></td> -->
			</tr>
			<tr>
				<td>Home Telephone</td>
				<td><input type="number" name="Home Telephone"
					placeholder="Home Telephone" required></td>
				<td>Residence type</td>
				<td><input type="text" name="Residence Type"
					placeholder="Residence Type" required maxlength="15"></td>
			</tr>
			<tr>
				<td>Highest Educational Qualification</td>
				<td><input type="text" name="Highest Educational Qualification"
					placeholder="Highest Educational Qualification" required></td>
				<td colspan="2"></td>
			</tr>



			<tr>
				<td colspan="4">Permanent Address Details :- <input
					type="checkbox" name="billingtoo" onclick="FillBilling(this.form)">
					<em>Copy from Current Address </em>
					<P></td>

			</tr>
			<tr>
				<td>--------------------------------------------</td>
			</tr>
			<tr>
				<td>Address1</td>
				<td><input type="text" name="permanentadd1"
					placeholder="Address1" required maxlength="60"></td>
				<td>Address2</td>
				<td><input type="text" name="permanentadd2"
					placeholder="Address2"></td>
			</tr>
			<tr>
				<td>City</td>
				<td><input type="text" name="permanentcity" placeholder="City"
					required maxlength="20"></td>
				<td>Pincode</td>
				<td><input type="number" name="permanentpincode"
					placeholder="Pincode" required></td>
			</tr>
			<tr>
				<td>State</td>
				<td><select name="permanentstate">
						<option value="-1" selected>- State -</option>
						<option value="Andaman and nicobar islands">Andaman and
							nicobar islands</option>
						<option value="Andra Pradesh">Andra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chattisgarh">Chattisgarh</option>
						<option value="Dadar and Nagar Haveli">Dadar and Nagar
							Haveli</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa"</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu Kashmir">Jammu Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharsahtra">Maharsahtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagalad">Nagalad</option>
						<option value="Orissa">Orissa</option>
						<option value="Puducherry">Puducherry</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamilnadu">Tamilnadu</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Utharkhand">Utharkhand</option>
						<option value="West Bengal">West Bengal</option>
				</select></td>
				<td>Employer</td>
				<td><input type="text" name="Employer" placeholder="Employer"
					required></td>
			</tr>
			<tr>
				<td>Designation</td>
				<td><input type="text" name="Designation"
					placeholder="Designation" required maxlength="25"></td>
				<td>Email</td>
				<td><input type="email" name="Email" placeholder="Email"
					required maxlength="30"></td>
			</tr>
			<tr>
				<td>Office Telephone</td>
				<td><input type="number" name="Office Telephone"
					placeholder="Office Telephone" required></td>
				<td>Company type</td>
				<td><select name="Type of Company">
						<option value="-1" selected>- Type of Company -</option>
						<option value="MNC">MNC</option>
						<option value="Public Limited">Public Limited</option>
						<option value="Private Limited">Private Limited</option>
						<option value="Central Government">Central Government</option>
						<option value="State Government">State Government</option>
						<option value="Partnership">Partnership</option>
						<option value="Proprietorship">Proprietorship</option>
						<option value="Other">Other</option>
				</select></td>
			</tr>
			<tr>
				<td>PAN</td>
				<td><input type="text" name="PAN" placeholder="PAN" required
					maxlength="10"></td>
			<tr>
				<td colspan="4">Office Address :-</td>
			</tr>



			<tr>
				<td>Address1</td>
				<td><input type="text" name="Address1" placeholder="Address1"
					required maxlength="60"></td>
				<td>Address2</td>
				<td><input type="text" name="Address2" placeholder="Address2">
				</td>
			</tr>
			<tr>
				<td>City</td>
				<td><input type="text" name="City" placeholder="City" required
					maxlength="20"></td>
				<td>Pincode</td>
				<td><input type="number" name="Pincode" placeholder="Pincode"
					required></td>
			</tr>
			<tr>
				<td>State</td>
				<td><select name="State">
						<option value="-1" selected>- State -</option>
						<option value="Andaman and nicobar islands">Andaman and
							nicobar islands</option>
						<option value="Andra Pradesh">Andra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chattisgarh">Chattisgarh</option>
						<option value="Dadar and Nagar Haveli">Dadar and Nagar
							Haveli</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa"</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Haryana">Haryana</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Jammu Kashmir">Jammu Kashmir</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Maharsahtra">Maharsahtra</option>
						<option value="Manipur">Manipur</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagalad">Nagalad</option>
						<option value="Orissa">Orissa</option>
						<option value="Puducherry">Puducherry</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Tamilnadu">Tamilnadu</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Utharkhand">Utharkhand</option>
						<option value="West Bengal">West Bengal</option>
				</select></td>

			</tr>
			<tr>
				<td colspan="4" align="center"><input type="submit"
					value="Submit Application"></td>
			</tr>

		</table>
	</form>
	
		<jsp:include page="footer.jsp"></jsp:include>
</div>
	<%
	}
	catch(Exception e)
	{
		%>

		<jsp:forward page="undConstr.html"></jsp:forward>
		<%
	}%>
</body>
</html>
