<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 250px;
    height: 100%;
    padding: 30px;
    
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: 100%;
   
     
}

div.desc {
    padding: 15px;
    text-align: center;
}
</style>
</head>
<body>
<a href="productDescription?productId=${product.productId}">
<img src="resources/image/products/${product.productId}.jpg" alt="${product.productId}" width="100%" height="100%">
</a>
  <div class="desc"><ul style="list-style-type:none">
  <li class="span2"><h5 style="color: blue" >${product.productName}</h5>
  <h6>Price:${product.price}</h6></li></ul></div>
</div>
</body>
</html>