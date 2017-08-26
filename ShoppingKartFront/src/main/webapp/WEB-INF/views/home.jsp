<!DOCTYPE html>
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Shopping Cart</title>
	
<style>
.back{
background: white ;
  
}

a{
	color: white;
	text-decoration: none;

}
	a:hover,
	a:active{ text-decoration: none; }

#nav ul {
    list-style-type: none;
    margin:0 0 .5em 0;
    padding: 0;
    background-color: white;
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

#page{ margin: 20px; }
</style>
</head>
<body class="back">

			<h1><a><font color="#ff0066">Shopping Cart</font></a></h1>
		
 <%@include file="/WEB-INF/views/Menu.jsp" %>
 <%@include file="/WEB-INF/views/Carousel.jsp" %>
  <c:choose>
     <c:when test="${not empty loginButtonClicked}">    
     
      <%@include file="/WEB-INF/views/NewLogin.jsp" %>
     </c:when>
     
     <c:when test="${not empty signupButtonClicked}">
     
    <%@include file="/WEB-INF/views/NewSignup.jsp" %>
     </c:when>
     
     <c:when test="${not empty productDescClicked}">
     
    <%@include file="/WEB-INF/views/ProductDescription.jsp" %>
     </c:when>
     
     <c:otherwise> <%@include file="/WEB-INF/views/productList.jsp" %></c:otherwise>
     </c:choose> 
    
     
</body>

</html>
