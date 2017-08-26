<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<style>
li a, .dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 100%;    
    font-family: arial;
     padding: 12px 16px;
    font-align: center;
    
    background-color: #0099ff;
}

.dropdown:hover .dropbtn {
    background-color: #ed2553;
   
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color:#0099ff;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ed2553;
}

.dropdown:hover .dropdown-content {
    display: block;
}

p{ line-height: 1em; }

h1, h2, h3, h4{

    color: #ed2553;
	margin: 0 0 .1em 0;
}
h1{ font-size: 1.7em; }
h2{ font-size: 1.5em; }

a{
	color: black;
	text-decoration: none;

}
	a:hover,
	a:active{ text-decoration: none; }

body{
   font-family: arial; 
   font-size: 100%;
   line-height: 1.2em; 
   width: 100%; 
   margin: 0 0 .5em 0; 
   background: white; 
   text-align: center;
}

#nav ul {
    list-style-type: none;
    margin:0;
   
    overflow: hidden;
    background-color:#0099ff;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    
}

li a:hover {
    background-color: #ed2553; 
    
}

#page{ margin: 20px; }
</style>
</head>
<body>
<div id="page">
		
	
		<div id="nav">
		
			<ul>
                                <c:if test="${pageContext.request.userPrincipal.name != null }">
                               
                                <li><a href="afterlogin">Home</a></li>
                                </c:if>
                                  <c:if test="${pageContext.request.userPrincipal.name == null }">
                            <li><a href="home">Home</a></li>
                            </c:if>
                                   <c:if test="${pageContext.request.userPrincipal.name != null }">
                                   
                                   <li style="float:right"><a href="j_spring_security_logout">Logout</a></li>
                                   
                                    <c:if test="${userLoggedIn == 'true'}">
                               <li style="float:right"><a href="myCart">My Cart</a></li> 
                               </c:if>
                                </c:if>
                                
                                 <c:if test="${pageContext.request.userPrincipal.name == null }">
                                
                                 <li style="float:right"><a href="loginPage">Login</button></li>
                                <li style="float:right"><a href="signupPage">Signup</a></li> 
                                                              
                               
                               </c:if>
      </ul>
      </div>
      
     
      
      </div>
     
</body>
</html>