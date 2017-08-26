
<form action="productEdited" method="post">
  <br><br><br>Product Id:<br>
  <input type="text" name="ProductId" value="${product.productId}" readonly="true" ><br><br>
  Product Name:<br>
  <input type="text" name="ProductName" value="${product.productName}"><br><br>
  Product Description:<br>
  <input type="text" name="ProductDescription" value="${product.productDescription}" ><br><br>
  <input type="submit" value="Submit">
</form>
