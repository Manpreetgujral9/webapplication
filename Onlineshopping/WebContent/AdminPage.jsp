<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="images/picb.jpg;">
<br><br><br><br>
<form action="UploadServlet" method="post" enctype="multipart/form-data" style="color:white; font-size:17px;text-align:center;">
<strong><pre>
ProductName: <input type="text" name="ProductName">
<br><br>
ProductBrand: <input type="text" name="ProductBrand">
<br><br>
Category:    <input type="text" name="Category">
<br><br>
Description: <input type="text" name="Description">
<br><br>
Discount:    <input type="text" name="Discount">
<br><br>
Price:       <input type="number" name="Price">
<br><br>
Rating:      <input type="text" name="Rating">
<br><br>
<input type="file" name="file" size="50"/><br>
<input type="submit" value="Add Product">
</pre></strong>
</form>
</body>
</html>