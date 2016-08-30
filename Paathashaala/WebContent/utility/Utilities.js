/**
 * Author : Peddasomayajula
 */
function addSchool() {
  var input = document.createElement('input');
  input.type = 'text';
  input.className = "form-control";
  input.placeholder = "Enter your previous schools" 
  return input;
}

function addSubject() {
	  var input = document.createElement('input');
	  input.type = 'text';
	  input.className = "form-control";
	  input.placeholder = "Enter your known subjects" 
	  return input;
}

var schoolElement = document.getElementById('divEnumSchool');
document.getElementById('btnEnumSchool').addEventListener('click', function(e) {
	schoolElement.appendChild(addSchool());
});
var subjectElement = document.getElementById('divEnumSubject');
document.getElementById('btnEnumSubject').addEventListener('click', function(e) {
	subjectElement.appendChild(addSubject());
});