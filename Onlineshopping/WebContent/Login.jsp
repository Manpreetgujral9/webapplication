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
<div id="login">
<h1 style="font-size:2em;">Welcome </h1>
<h1 style="font-size:1em;">Login here to continue </h1>
<form action="Loginservlet" method="post">
<fieldset>
<b><label for="username">Enter UserName:</label></b>
<p><input type="text" name="Username"> </p>
<b><label for="password">Password:</label></b>
<p><input type="password" name="Password"></p>
<p><a href="#"style="font-size:30px;">Forgot Password?</a></p>
<p><input type="submit" value="Login"></p>
</fieldset>
</form>
<p><span class="btn-round">or</span></p>
<p>Not have a account ,<a href="SignUp.jsp"><span class="fa fa-sign-in"style="color:blue;"></span> SignUp here</a> </p>

</div> <!-- end login -->
<div class="lfloat">Copyright © 2017, ShopAtHome Private Limited. All Rights Reserved
<div class="rfloat heartLine pull-right ">
Made with
<i class="fa fa-heartbeat big" aria-hidden="true"></i>
in India</div></div>
</body>
</html>