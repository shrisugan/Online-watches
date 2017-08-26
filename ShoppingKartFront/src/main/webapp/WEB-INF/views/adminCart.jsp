<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
table {
    border-collapse: collapse;
    width: 80%;
    
}

table, td {
    border: 1px solid black;
    height: 30px;
    
}

</style>
<body>

	<div class="login-form">
		<center>
			<br>
			<br>
			<br>
			<br>
			<br>
			<h1>Product Added To Cart</h1><br>

<table>
	
			
					<thead>
						<tr>
							<td>Serial no</td>

							<span><td>Product Name</td></span>
							<span><td>Quantity</td></span>
							<td>Product Price</td>
							<td>Total</td>
							<td>User Name</td>
							<td>User ID</td>
							<td>Product Id</td>
							<td>Date</td>
						</tr>
					</thead>
					<c:forEach items="${cartList}" var="cart" varStatus="status">
						<tr>
							<td>${status.count}</td>


							<td>${cart.productName }</td>
							<td>${cart.qty}</td>
							<td>${cart.price }</td>
							<td>${cart.total}</td>
							<td>${cart.userName }</td>
							<td>${cart.userId }</td>
							<td>${cart.productId }</td>
							<td>${cart.addDate }</td>
						</tr>
					</c:forEach>
					</div>


				</table>
				<br>
</center>


			</div>
</body>
</html>