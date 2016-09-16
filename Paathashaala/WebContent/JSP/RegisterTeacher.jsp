<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teacher Registration</title>
<link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1 class="well">Teacher Registration Page</h1>
<div class="col-lg-12 well">
	<div class="row">
		<form name="teacherRegPage">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-sm-6 form-group">
						<label>First Name</label>
						<input type="text" class="form-control" placeholder="First Name" />
					</div>
					<div class="col-sm-6 form-group">
						<label>Last Name</label>
						<input type="text" class="form-control" placeholder="Last Name" />
					</div>	
				</div>
				<div class="row">
					<div class="col-sm-6 form-group">
						<label>Father Name</label>
						<input type="text" class="form-control" placeholder="Enter your Email address" />
					</div>
					<div class="col-sm-6 form-group">
						<label>Mother Name</label>
						<input type="text" class="form-control" placeholder="Enter your Email address" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12 ">
					<div class="row">
						<div class="col-sm-12 form-group">
							<label>Gender</label> :
								<input type="radio" name="gender" value="male"> Male 
 								&nbsp;<input type="radio" name="gender" value="female"> Female
  								&nbsp;<input type="radio" name="gender" value="other"> Other
						</div>
						<div class="col-sm-6 form-group">
							<label>Date Of Birth</label>
							<input type="text" class="form-control" placeholder="Enter your Date Of Birth" />
						</div>
						<div class="col-sm-6 form-group">
							<label>Aadhaar Number</label>
							<input type="text" class="form-control" placeholder="Enter your UID Aadhar Number" />
						</div>
						<div class="col-sm-12 form-group">
							<label>Qualification</label>
							<input type="text" class="form-control" placeholder="Enter your Present Class Of Study" />
						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12 form">
					<div class="row">
						<div class="col-sm-12 form-group">
							<label>Present Address</label>	
							<textarea rows="4" class="form-control" placeholder="Enter your present address"></textarea>
						</div>
					</div>
					<div>
						<label>Is present address and permanent address are same?</label>&nbsp;
								<input type="radio" name="paddress" value="yes"> YES &nbsp;
 								<input type="radio" name="paddress" value="no"> NO<br>
					</div>
					<div class="row">
						<div class="col-sm-12 form-group">
							<label>Permanent Address</label>
							<textarea rows="4" class="form-control" placeholder="Enter your permanent address"></textarea>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							<label>Mobile Number</label>
							<input type="text" class="form-control" placeholder="Enter parent mobile number" />
						</div>
						<div class="col-sm-6 form-group">
							<label>Residence Phone Number</label>
							<input type="text" class="form-control" placeholder="Enter your Residence phone number" />
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12 form-group">
							<label>Awards/Achievements</label>
							<textarea rows="4" class="form-control" placeholder="Enter your previous awards and achievements" ></textarea>
						</div>
					</div>				
				</div>
			</div><p></p>
			<div class="form-group" id="enumSchool">
					<label>Previously Worked Schools</label>
					<div class="input-group">
						<div id="divEnumSchool">
							<input type="text" class="form-control" id="inEnumSchool" placeholder="Enter your previous schools" />
						</div>
						 <span class="input-group-btn">
        					<button type="button" class="btn btn-default" id="btnEnumSchool">
  								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add another school
							</button>
   						</span>
					</div>
				</div>
			<div class="form-group" id="enumHobby">
					<label>Subjects Handled</label>
					<div class="input-group">
						<div id="divEnumSubjectsHandled">
							<input type="text" class="form-control" id="inEnumSubjectsHandled" placeholder="Enter the subjects you have handled" />
						</div>
						 <span class="input-group-btn">
        					<button type="button" class="btn btn-default" id="btnEnumsubjectsHandled">
  								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add another Hobby
							</button>
   						</span>
					</div>
			</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							
							<input type="checkbox" name="classteacher"  />I am a Class Teacher<br>
						</div>
					</div>
				
			<div>						
				<button type="button" class="btn btn-default">Register me</button>					
			</div>
		</form>
	</div>
</div>
<script src="../jquery/jquery.min.js"></script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>