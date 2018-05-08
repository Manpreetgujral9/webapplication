<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Login_page</title>
<link rel="stylesheet" href="Style1.css">
     <link rel="stylesheet" href="css/bootstrap.css" />
     <link rel="stylesheet" href="css/bootstrap-theme.min.css"/>
     <link rel="stylesheet" href="css/bootstrap.min.css"/>
     <link rel="stylesheet" href="css/style.css" />
     <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
body {
background-color:white;
color: #0C090A;
//font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
background-repeat:no-repeat;
}
a { text-decoration: #F52887; }
h1 { font-size: 2em; }
h1, p {
margin-bottom: 10px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 50px auto;
width: 300px;
}
form fieldset input[type="text"], input[type="password"] {
background-color: transparent ;
background-color:#f0e3c0;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}
form fieldset input[type="submit"] {
background-color:transparent;
background-color:#ff7300;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 300px;
-webkit-appearance:none;
}
form fieldset a {
color: #5a5656;/*or*/
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color:transparent;
background-color:#ff7300;
color:white;
border-radius: 50%;/*forgot pw*/
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: black;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}

</style>
</head>
<body>
<body>
    <div class="container-fluid ">
	  <div class="container">
	    <div class="row ">
		 <div class ="col-sm-3">
              <a href="#" class="social_icons"><i class="fa fa-facebook-square  " Style="color:#000099;font-size:20px;padding:5px;"></i></a>
              <a href="#" class="social_icons"><i class="fa fa-youtube-play "    Style="color:#FF0000;font-size:20px;padding:5px;"></i></a>	
              <a href="#" class="social_icons"><i class="fa fa-google-plus-circle" Style="color:#d34836;font-size:20px;padding:5px;"></i></a>
              <a href="#" class="social_icons"><i class="fa fa-twitter" Style="color:blue;font-size:20px;padding:5px;" ></i></a>				
		 </div>
		 <div class="col-sm-9 text-right contact_info color:#0C090A;">
		 <span class="glyphicon glyphicon-envelope color:#0C090A;"></span>manpreetgujral9@gmail.com,
		 <span class="glyphicon glyphicon-earphone color:#0C090A;"></span>+919711817632
		 </div>
		</div><!--End of row-->
	  </div><!--End of container-->
	</div><!--End of container-fluid---->
<div class="container-fluid ">
<b><h1 style="font-family:courier-header; text-align:center;color:#0C090A ;">Shop  At  Home</h1></b>
</div><!--End of container-fluid-->

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
    <h1 style="color:green;font-style:courier;margin-bottom:110px;margin-left:207px;">CONTACT US</h1>
<div class="container">
<div class="row">
<div class="col-sm-6 col-xl-6 " >
<p style="font-size:25px; margin-left:110px;">Mobile. No:9711817632</p>
<p style="font-size:25px; margin-left:110px;">Email :manpreetgujral9@gmail.com</p>
<p style="font-size:25px; margin-left:110px;">Call Us:6:30am-9:30pm</p>
<p style="font-size:25px; margin-left:110px;">Monday to Friday</p>
</div>
<div class="col-sm-6 col-xl-6 " >
<img src="images/pic1.jpg" width="60%" height="50%">
</div>

  </div></div>




</body>
</html>