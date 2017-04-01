<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">

<head>
<link rel="STYLESHEET" type="text/css" href="style/register.css" />

<script type="text/javascript"> 
            function displayForm(c){ 
                if(c.value == "market"){ 
                    document.getElementById("trading1").style.visibility='visible'; 
                    document.getElementById("trading2").style.visibility='hidden'; 
                } 
                else if(c.value =="limit"){ 
                    
                    document.getElementById("trading2").style.visibility='visible'; 
                } 
                else{ 
                } 
             
            }         
        </script>    


</head>
<title> Welcome to The Stock Market Trading Web Page </title>
<link rel="stylesheet" type="text/css" href="styling.css" />
<body>

<div class="body">

<div class="content">

<h1> Stock Market </h1><div style="margin: auto; position:absolute; top:5px; right:40px; width: 80px; height: 25px; ">
<a href="login.jsp">Login</a></div>
<div style="position:absolute; top:40px; right: 40px; width:80px; height:25px">
<a href="register.jsp">Register</a></div>

</div>


<!--<div class="content">
<h2><i> Build No: 1.0 </i></h2>
</div>
-->

<div class="menu">

<ul>
  <li><a href="overview.jsp">Overview</a></li>
  <li><a href="portfolio.jsp">PortFolio</a></li>
  <li><a href="#playerinfo">Player Information</a></li>
  <li><a href="trading.jsp">Go to Trading</a></li>
</ul>

</div>


<div class="banner">
<table border ="0.5">
<tr>
<td>
<a href="trading.jsp" class="myButton">Trading</a>
</td>
<td>
<a href="amend.jsp" class="myButton">Amend</a>
</td>
</tr>
</table>
</div>

<div id='trading'>
<form id='trading1' action='' method='post' accept-charset='UTF-8'>
<fieldset>
<legend><b>Amending</b></legend>

<input type='hidden' name='submitted' id='submitted' value='1'/>

<div class="short_explanation">* required fields</div>

<p></p>
<div><span class='error'></span></div>

<div class='container'>
    <label for='username' >Order Type:&nbsp;&nbsp;</label>
    <input type="radio" name="item" value="buy" checked="checked" />Buy
	<input type="radio" name="item" value="sell"/>Sell
</div>

<p></p>
<div class='container'>
    <label for='code' style = 'margin-left: 40px;' >Stock Code:  &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</label>
    <select>
  <option value="code1">AAA1234</option>
  <option value="code2">BBB1234</option>
  <option value="code3">CCC1234</option>
  <option value="code4">DDD1234</option>
</select>
</div>
<label for='stockprice' style = 'margin-right: -160px;font-size:10px;' >Stock Price: $ &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;</label>
<br></br>
<br></br>
    <label for='quantity' >Quantity: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input style = 'width:50px' type="number" min="0" max="100" name="quantity" id='quantity'  maxlength="2" /> <br></br><br></br> 

<div>
    <label for='price' style = 'margin-left: 30px;' >Price: &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;</label>
    <input type="radio" name="price" value="limit" checked="checked" onclick="displayForm(this)" />Limit
	<input type="radio" name="price" value="market" onclick="displayForm(this)"/>Market
	
</div>
<br></br>
<form id='trading2' action='' accept-charset='UTF-8'>
    <label for='limit' style = 'margin-left: -2px;' >Limit:  &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input style = 'width: 50px;' type="number" min="0" max="100" name="limit" id='quantity' maxlength="2" /> <br></br><br></br> 
</form>




<div class='container'>
    <input type='submit' name='Modify Stock' value='Modify Stock' />
</div>

</fieldset>

</form>
</div>


</div>
</body>
</html>