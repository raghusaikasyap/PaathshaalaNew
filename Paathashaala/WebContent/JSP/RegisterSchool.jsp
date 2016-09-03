<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>School Registration</title>
<link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1 class="well">School Registration Page</h1>
<div class="col-lg-12 well">
	<div class="row">
		<form name="schoolRegPage">
			<div class="col-sm-12">
				<div class="row">
					<div class="col-sm-6 form-group">
						<label>School Name</label>
						<input type="text" class="form-control" placeholder="Enter your school name" />
					</div>
				</div>
				<div class="form-group">					
						<label>Address</label>
						<textarea rows="4" class="form-control" placeholder="Enter your school address"></textarea>
				</div>
				<div class="row">
					<div class="col-sm-6 form-group">
						<label>Email ID</label>
						<input type="text" class="form-control" placeholder="Enter your school Email address" />
					</div>
					<div class="col-sm-6 form-group">
						<label>Phone Number</label>
						<input type="text" class="form-control" placeholder="Enter your school phone number" />
					</div>
				</div>						
			</div>
			<button type="button" class="btn btn-default">Register school</button>					
		</div>
		</form>
	</div>
</div>
<script src="../jquery/jquery.min.js"></script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../utility/Utilities.js"></script>
</body>
</html>