<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teacher Registration</title>
<link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../bootstrap/dist/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
</head>
<body>
	<h1 class="well">Teacher Registration Page</h1>
	<div class="col-lg-12 well">
		<div class="row">
			<form name="teacherRegPage" action="teacherRegister.jsp">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-6 form-group">
							<label>First Name</label> <input type="text" class="form-control"
								placeholder="First Name" required />
						</div>
						<div class="col-sm-6 form-group">
							<label>Last Name</label> <input type="text" class="form-control"
								placeholder="Last Name" required />
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							<label>Father Name</label> <input type="text"
								class="form-control" placeholder="Enter your Father's Name"
								required />
						</div>
						<div class="col-sm-6 form-group">
							<label>Mother Name</label> <input type="text"
								class="form-control" placeholder="Enter your Mother's name"
								required />
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 ">
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>Gender</label> : <input type="radio" name="gender"
									value="male"> Male &nbsp;<input type="radio"
									name="gender" value="female"> Female &nbsp;<input
									type="radio" name="gender" value="other"> Other
							</div>
							<div class="col-sm-6 form-group">
								<label for="teacherDOB">Date of Birth</label>
								<div class="input-group date form_date col-md-5 " data-date=""
									data-date-format="dd MM yyyy" data-link-field="teacherDOB"
									data-link-format="yyyy-mm-dd">
									<input class="form-control" size="16" name="teacherDOBName"
										type="text" value="" readonly> <span
										class="input-group-addon"><span
										class="glyphicon glyphicon-remove"></span></span> <span
										class="input-group-addon"><span
										class="glyphicon glyphicon-calendar"></span></span>
								</div>
								<input type="hidden" id="teacherDOB" value="" /><br />
							</div>
							<div class="col-sm-6 form-group">
								<label>Aadhaar Number</label> <input type="text"
									class="form-control" placeholder="Enter your UID Aadhar Number" />
							</div>
							<div class="col-sm-12 form-group">
								<label>Qualification</label> <input type="text"
									class="form-control" placeholder="Enter your Qualification" />
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-12 form">
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>Present Address</label>
								<textarea rows="4" class="form-control"
									onkeyup="addressChanged()" name="presentadd"
									placeholder="Enter your present address"></textarea>
							</div>
						</div>
						<div>
							<label>Is present address and permanent address are same?</label>
							<label class="radio-inline"><input type="radio"
								name="paddress" onclick="addressSame()" value="true">Yes</label>
							<label class="radio-inline"><input type="radio"
								name="paddress1" onclick="addressNotSame()" value="false">No</label>

						</div>
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>Permanent Address</label>
								<textarea rows="4" class="form-control" name="permanentadd"
									placeholder="Enter your permanent address"></textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Mobile Number</label> <input type="text"
									class="form-control" placeholder="Enter parent mobile number" />
							</div>
							<div class="col-sm-6 form-group">
								<label>Residence Phone Number</label> <input type="text"
									class="form-control"
									placeholder="Enter your Residence phone number" />
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>Awards/Achievements</label>
								<textarea rows="4" class="form-control"
									placeholder="Enter your previous awards and achievements"></textarea>
							</div>
						</div>
					</div>
				</div>
				<p></p>
				<div class="form-group" id="enumSchool">
					<label>Previously Worked Schools</label>
					<div class="input-group">
						<div id="divEnumSchool">
							<input type="text" class="form-control" id="inEnumSchool"
								placeholder="Enter your previous schools" />
						</div>
						<span class="input-group-btn">
							<button type="button" class="btn btn-default" id="btnEnumSchool">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
								Add another school
							</button>
						</span>
					</div>
				</div>
				<div class="form-group" id="enumHobby">
					<label>Subjects Handled</label>
					<div class="input-group">
						<div id="divEnumSubjectsHandled">
							<input type="text" class="form-control"
								id="inEnumSubjectsHandled"
								placeholder="Enter the subjects you have handled" />
						</div>
						<span class="input-group-btn">
							<button type="button" class="btn btn-default"
								id="btnEnumsubjectsHandled">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
								Add another Subject
							</button>
						</span>
					</div>
				</div>

				<!-- <div class="row">
					<div class="col-sm-6 form-group">

						<input type="checkbox" name="classteacher" /> I am a Class
						Teacher<br>
					</div>
				</div> -->

				<div class="col-sm-12">
					<div class="row">
						<div class="form-group">
							<button type="submit" class="btn btn-primary form-control">Register
								Teacher</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="../jquery/jquery.min.js"></script>
	<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="../bootstrap/dist/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>

	<script type="text/javascript">
		$('.form_date').datetimepicker({
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			minView : 2,
			forceParse : 0
		});
		
		function addressSame() {
			if (document.forms["teacherRegPage"]["paddress"].value) {
				document.forms["teacherRegPage"]["permanentadd"].value = document.forms["teacherRegPage"]["presentadd"].value;
				document.forms["teacherRegPage"]["permanentadd"].disabled = true;
				document.forms["teacherRegPage"]["paddress"].checked = true;
				document.forms["teacherRegPage"]["paddress1"].checked = false;
			}
		}

		function addressNotSame() {
			document.forms["teacherRegPage"]["permanentadd"].value = "";
			document.forms["teacherRegPage"]["permanentadd"].disabled = false;
			document.forms["teacherRegPage"]["paddress"].checked = false;
			document.forms["teacherRegPage"]["paddress1"].checked = true;
		}

		function addressChanged() {
			if (document.forms["teacherRegPage"]["paddress"].checked === true) {
				document.forms["teacherRegPage"]["permanentadd"].value = document.forms["teacherRegPage"]["presentadd"].value;
			}
		}

		//Adding another school/subject

		function addSchool() {
			var input = document.createElement('input');
			input.type = 'text';
			input.className = "form-control";
			input.placeholder = "Enter your previous schools";
			return input;
		}

		function addSubject() {
			var input = document.createElement('input');
			input.type = 'text';
			input.className = "form-control";
			input.placeholder = "Enter the subjects you have handled"
			return input;
		}

		var schoolElement = document.getElementById('divEnumSchool');
		document.getElementById('btnEnumSchool').addEventListener('click',
				function(e) {
					schoolElement.appendChild(addSchool());
				});
		var subjectElement = document.getElementById('divEnumSubjectsHandled');
		document.getElementById('btnEnumsubjectsHandled').addEventListener(
				'click', function(e) {
					subjectElement.appendChild(addSubject());
				});
	</script>
</body>
</html>