<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About Us</title>
 
     
<link rel="stylesheet" href="Style.css">
     <link rel="stylesheet" href="css/bootstrap.css" />
     <link rel="stylesheet" href="css/bootstrap-theme.min.css"/>
     <link rel="stylesheet" href="css/bootstrap.min.css"/>
     <link rel="stylesheet" href="css/style.css" />
     <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <style>
      a:link {
    color: black;
    }
      a:visited {
    color: black;
    }
      a:hover {
    color:white;
    }
    a:active {
    color: blue;
    }
    body{
    margin-bottom:0px;
    }
    th{
    width:100px;
    text-align:center;
    }
    

    </style>
     
</head>
<body>
<body background="images/aa.jpg">
    
       <nav class="cool ">
      <b><a href="index.jsp"><i class="fa fa-home fa-fw" aria-hidden="true" style="color:red;"></i>&nbsp; Home</a> |
          <a href="Product.jsp"><i class="fa fa-product-hunt fa-fw" aria-hidden="true" style="color:#0000FF;"></i>&nbsp; Product</a> |
           <a href="AboutUs.jsp"><i class="fa fa-users fa-fw" aria-hidden="true" style="color:#00FF00;"></i>&nbsp; About us</a> |
		  <a href="ContactUs.jsp"><i class="fa fa-mobile fa-fw" aria-hidden="true"style="color:#F52887;"></i>&nbsp; Contact us</a>|
		  

  <ul class="nav navbar-nav pull-right">
      <li><a href="SignUp.jsp"><span class="fa fa-sign-in"style="color:yellow;"></span> Signup</a></li>
  </ul>
  <ul class="nav navbar-nav pull-right">
      <li><a href="Login.jsp"><span class="glyphicon glyphicon-user"style="color:orange;"></span> Login</a></li>
  </ul>

</nav>
<br>
    </div>
	

    <sql:setDataSource
        var="myDS"
        driver="oracle.jdbc.driver.OracleDriver"
        url="jdbc:oracle:thin:@localhost:1521:XE"
        user="manpreet1" password="pass"
    />
     
    <sql:query var="listProduct1"   dataSource="${myDS}">
        select * from Product1
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Products</h2></caption>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Brand</th>
                <th>category</th>
                <th>Price</th>
                <th>Discount</th>
                <th>Description</th>
            </tr>
           
            <c:forEach var="Product1" items="${listProduct1.rows}">
                <tr>
                    <td><c:out value="${Product1.Pid }" /></td>
                    <td><c:out value="${Product1.ProductName}" /></td>
                    <td><c:out value="${Product1.ProductBrand}" /></td>
                    <td><c:out value="${Product1.Category}" /></td>
                    <td><c:out value="${Product1.Price}" /></td>
                    <td><c:out value="${Product1.Discount}" /></td>
                    <td><c:out value="${Product1.Description}" /></td>
                  
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>