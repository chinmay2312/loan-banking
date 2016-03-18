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
//				document.getElementById("retireage").required = false;
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
	function getPurpose(val) {
		if (val == "repair") {
			document.getElementById("repair").style.display = 'block';
			document.getElementById("renovationcost").required = true;

			document.getElementById("identified").style.display = 'none';
			document.getElementById("category").required = false;

		}
		if (val == "identified") {
			document.getElementById("repair").style.display = 'none';
			document.getElementById("renovationcost").required = false;

			document.getElementById("identified").style.display = 'block';
			document.getElementById("category").required = true;

		}
		if (val == "unidentified") {
			document.getElementById("repair").style.display = 'none';
			document.getElementById("renovationcost").required = false;

			document.getElementById("identified").style.display = 'none';
			document.getElementById("category").required = false;

		}

	}

	function getCategory(val) {
		if (val == "extension") {
			document.getElementById("extension").style.display = 'block';
			document.getElementById("constructioncost").required = true;

			document.getElementById("plot").style.display = 'none';
			document.getElementById("cost").required = false;

			document.getElementById("under-construct").style.display = 'none';
			document.getElementById("constructioncost").required = false;
			document.getElementById("cost").required = false;

			document.getElementById("ready").style.display = 'none';
			document.getElementById("cost").required = false;

			
		}
		if (val == "plot") {
			document.getElementById("extension").style.display = 'none';
			document.getElementById("constructioncost").required = false;

			document.getElementById("plot").style.display = 'block';
			document.getElementById("cost").required = true;

			document.getElementById("under-construct").style.display = 'none';
			document.getElementById("constructioncost").required = false;
			document.getElementById("cost").required = false;
			
			document.getElementById("ready").style.display = 'none';
			document.getElementById("cost").required = false;

		}
		if (val == "under-construct") {
			document.getElementById("extension").style.display = 'none';
			document.getElementById("constructioncost").required = false;

			document.getElementById("plot").style.display = 'none';
			document.getElementById("cost").required = false;

			document.getElementById("under-construct").style.display = 'block';
			document.getElementById("constructioncost").required = true;
			document.getElementById("cost").required = true;
			
			document.getElementById("ready").style.display = 'none';
			document.getElementById("cost").required = false;

		}
		if (val == "ready") {
			document.getElementById("extension").style.display = 'none';
			document.getElementById("constructioncost").required = false;

			document.getElementById("plot").style.display = 'none';
			document.getElementById("cost").required = false;

			document.getElementById("under-construct").style.display = 'none';
			document.getElementById("constructioncost").required = false;
			document.getElementById("cost").required = false;
			
			document.getElementById("ready").style.display = 'block';
			document.getElementById("cost").required = true;

		}
	}

 function dropdownlist(listindex) {

		document.formname.city.options.length = 0;
		switch (listindex) {

		case "Andhra Pradesh":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Eluru");
			document.formname.city.options[2] = new Option("Guntur");
			document.formname.city.options[3] = new Option("Kadapa");
			document.formname.city.options[4] = new Option("Tirupati");
			document.formname.city.options[5] = new Option("Visakhapatnam");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");
			break;

		case "Delhi":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("New Delhi");
			document.formname.city.options[2] = new Option("--------");
			document.formname.city.options[3] = new Option("other");
			break;

		case "Goa":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Goa");
			document.formname.city.options[2] = new Option("Punaji");
			document.formname.city.options[3] = new Option("--------");
			document.formname.city.options[4] = new Option("other");
			break;
		case "Gujarat":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Ahmedabad");
			document.formname.city.options[2] = new Option("Jamnagar");
			document.formname.city.options[3] = new Option("Rajkot");
			document.formname.city.options[4] = new Option("Surat");
			document.formname.city.options[5] = new Option("Vadodara");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");

			break;
		case "Jammu and Kashmir":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Jammu");
			document.formname.city.options[2] = new Option("Shri Nagar");
			document.formname.city.options[3] = new Option("--------");
			document.formname.city.options[4] = new Option("other");
			break;
		case "Kerala":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Kochi");
			document.formname.city.options[2] = new Option("Kozhikode");
			document.formname.city.options[3] = new Option("Kannur");
			document.formname.city.options[4] = new Option("Malappuram");
			document.formname.city.options[5] = new Option("Thiruvananthapuram");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");
			break;
		case "Maharashtra":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Ahmednagar");
			document.formname.city.options[2] = new Option("Kolhapur");
			document.formname.city.options[3] = new Option("Mumbai");
			document.formname.city.options[4] = new Option("Nashik");
			document.formname.city.options[5] = new Option("Thane");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");

			break;
		case "Punjab":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Amritsar");
			document.formname.city.options[2] = new Option("bhatinda");
			document.formname.city.options[3] = new Option("Jalandhar");
			document.formname.city.options[4] = new Option("Ludhiana");
			document.formname.city.options[5] = new Option("patiala");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");
			break;
		case "Rajastan":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Ajmer");
			document.formname.city.options[2] = new Option("Almar");
			document.formname.city.options[3] = new Option("Bikaner");
			document.formname.city.options[4] = new Option("jaipur");
			document.formname.city.options[5] = new Option("Udaypur");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");
			break;
		case "Tamil Nadu":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("chennai");
			document.formname.city.options[2] = new Option("Erode");
			document.formname.city.options[3] = new Option("Madurai");
			document.formname.city.options[4] = new Option("Tirupur");
			document.formname.city.options[5] = new Option("Vellore");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");
			break;
		case "uttaranchal":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Dehradun");
			document.formname.city.options[2] = new Option("Haridwar");
			document.formname.city.options[3] = new Option("Mussoorie");
			document.formname.city.options[4] = new Option("Nainital");
			document.formname.city.options[5] = new Option("Rishikesh");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");
			break;
		case "Uttar Pradesh":
			document.formname.city.options[0] = new Option(
					"Select Sub-Category", "");
			document.formname.city.options[1] = new Option("Allahabad");
			document.formname.city.options[2] = new Option("Agra");
			document.formname.city.options[3] = new Option("Kanpur");
			document.formname.city.options[4] = new Option("Lucknow");
			document.formname.city.options[5] = new Option("Varanasi");
			document.formname.city.options[6] = new Option("--------");
			document.formname.city.options[7] = new Option("other");
			break;

		}
		return true;
	}
