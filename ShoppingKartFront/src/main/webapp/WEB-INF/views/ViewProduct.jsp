<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<br><br><br>List of Product<br><br>
<head>
<style>
@import "http://fonts.googleapis.com/css?family=Montserrat:300,400,700";
.rwd-table {
 margin: 1em 8em;
  min-width: 50px;
}
.rwd-table tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
}
.rwd-table th {
  display: none;
}
.rwd-table td {
  display: block;
}
.rwd-table td:first-child {
  padding-top: .5em;
}
.rwd-table td:last-child {
  padding-bottom: .5em;
}
.rwd-table td:before {
  content: attr(data-th) ": ";
  font-weight: bold;
  width: 6.5em;
  display: inline-block;
}
@media (min-width: 480px) {
  .rwd-table td:before {
    display: none;
  }
}
.rwd-table th, .rwd-table td {
  text-align: left;
}
@media (min-width: 480px) {
  .rwd-table th, .rwd-table td {
    display: table-cell;
    padding: .25em .5em;
  }
  .rwd-table th:first-child, .rwd-table td:first-child {
    padding-left: 0;
  }
  .rwd-table th:last-child, .rwd-table td:last-child {
    padding-right: 0;
  }
}

body {
  padding: 0 2em;
  font-family: Montserrat, sans-serif;
  -webkit-font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
  color: #444;
  background: #eee;
}

h1 {
  font-weight: normal;
  letter-spacing: -1px;
  color: #34495E;
}

.rwd-table {
  background: #34495E;
  color: #fff;
  border-radius: .4em;
  overflow: hidden;
}
.rwd-table tr {
  border-color: #46637f;
}
.rwd-table th, .rwd-table td {
  margin: .5em 1em;
}
@media (min-width: 480px) {
  .rwd-table th, .rwd-table td {
    padding: 1em !important;
  }
}
.rwd-table th, .rwd-table td:before {
  color: #dd5;
}
</style>
</head>
<body>
<table class="rwd-table">
  <tr>
    <th align="left">S.No</th>
		<th>Id</th>
		<th>Product Image</th>
		<th>Name</th>
		<th>Description</th>
		<th>Stock</th>
		<th>Price</th>
		<th>Category</th>
		<th>SupplierName</th>
		<th>Edit</th>
		<th>Delete</th>
  </tr>
  <c:forEach items="${productList}" var="product" varStatus="status">
  <tr>
    <td>${status.count}</td>
			<td>${product.productId}</td>
			<td> <img src="resources/image/products/${product.productId}.jpg" alt="${product.productId}" width=100px; height=100px;></td>
			<td>${product.productName}</td>
			<td>${product.productDescription}</td>
			<td>${product.stock}</td>
			<td>${product.price}</td>
			<td>${product.category}</td>
			<td>${product.supplierName}</td>
			
			<td><a href="editProduct?productId=${product.productId}">Edit</a></td>
			<td><a href="deleteProduct?productId=${product.productId}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${product.productName} ?')">Delete</a></td>
  </tr>
  </c:forEach>
</table>
</body>

