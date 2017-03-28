<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
<style>
.box1 {
    position: relative;
    top: 10px;
    left: 15px;
    width: 450px;
	padding: 80px;
    border: 2px solid black;
}

.box2 {
    position: relative;
    top: 40px;
    left: 15px;
    width: 450px;
	height: 150px;
	padding: 80px;
    border: 2px solid black;    
}

.box3 {
	position: absolute;
	top: 160px;
	left: 1020px;
	width: 300px;
	padding: 10px;
	border: 2px solid black;
}

.box4 {
	position: absolute;
	top: 210px;
	left: 930px;
	width: 350px;
	padding: 30px;
	border: 2px solid black;
}

.box5 {
	position: absolute;
	top: 400px;
	left: 680px;
	width: 500px;
	height: 140px;
	padding: 80px;
	border: 2px solid black;
	
}

</style>
</head>
<title> Welcome to The Stock Market Trading Web Page </title>
<link rel="stylesheet" type="text/css" href="styling.css" />
<body>

<div class="body">

<div class="content">

<div style=" clear:both;"><h1> Stock Market </h1></div>
<a href="login.jsp"><img  style="margin: auto; position:absolute; top:5px; right:40px; width: 80px; height: 25px;" src="LoginButton.png"/></a>
<a href="register.jsp"><img style="position:absolute; top:40px; right: 40px; width:80px; height:25px" src="register-green.jpg"/></a>
</div>



<div class="menu">

<ul>
  <li><a href="overview.jsp">Overview</a></li>
  <li><a href="portfolio.jsp">PortFolio</a></li>
  <li><a href="#trade">Player Information</a></li>
  <li><a href="#myAccount">Go to Trading</a></li>
</ul>

</div>
<p></p>

<div class="box1">Box1</div>
<div class="box2">Box2</div>
<div class="box3">Box3</div>	
<div class="box4">Box4</div>	
<div class="box5">Box5</div>

<p>&nbsp; </p>
<p>&nbsp; </p>
</div>
</body>
</html>