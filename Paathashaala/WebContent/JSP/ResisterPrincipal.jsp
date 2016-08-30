<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Principal Registration</title>
<link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1 class="well">Principal Registration Page</h1>
<div class="col-lg-12 well">
	<div class="row">
		<form name="principalRegPage">
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
				<div class="form-group">
					
						<label>Address</label>
						<textarea rows="4" class="form-control" placeholder="Enter your permanent address"></textarea>
					
				</div>
				<div class="row">
					<div class="col-sm-6 form-group">
						<label>Email ID</label>
						<input type="text" class="form-control" placeholder="Enter your Email address" />
					</div>
					<div class="col-sm-6 form-group">
						<label>Phone Number</label>
						<input type="text" class="form-control" placeholder="Enter your phone number" />
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 form-group">
						<label>Work Experience</label>
						<input type="text" class="form-control" placeholder="Enter your work experience in years" />
					</div>
				</div>				
				<div class="form-group">
					<label>Previous Worked Schools</label>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Enter your previous schools" />
						 <span class="input-group-btn">
        					<button type="button" class="btn btn-default">
  								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add another school
							</button>
   						</span>
					</div>
				</div>
				<div class="form-group">
					<label>Known Subjects</label>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Enter your known subjects" />
						 <span class="input-group-btn">
        					<button type="button" class="btn btn-default">
  								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add another subject
							</button>
   						</span>
					</div>
				</div>							
			</div>
			<button type="button" class="btn btn-default">Register me</button>					
		</div>
		</form>
	</div>
</div>

<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../jquery/jquery.min.js"></script>
</body>
</html>