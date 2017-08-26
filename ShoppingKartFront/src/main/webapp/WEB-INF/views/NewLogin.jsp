<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <form action="isvaliduser" method="post"  class="form-horizontal">
    <div class="form-group">
     <br><br> <div class="fnt"><font color="#ce3175"> <label class="control-label col-sm-2" for="emailid">EmailId:</label></font></div>
      <div class="col-sm-10">
        <input type="email" name="EmailId" class="form-control" id="emailid" placeholder="Enter email">
      </div>
    </div>
    <div class="form-group">
       <div class="fnt"><font color="#ce3175"><label class="control-label col-sm-2" for="pwd">Password:</label></font></div>
      <div class="col-sm-10">          
        <input type="password" name="Password" class="form-control" id="pwd" placeholder="Enter password">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
       <c:if test="${not empty error}">
				<div class="error"><b>${error}</b></div>
	 			</c:if> 
				<c:if test="${not empty logout}">
			<div class="msg"><b>${logout}</b></div>
				</c:if>				
				<b>${message}</b>
        <br><br><button type="submit" class="btn btn-default">Login</button>
      </div>
    </div>
  </form>
</div>
</html>