<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<font color="#0066ff">Welcome ${pageContext.request.userPrincipal.name}</font><br><br>

<h1><a><font color="#ff0066">Shopping Cart</font></a></h1>

<%@include file="/WEB-INF/views/Menu.jsp" %>
<br>


  <c:choose>
  
  <c:when test="${not empty productDescClicked}">
     
    <%@include file="/WEB-INF/views/ProductDescription.jsp" %>
     </c:when>
       <c:when test="${not empty myCartClicked}">    
     
      <%@include file="/WEB-INF/views/MyCart.jsp" %>
     </c:when>
     <c:when test="${not empty viewShippingAddressClicked}">    
     
      <%@include file="/WEB-INF/views/ViewShippingaddress.jsp" %>
     </c:when>
      <c:when test="${newShippingaddressClicked == 'true'}">    
     
      <%@include file="/WEB-INF/views/NewShippingaddress.jsp" %>
     </c:when>
     <c:when test="${ not empty editShippingAddressClicked}">    
     
      <%@include file="/WEB-INF/views/EditShippingAddress.jsp" %>
     </c:when>
      <c:when test="${ not empty thankyouPage}">    
     
      <%@include file="/WEB-INF/views/thankyouPage.jsp" %>
     </c:when>
  <c:otherwise> <%@include file="/WEB-INF/views/productList.jsp" %></c:otherwise>
  </c:choose>
</body>
</html>