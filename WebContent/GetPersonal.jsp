<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<HTML>
<head>
<title>Form Validation</title>
<script type="text/javascript">
	/* function validate() {

		if (document.myForm.firstname.value == "") {
			alert("Please provide your name!");
			document.myForm.firstname.focus();
			return false;
		}

		
		if (document.myForm.DOBDay.value == "-1") {
			alert("Please provide your birth date!");
			return false;
		}

		if (document.myForm.DOBMonth.value == "-1") {
			alert("Please provide your birth month!");
			return false;
		}

		if (document.myForm.DOBYear.value == "-1") {
			alert("Please provide your birth year!");
			return false;
		}

		if (document.myForm.employmenttype.value == "-1") {
			alert("Please select employment type!");
			return false;
		}

		if (document.myForm.companyname.value == "") {
			alert("Please provide your companyname!");
			document.myForm.companyname.focus();
			return false;
		}

		if (document.myForm.experience.value == "-1") {
			alert("Please provide your work experience!");
			return false;
		}

		if (document.myForm.takehomesalary.value == "") {
			alert("Please provide your salary!");
			document.myForm.takehomesalary.focus();
			return false;
		}

		if (document.myForm.month.value == "-1") {
			alert("Please provide start month!");
			return false;
		}

		if (document.myForm.year.value == "-1") {
			alert("Please provide start year!");
			return false;
		}

		if (document.myForm.profession.value == "-1") {
			alert("Please provide profession!");
			return false;
		}
		if (document.myForm.industrytype.value == "-1") {
			alert("Please provide industry type!");
			return false;
		}

		if (document.myForm.monthlyincome.value == "") {
			alert("Please provide your income!");
			document.myForm.monthlyincome.focus();
			return false;
		}
		if (document.myForm.retireage.value == "-1") {
			alert("Please select your retirement age!");
			return false;
		}

		var letters = /^[A-Za-z]+$/;  
		if(firstname.value.match(letters))  
		{  
		return true;  
		}  
		else  
		{  
		alert('first name name must have alphabet characters only');  
		firstname.focus();  
		return false;  
		}  
	
		return (true);

	} */
	
	<!-- DOB validation -->
	function validDate2(date,theInput) {
	    var date = document.getElementById("Date").value;

	    todayDate = getTodaysDate();
	    if (date > today)
	    	{
	    	alert("This Date cannot be Selected");
	    theInput.value = todayDate;
	    }
	}

		function getTodaysDate(){
	    date = new Date();
	    day = date.getDate();
	    month = date.getMonth() + 1;
	    year = date.getFullYear();

	    if (month < 10) month = "0" + month;
	    if (day < 10) day = "0" + day;

	    today = year + "-" + month + "-" + day; 
	   
		return today;
	}
	 
		<!-- start date of current business -->
		
		function validDate1(date,theInput) {
	    var date = document.getElementById("startdate").value;

	    todayDate = getTodaysDate();
	    if (date > todayDate)
	    	{
	    	alert("This Date cannot be Selected");
	    theInput.value = todayDate;
	    }
	}

		function getTodaysDate(){
	    date = new Date();
	    day = date.getDate();
	    month = date.getMonth() + 1;
	    year = date.getFullYear();

	    if (month < 10) month = "0" + month;
	    if (day < 10) day = "0" + day;

	    today = year + "-" + month + "-" + day; 

	    return today;
	}
		

		<!-- start date of current profession -->
		
		function validDate(date,theInput) {
	    var date = document.getElementById("startdate1").value;

	    todayDate = getTodaysDate();
	    if (date > todayDate)
	    	{
	    	alert("This Date cannot be Selected");
	    theInput.value = todayDate;
	    }
	}

		function getTodaysDate(){
	    date = new Date();
	    day = date.getDate();
	    month = date.getMonth() + 1;
	    year = date.getFullYear();

	    if (month < 10) month = "0" + month;
	    if (day < 10) day = "0" + day;

	    today = year + "-" + month + "-" + day; 

	    return today;
	}
		
		
		function calculateage()
		{
	 		var dob=document.getElementById("Date").value;
	 		var year = dob.substring(0, 4);

	 		var today = new Date();
	 		var yyyy = today.getFullYear();
	 		age=yyyy-year;
	 		document.getElementById("age").value = age;
		}
		 

	function getType(val) {
		if (val == "salaried") 
		{

			document.getElementById("business").style.display = 'none';
		document.getElementById("startdate").required = false;
			document.getElementById("industrytype").required = false;			
			document.getElementById("netincome").required = false;

			
			document.getElementById("professional").style.display = 'none';
		document.getElementById("startdate1").required = false;
			document.getElementById("profession").required = false;
			document.getElementById("income").required = false;
			
			document.getElementById("salaried").style.display = 'block';
			document.getElementById("monthlyincome").required = true;
			document.getElementById("companyname").required = true;
		//	document.getElementById("retireage").required = true;
			document.getElementById("experience").required = true;
        	
			
		}
		if (val == "business") 
		{
			document.getElementById("salaried").style.display = 'none';
			document.getElementById("monthlyincome").required = false;
			document.getElementById("companyname").required = false;
		//	document.getElementById("retireage").required = false;
			document.getElementById("experience").required = false;
			
			document.getElementById("professional").style.display = 'none';		
			document.getElementById("startdate1").required = false;
			document.getElementById("profession").required = false;
			document.getElementById("income").required = false;

        	
			document.getElementById("business").style.display = 'block';
		document.getElementById("startdate").required = true;
		document.getElementById("industrytype").required = true;			
			document.getElementById("netincome").required = true;

			

		}
		if (val == "professional") 
		{
			document.getElementById("salaried").style.display = 'none';
			document.getElementById("monthlyincome").required = false;
			document.getElementById("companyname").required = false;
//			document.getElementById("retireage").required = false;
			document.getElementById("experience").required = false;

			
			document.getElementById("business").style.display = 'none';
			document.getElementById("startdate").required = false;
			document.getElementById("industrytype").required = false;			
			document.getElementById("netincome").required = false;

		
			document.getElementById("professional").style.display = 'block';
			document.getElementById("startdate1").required = true;
			document.getElementById("profession").required = true;
			document.getElementById("income").required = true;
			
			
						
		}
	}

