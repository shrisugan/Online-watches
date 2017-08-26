<!DOCTYPE html>
<html lang="en">
<head>
  <title>SignUp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  
  function formRegister() {
		// Make quick references to our fields
		
		var username = document.getElementById('username');
		var email = document.getElementById('email');
		var password = document.getElementById('pass');
		var phone = document.getElementById('contactnumber');
		var address = document.getElementById('address');
		var zipcode = document.getElementById('zipcode');
		// Check each input in the order that it appears in the form!
		
					if (notEmpty(username, "Username Should not be empty")) {
							if (isAlphabet(username,
									"Please enter only letters for Username")) {
								if (notEmpty(email,
								"EmailId Should not be empty")) {
									if(emailValidator(email, "Please Enter a valid Email id")){
								if (notEmpty(password,
										"password Should not be empty")) {
									if (isAlphanumeric(password,
											"Numbers and Letters Only for Passwords")) {
										if (notEmpty(phone,
												"PhoneNumber Should not be empty")) {
											if (isNumeric(phone,
													"Please enter only number for PhoneNumber")) {
												
													if (notEmpty(address,
															"Address Should not be empty")) {
														if (notEmpty(zipcode,
																"Zipcode Should not be empty")) {
															if (isNumeric(
																	zipcode,
																	"Please enter a valid zip code")) {
																return true;
															}
														}
													}
												}
											}
										}
									}
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
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
		if (elem.value.match(alphaExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
	function emailValidator(elem, helperMsg) {
		var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
		if (elem.value.match(emailExp)) {
			return true;
		} else {
			alert(helperMsg);
			elem.focus();
			return false;
		}
	}
  
	
  </script>
</head>
<body>

<div class="container">
  <form action="addNewUser" method="post" onsubmit="return formRegister()" class="form-horizontal">
  
    <div class="form-group">
      <br><br><div class="fnt"><font color="#ce3175"><label class="control-label col-sm-2" for="username">UserName:</label></font></div>
      <div class="col-sm-10">
        <input type="text" name="UserName" class="form-control" id="username" placeholder="Enter UserName">
      </div>
    </div>
    
    <div class="form-group">
      <div class="fnt"><font color="#ce3175"><label class="control-label col-sm-2" for="email">EmailId:</label></font></div>
      <div class="col-sm-10">          
        <input type="email" name="EmailId" class="form-control" id="email" placeholder="Enter EmailId">
      </div>
      </div>
      
      <div class="form-group">
     <div class="fnt"><font color="#ce3175"> <label class="control-label col-sm-2" for="password">Password:</label></font></div>
      <div class="col-sm-10">          
        <input type="password" name="Password" class="form-control" id="pass" placeholder="Enter Password">
      </div>
      </div>
      
      <div class="form-group">
      <div class="fnt"><font color="#ce3175"><label class="control-label col-sm-2" for="contactnumber">Contact Number:</label></font></div>
      <div class="col-sm-10">          
        <input type="text" name="ContactNumber" class="form-control" id="contactnumber" placeholder="Enter Contact Number">
      </div>
    </div>
    
    <div class="form-group">
      <div class="fnt"><font color="#ce3175"><label class="control-label col-sm-2" for="address">Address:</label></font></div>
      <div class="col-sm-10">          
        <input type="text" name="Address" class="form-control" id="address" placeholder="Enter Address">
      </div>
    </div>
    
     <div class="form-group">
     <div class="fnt"><font color="#ce3175"><label class="control-label col-sm-2" for="zipcode">Zipcode:</label></font></div>
      <div class="col-sm-10">          
        <input type="text" name="Zipcode" class="form-control" id="zipcode" placeholder="Enter Zipcode">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">SignUp</button>
      </div>
    </div>
    </form>
    </div>
    </body>
</html>