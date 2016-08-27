<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
</head><h3><center>STUDENT REGISTRATION</center></h3>
<body>
<div>
<h3>BASIC DETAILS</h3>
<table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">

<tr>
<td>First Name</td>
<td><input type=text name="Firstname" id="Firstname" size="30">&nbsp;</td>
&nbsp; &nbsp;
<td>Last Name</td>
<td><input type=text name="Firstname" id="Firstname" size="30">&nbsp;</td>
</tr>
<tr>
<td>Father Name</td>
<td><input type="text" name="fathername" id="fathername"
size="30"></td>
</tr>
<td>Mother Name</td>
<td><input type="text" name="fathername" id="fathername"
size="30"></td>
</tr>
<tr>
<tr>
<td>DOB</td>
<td><input type="text" name="dob" id="dob" size="30"></td>
</tr>
<tr>
<td>Gender</td>
<td><input type="radio" name="Gender" value="male" size="10">Male
&nbsp; <input type="radio" name="sGender" value="Female" size="10">Female</td>
</tr>
<td>Permanent Address</td>
<td><input type="text" name="paddress" id="paddress" size="30"></td>
</tr>
<tr>
<td>Present Address</td>
<td><input type="text" name="presentaddress"
id="presentaddress" size="30"></td>
</tr>
<tr>
<td>City</td>
<td><input type="text" name="City"
id="City" size="30"></td>
</tr>
<tr>
<td>District</td>
<td><input type=text  name="Standard" id="Standard"  size="20">
</tr>
<tr>
<td>State</td>
<td><input type=text  name="Standard" id="Standard"  size="20">
</tr>
<tr>
<td>PinCode</td>
<td><input type="text" name="pincode" id="pincode" size="30"></td>
</tr>
<tr>
<td>EmailId</td>
<td><input type="text" name="emailid" id="emailid" size="30"></td>
</tr>
<tr>
<td>MobileNo</td>
<td><input type="text" name="mobileno" id="mobileno" size="30"></td>
</tr>

</table>
</div>
<div>
<h3>ACADEMIC DETAILS</h3>
<table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">
<tr>
<td>Standard</td>
<td><input type=text  name="Standard" id="Standard"  size="20">
</td>
<tr>
<h5>Subject Wise Perfomance</h5>
<tr>
<td>Telugu</td>
<td><input type="radio" name="Telugu" value="poor" size="10">Poor
&nbsp; <input type="radio" name="sGender" value="average" size="10">Average &nbsp;
<input type="radio" name="Telugu" value="aboveaverage" size="10">Above Average &nbsp;
&nbsp; <input type="radio" name="sGender" value="Excellent" size="10">Excellent</td>
</tr>
<tr>
<td>Hindi</td>
<td><input type="radio" name="Telugu" value="poor" size="10">Poor
&nbsp; <input type="radio" name="sGender" value="average" size="10">Average &nbsp;
<input type="radio" name="Telugu" value="aboveaverage" size="10">Above Average &nbsp;
&nbsp; <input type="radio" name="sGender" value="Excellent" size="10">Excellent</td>
</tr>
<tr>
<td>English</td>
<td><input type="radio" name="Telugu" value="poor" size="10">Poor
&nbsp; <input type="radio" name="sGender" value="average" size="10">Average &nbsp;
<input type="radio" name="Telugu" value="aboveaverage" size="10">Above Average &nbsp;
&nbsp; <input type="radio" name="sGender" value="Excellent" size="10">Excellent</td>
</tr>
<tr>
<td>Mathematics</td>
<td><input type="radio" name="Telugu" value="poor" size="10">Poor
&nbsp; <input type="radio" name="sGender" value="average" size="10">Average &nbsp;
<input type="radio" name="Telugu" value="aboveaverage" size="10">Above Average &nbsp;
&nbsp; <input type="radio" name="sGender" value="Excellent" size="10">Excellent</td>
</tr>
<tr>
<td>Science</td>
<td><input type="radio" name="Telugu" value="poor" size="10">Poor
&nbsp; <input type="radio" name="sGender" value="average" size="10">Average &nbsp;
<input type="radio" name="Telugu" value="aboveaverage" size="10">Above Average &nbsp;
&nbsp; <input type="radio" name="sGender" value="Excellent" size="10">Excellent</td>
</tr>
<tr>
<td>Social</td>
<td><input type="radio" name="Telugu" value="poor" size="10">Poor
&nbsp; <input type="radio" name="sGender" value="average" size="10">Average &nbsp;
<input type="radio" name="Telugu" value="aboveaverage" size="10">Above Average &nbsp;
&nbsp; <input type="radio" name="sGender" value="Excellent" size="10">Excellent</td>
</tr>
<tr>
<td>Overall Perfomance</td>
<td><input type="radio" name="Telugu" value="poor" size="10">Poor
&nbsp; <input type="radio" name="sGender" value="average" size="10">Average &nbsp;
<input type="radio" name="Telugu" value="aboveaverage" size="10">Above Average &nbsp;
&nbsp; <input type="radio" name="sGender" value="Excellent" size="10">Excellent</td>
</tr>
</table>
</div>
<div>
<h4>Co-Circular Activities</h4>
<table cellpadding="2" width="20%" bgcolor="99FFFF" align="center"
cellspacing="2">
<tr>
<td><input type="textbox" name="hobbies" id="hobbies" size="50">Hobbies
</td></tr>
<tr>
<td><input type="textbox" name="Sports" id="Sports" size="50">Sports
</td>
</tr>
<tr>
<td><input type="textbox" name="Literature" id="Literature" size="50">Literature
</td>
</tr>
<tr>
<td><input type="textbox" name="Arts" id="Arts" size="50">Arts
</td>
</tr>
</table>
</div>
<div>
<table>
<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Submit Form" /></td>
</tr>
</body>
</html>