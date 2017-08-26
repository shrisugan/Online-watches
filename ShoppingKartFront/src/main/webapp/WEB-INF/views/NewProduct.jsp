<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <br><br><br><br>Product Name:<br>
  <script>
  function formProduct(){
		// Make quick references to our fields
		
		var productname = document.getElementById('productname');
		var productdescription = document.getElementById('productdescription');
		var category = document.getElementById('category');
		var suppliername = document.getElementById('suppliername');
		var price = document.getElementById('price');
		var stock = document.getElementById('stock');

		// Check each input in the order that it appears in the form!
		
					if (notEmpty(productname, "Product Name Should not be empty")) {
							if (isAlphabet(productname,
									"Please enter only letters for Product Name")) {
								if (notEmpty(productdescription,"Product Description Should not be empty")){
								         if (isAlphabet(productdescription,
								        "Please enter only letters for Product Description")) {
								        	 if (notEmpty(category,"Category Should not be empty")){
								        		 if(notEmpty(suppliername, "Supplier Name should not be empty")){
								        	
										if (notEmpty(price,
												"Price Should not be empty")) {
											if (isNumeric(price,
													"Please enter only number for Price")) {
														if (notEmpty(stock,
																"Stock Should not be empty")) {
															if (isNumeric(
																	stock,
																	"Please enter a valid Stock")) {
																if(notEmpty(file, "File should not be empty")){
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
  </script>
  </head>
  <body>
  <form action="addProduct" method="post" onsubmit="return formProduct()"  enctype="multipart/form-data">
  <input type="text" name="ProductName" id="productname"><br><br>
  Product Description:<br>
  <input type="text" name="ProductDescription"  id="productdescription"><br><br>
  Category:<br>
  <select name="Category" id="category">
  <br><br><option value="">Select Category</option><br><br>
  <c:forEach items="${categoryList}" var="category" varStatus="status"><br><br>
  <option value="${category.categoryName}">${category.categoryName}</option>
  </c:forEach>
</select>
 
 <br><br> SupplierName:<br>
  <select name="SupplierName" id="suppliername"><br><br>
  <option value="">Select Supplier</option><br><br>
  <c:forEach items="${supplierList}" var="supplier" varStatus="status"><br><br>
  <option value="${supplier.supplierName}">${supplier.supplierName}</option>
  </c:forEach>
</select>
 <br><br> Price:<br>
  <input type="text" name="Price" id="price"><br><br>
  Stock:<br>
  <input type="text" name="Stock" id="stock" ><br><br>
  
 File to upload:
 <input type="file" name="file" id="file">
  <br><br><input type="submit" value="Submit">
</form>
 </body>
 </html>