/*
	function validate() {
		
		if (document.myForm.custtype.value == "-1") {
			alert("Please provide applying as type!");
			return false;
		}
		if (document.myForm.employmenttype.value == "-1") {
			alert("Please select employment type!");
			return false;
		}
		if (document.myForm.experience.value == "-1") {
			alert("Please provide your work experience!");
			return false;
		}

		if (document.myForm.profession.value == "-1") {
			alert("Please provide profession!");
			return false;
		}
		if (document.myForm.industrytype.value == "-1") {
			alert("Please provide industry type!");
			return false;
		}
		if (document.myForm.retireage.value == "-1") {
			alert("Please select your retirement age!");
			return false;
		}
		return (true);
	}
	*/
//-->
</script>

</head>
<body bgcolor=white>

	<form action="http://localhost:8085/Form1/Decide.jsp" name="myForm"
		onsubmit="return(validate());">

		<table>
			<tr>
				<td>Personal Details</td>

			</tr>
			<tr>
				<td>--------------------------------------------</td>
			</tr>
			<tr>
				<td>First Name</td>
				<td>:</td>
				<td><input type="text" name="firstname" required maxlength="20" pattern="[a-zA-Z\s]*"></td>
			</tr>
			<tr>
				<td>Date Of Birth</td>
				<td>:</td>
							
				
				<td><input type="date" name="Date" id="Date" value="dob" onblur="calculateage()" oninput="validDate2(this.value,this)" required/></td>
				</tr>
				<tr>
				<td>Age</td>
				<td>:</td>
				<td><input type="number" name="age" id="age" required></td>
			</tr>
			<tr>
				<td>Applying as</td>
				<td>:</td>
				<td><select name="custtype" id="custtype" required>
						<option value="">------------Select----------------</option>
						<option value="regular">Regular</option>
						<option value="woman">Woman</option>					
						<option value="senior">Senior Citizen</option>
						<option value="nri">NRI</option>
				</select></td>
			</tr>
			
			
			<tr>
				<td>Type Of Employment</td>
				<td>:</td>
				<td><select required  name="empType" id="empType" 
					onchange="getType(value)" >
						<option value="">------------Select----------------</option>
						<option value="salaried">Salaried</option>
						<option value="business">Self Employee Business</option>
						<option value="professional">Self Employee Professional</option>
				</select></td>
			</tr>
			<tbody id="salaried" style="display: none">
			<tr>
				<td>Company Name</td>
				<td>:</td>
				<td><input id="companyname" type="text" name="companyname" required pattern="[a-zA-Z\s]*"></td>
			</tr>

			<tr>
				<td>Work Experience</td>
				<td>:</td>
				<td><select required name="experience" id="experience">
						<option value="">- Years -</option>
						
						<%
						for(int op =1; op<=30;op++) 
						{
							%><option value="<%=op %>"><%=op %></option>
				<%	}
						
						%>
		
				</select></td>
			</tr>
			<tr>
				<td>Monthly Take-Home Salary</td>
				<td>:</td>
				<td><input id="monthlyincome" type="number" name="monthlyincome"
					placeholder="Rs." required></td>

			</tr>
				
			</tbody>
			<tbody id="business" style="display: none">
			<tr>
				<td>Start Date Of Current Business</td>
				<td>:</td>
				<td><input type="date" id="startdate" oninput="validDate1(this.value,this)" required/></td>
						</tr>


			<tr>
				<td>Industry Type</td>
				<td>:</td>
				<td><select required name="industrytype" id="industrytype">
						<option value="">------Select-----</option>
						<option value="manufacturing">Manufacturing</option>
						<option value="engineering">Engineering</option>
						<option value="trading">Trading</option>
						<option value="services">Services</option>
				</select></td>
			</tr>
			<tr>
				<td>Net Monthly Take Income</td>
				<td>:</td>
				<td><input id="netincome" type="number" name="netincome" placeholder="Rs."
					required></td>
			</tr>
			</tbody>
			<tbody id="professional" style="display: none">
				<tr>
					<td>Start Date Of Current Business</td>
					<td>:</td>
					<td><input type="date" id="startdate1" oninput="validDate(this.value,this)" required/></td>
							</tr>
			<tr>
				<td>Profession</td>
				<td>:</td>
				<td><select required name="profession" id="profession" >
						<option value="">------Select-----</option>
						<option value="doctor">Doctor</option>
						<option value="engineer">Engineer</option>
						<option value="architect">Architecture</option>
						<option value="lawyer">Lawyer</option>
				</select></td>
			</tr>
			<tr>
				<td>Net Monthly Take Income</td>
				<td>:</td>
				<td><input id="income" type="number" name="income" placeholder="Rs."
					required></td>
			</tr>
			</tbody>


			<tr>
				<td>Current EMIs (monthly if any)</td>
				<td>:</td>
				<td><input type="number" name="emiexists" placeholder="Rs."></td>
		</tr>
		
			<tr>
				<td>Retirement Age</td>
				<td>:</td>
				<td><select required name="retireage" id="retireage">
						<option value="">------Select-----</option>
						<option value="50">50</option>
						<option value="51">51</option>
						<option value="52">52</option>
						<option value="53">53</option>
						<option value="54">54</option>
						<option value="55">55</option>
						<option value="56">56</option>
						<option value="57">57</option>
						<option value="58">58</option>
						<option value="59">59</option>
						<option value="60">60</option>
						<option value="61">61</option>
						<option value="62">62</option>
						<option value="63">63</option>
						<option value="64">64</option>
						<option value="65">65</option>
				</select></td>
			</tr>

		<tr>
			<td>	<input type="submit" value="Get Quote" > </td>
			<td>	<input type="hidden" name="nam" value="personal" > </td>
				
			</tr>	
			
	
		</table>
		
	</form>

</body>
</html>


