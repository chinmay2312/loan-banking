<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<HTML>
<head>
<title>Form Validation</title>

<script type="text/javascript">

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

/*	function validate() {

		if (document.myForm.place.value == "-1") {
			alert("Please provide your city!");
			return false;
		}

		if (document.myForm.restype.value == "-1") {
			alert("Please provide residence type!");
			return false;
		}

		if (document.myForm.custtype.value == "-1") {
			alert("Please provide applying as type!");
			return false;
		}

		if (document.myForm.model.value == "-1") {
			alert("Please provide car model!");
			return false;
		}

		if (document.myForm.empType.value == "-1") {
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

	} */

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

	/* function validate() {

	if (document.myForm.place.value == "-1") {
.		return false;
	}

	if (document.myForm.restype.value == "-1") {
		alert("Please provide residence type!");
		return false;
	}
	if (document.formname.custtype.value == "-1") {
		alert("Please provide applying as type!");
		return false;
	if (document.myForm.model.value == "-1") {
		alert("Please provide car model!");
		return false;
	}

	if (document.myForm.empType.value == "-1") {
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
	} */
	
	function calculateage()
	{
 		var dob=document.getElementById("Date").value;
 		var year = dob.substring(0, 4);

 		var today = new Date();
 		var yyyy = today.getFullYear();
 		age=yyyy-year;
 		document.getElementById("age").value = age;
	}
	 
	

	function addAmt() {
		var amt = document.getElementById("model").value;
		if (amt == "bmw") {
			document.getElementById("price").value = 700000;

		}

		function addField() {
			var amt = document.getElementById("empType");
			if (amt == "salaried") {
				document.myForm.companyname.disabled = false;
			}
		}
	}
//-->
</script>
<body bgcolor=white>

	<form  action="http://172.17.111.120:8087/MyLoanProj/Decide.jsp" name="myForm">

		<table>
 			<tr>
				<td>Where do you live currently?</td>
				<td>:</td>
				<td><select required name="place">
						<option value="" >- city -</option>
						<option value="1">Bangalore</option>
						<option value="2">Chennai</option>
						<option value="3">Delhi</option>
						<option value="4">Mumbai</option>
						<option value="5">Farizabad</option>
						<option value="6">Gurgaon</option>
						<option value="7">Kolkata</option>
						<option value="8">Navi Mumbai</option>
						<option value="9">New Delhi</option>
						<option value="10">Pune</option>
						<option value="11">Thane</option>
						<option value="12">Ahmedabad</option>
						<option value="13">Noida</option>
						<option value="14">Nagpur</option>
						<option value="15">Jaipur</option>
						<option value="16">Lucknow</option>
						<option value="17">Indore</option>
						<option value="18">Nasik</option>
						<option value="19">Surat</option>
						<option value="20">Vadodara</option>
						<option value="21">Visakhapattanam</option>
						<option value="22">Amritsar</option>
						<option value="23">Bhubaneshwar</option>
						<option value="24">Kashmir</option>
						<option value="25">Manali</option>

						<option value="30">----</option>
						<option value="31">other</option>
				</select></td>
			</tr>

			<tr>
				<td>Residence Type</td>
				<td>:</td>
				<td><select required name="restype">
						<option value="" >- type -</option>
						<option value="1">Owned by Self/Spouse</option>
						<option value="2">Owned by Parent/Sibling</option>
						<option value="3">Rented - with family</option>
						<option value="4">Rented - with friends</option>
						<option value="5">Rented - staying alone</option>
						<option value="6">Paying Guest</option>
						<option value="7">Hostel</option>
						<option value="8">Company Provided</option>
				</select></td>
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
				<td><select required  name="custtype" id="custtype" required>
						<option value="">------------Select----------------</option>
						<option value="regular">Regular</option>
						<option value="woman">Woman</option>
						<option value="senior">Senior Citizen</option>
						<option value="nri">NRI</option>
				</select></td>
			</tr>

			<tr>
				<td>Model Of Car</td>
				<td>:</td>
				<td><select  required name="model" id="model" onblur="addAmt()">
						<option value="">------------Select----------------</option>
						<option value="bmw">Mercedes-denz</option>
						<option value="jugar">Mahindra</option>
						<option value="bugati">Honda</option>
						<option value="mitshubhishi">Tata Nano</option>
						<option value="ford">Ford</option>
						<option value="swift">Toyota</option>

				</select></td>
			</tr>
			<tr>
				<td>Show-room Price</td>
				<td>:</td>
				<td><input type="number" name="price" id="price" required></td>
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
			<td>	<input type="hidden" name="nam" value="car" > </td>
				
			</tr>
			<tr>
				<td> <input type="hidden" name="loanType" value="Car" > </td>
			</tr>	
			
	
		</table>
		
	</form>

</body>
</html>


