<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
<link rel="STYLESHEET" type="text/css" href="style/register.css" />
</head>
<title> Welcome to The Stock Market Trading Web Page </title>
<link rel="stylesheet" type="text/css" href="styling.css" />
<body>

<div class="body">

<div class="content">

<h1> Stock Market </h1>

<!--<img src="LoginButton.png" alt="Login" style="width:100px;height:50px;"/>-->
<a href="login.jsp"><img  style="position:absolute; top:15px; left:1050px; width:100px; height:50px" src="LoginButton.png"/></a>
<a href="register.jsp"><img style="position:absolute; top:15px; left:1250px; width:100px; height:50px" src="register-green.jpg"/></a>

</div>


<!--<div class="content">
<h2><i> Build No: 1.0 </i></h2>
</div>
-->

<div class="menu">

<ul>
  <li><a href="index.jsp">Home</a></li>
  <li><a href="#searchstock">Search Stock</a></li>
  <li><a href="#trade">Trade</a></li>
  <li><a href="#myAccount">myAccount</a></li>
</ul>

</div>

<p></p>

<div id='register'>
<form id='login' action='' method='post' accept-charset='UTF-8'>
<fieldset>
<legend><b>Login Page</b></legend>

<input type='hidden' name='submitted' id='submitted' value='1'/>

<div class="short_explanation">* required fields</div>

<p></p>
<div><span class='error'></span></div>

<div class='container'>
    <label for='username' >UserName*:</label><br/>
    <input type='text' name='username' id='username' value='' maxlength="50" /><br/>
    <span id='register_username_errorloc' class='error'></span>
</div>

<p></p>
<div class='container' style='height:80px;'>
    <label for='password' >Password*:</label><br/>
    <div class='pwdwidgetdiv' id='thepwddiv' ></div>
    <input type='password' name='password' id='password' maxlength="50" />  
    <div id='register_password_errorloc' class='error' style='clear:both'></div>
</div>


<div class='container'>
    <input type='submit' name='Submit' value='Submit' />
</div>

</fieldset>
</form>
</div>


</div>
</body>
</html>