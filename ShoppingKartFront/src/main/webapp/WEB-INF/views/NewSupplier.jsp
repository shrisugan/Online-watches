<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script>

function formSupplier(){
	// Make quick references to our fields
	
	var suppliername = document.getElementById('suppliername');
	var contactnumber = document.getElementById('contactnumber');

	// Check each input in the order that it appears in the form!
	
				if (notEmpty(suppliername, "Supplier Name Should not be empty")) {
						if (isAlphabet(suppliername,
								"Please enter only letters for Supplier Name")) {
							if (notEmpty(contactnumber,"Contact Number Should not be empty")){
							         if (isNumeric(contactnumber,
							        "Please enter only letters for Contact Number")) {

															return true;
														}
													}
												}
											}
								

	
	return false;
}

function notEmpty(elem, helperMsg) {
	if (elem.value.length == 0) {
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}
function isAlphabet(elem, helperMsg) {
	var alphaExp = /^[a-z A-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function isNumeric(elem, helperMsg) {
	var numericExpression = /^[0-9]+$/;
	if (elem.value.match(numericExpression)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}


</script>
<form action="addSupplier" method="post" onsubmit="return formSupplier()" enctype="multipart/form-data">
 
  <br><br><br>Supplier Name:<br>
  <input type="text" name="SupplierName" id="suppliername" ><br><br>
  Contact Number:<br>
  <input type="text" name="ContactNumber" id="contactnumber"><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>