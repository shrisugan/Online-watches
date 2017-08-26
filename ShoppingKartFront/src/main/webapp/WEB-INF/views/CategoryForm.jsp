<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Category</title>
</head>
<body>
<script>
function formCategory(){
	// Make quick references to our fields
	
	var productname = document.getElementById('productname');
	var productdescription = document.getElementById('productdescription');

	// Check each input in the order that it appears in the form!
	
				if (notEmpty(categoryname, "Category Name Should not be empty")) {
						if (isAlphabet(categoryname,
								"Please enter only letters for Category Name")) {
							if (notEmpty(categorydescription,"Category Description Should not be empty")){
							         if (isAlphabet(categorydescription,
							        "Please enter only letters for Category Description")) {

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

</script>
    <form action="addCategory" method="post" onsubmit="return formCategory()" enctype="multipart/form-data">
 
  <br><br><br>Category Name:<br>
  <input type="text" name="categoryName" id="categoryname"><br><br>
  Category Description:<br>
  <input type="text" name="categoryDescription" id="categorydescription" ><br><br>
  <input type="submit" value="Submit">
</form>

</body>
</html>