//-->
</script>

</head>
<body bgcolor=white>

	<form action="http://172.17.111.120:8087/MyLoanProj/Decide.jsp" name="formname"
		id="formname" onsubmit="return(validate());">

		<table>

			<tr>
				<td>Property Details</td>
				<td>:</td>
			</tr>
			<tr>
				<td>--------------------------------------------</td>
			</tr>
			<tr>
				<td>Purpose Of Loan</td>
				<td>:</td>
				<td><select name="purpose" onchange="getPurpose(value)" required>
						<option value="" selected>- select -</option>
						<option value="repair">Repair/Renovation of own
							house/flat</option>
						<option value="identified">Purchase or construct on
							identified property</option>
						<option value="unidentified">Loan for unidentified
							property (Pre-approved Loan)</option>
				</select></td>
			</tr>
			
			<tbody id="identified" style="display: none;" >
				<tr>
					<td>Property Category</td>
					<td>:</td>
					 <td><select name="category" id="category" onchange="getCategory(value)" required>
							<option value="">- select -</option>
							<option value="extension">Extension of own House/Flat</option>
							<option value="plot">Purchase Of Plot</option>
							<option value="under-construct">Purchase of
								Under-Construction Property</option>
							<option value="ready">Purchase Of Ready-Built property</option>

					</select></td> 
				</tr>
			</tbody>
			
				<tbody id="extension" style="display: none" >

				<tr>
					<td>Cost Of Construction</td>
					<td>:</td>
					<td><input type="text" name="constructioncost" id="constructioncost" placeholder="Rs." ></td>
				</tr>
			</tbody>
			<tbody id="plot" style="display: none" >

				<tr>
					<td>Cost Of Plot</td>
					<td>:</td>
					<td><input type="text" name="cost" id="cost" placeholder="Rs." ></td>
				</tr>
			</tbody>
			
			<tbody id="under-construct" style="display: none" >

				<tr>
					<td>Cost Of Construction</td>
					<td>:</td>
					<td><input type="text" name="constructioncost" id="constructioncost" placeholder="Rs." ></td>
				</tr>
				<tr>
					<td>Cost Of Plot/Flat</td>
					<td>:</td>
					<td><input type="text" name="cost" id="cost" placeholder="Rs." ></td>
				</tr>
			</tbody>
			
			<tbody id="ready" style="display: none" >

				<tr>
					<td>Cost Of Flat</td>
					<td>:</td>
					<td><input type="text" name="cost" id="cost" placeholder="Rs." ></td>
				</tr>
			</tbody>
			

			
			<tbody id="repair" style="display: none;">
				<tr>
					<td>Cost Of Renovation</td>
					<td>:</td>
					<td><input type="number" id="renovationcost" name="constructioncost" pattern="*\d" required></td>
				</tr>
			</tbody>

			
			
	</tbody>
			<tr>
				<td>Applicant Details</td>
				<td>:</td>
			</tr>
			<tr>
				<td>--------------------------------------------</td>
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
				<td>Country</td>
				<td>:</td>
				<td><select name="country" id="country" required >
						<option value="">------------Select----------------</option>
						<option value="afghanistan">Afghanistan</option>
						<option value="australia">Australia</option>
						<option value="austria">Austria</option>
						<option value="argentina">Argentina</option>
						<option value="brazil">Brazil</option>
						<option value="china">China</option>
						<option value="hong kong">hong Kong</option>
						<option value="india">India</option>
						<option value="italy">Italy</option>
						<option value="iran">Iran</option>
						<option value="japan">Japan</option>
						<option value="mexico">Mexico</option>
						<option value="nepal">Nepal</option>
						<option value="pakistan">Pakistan</option>
						<option value="sri lanka">Sri Lanka</option>
						<option value="sweden">Sweden</option>
						<option value="switzerland">Switzerland</option>
						<option value="uk">United Kingdom</option>
						<option value="usa">United State</option>

				</select></td>
			</tr>
			<tr>
				<td>Preferred Location</td>
				<td>:</td>
			</tr>
			<tr>
				<td>--------------------------------------------</td>
			</tr>

			<tr>
				<td>Preferred Loacation For Availing Loan</td>
				<td>:</td>
				<td><select name="loc" id="loc" required>
						<option value="">- select -</option>
						<option value="residence">Place Of Residence in India</option>
						<option value="propertyplace">Place Of Property</option>
				</select></td>
			</tr>
			<tr>
				<td>State</td>
				<td>:</td>
				<td><select name=slist id="slist" required
					onchange="javascript: dropdownlist(this.options[this.selectedIndex].value);">
						<option value="">------------Select State------------</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Delhi">Delhi</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
						<option value="Kerala">Kerala</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Punjab">Punjab</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Uttaranchal">Uttaranchal</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						
						
						
						
						
				</select></td>
			</tr>
			<tr>
				<td>City</td>
				<td>:</td>
				<td><script type="text/javascript" language="JavaScript">
					document
							.write(
									'<select name="city" required ><option value="">--Select Sub-Category--</option></select>')
				</script>
					<noscript>
						<select name="city" id="city" required 
							onchange="javascript: dropdown(this.options[this.selectedIndex].value);">
							<option value="">Select Sub-Category</option>
						</select>
					</noscript></td>
			</tr>

			<tr>
				<td>Income Details</td>
				<td>:</td>
			</tr>
			<tr>
				<td>--------------------------------------------</td>
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
				<td><input id="monthlyincome" type="number" name="income"
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
				<td><input id="netincome" type="number" name="income" placeholder="Rs."
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
			<td>	<input type="hidden" name="nam" value="home" > </td>
				
			</tr>	
			
	
		</table>
		
	</form>

</body>
</html>

