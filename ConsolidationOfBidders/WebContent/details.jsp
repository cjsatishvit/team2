<html>
<head>
<title>APPLICATION FORM</title>
<link rel="stylesheet" type="text/css" href="css/style3.css"/>
</head>

<body>
<h2 style="text-align:center">YOU HAVE SUCCESSFULLY LOGGED IN</h2>
<h3 style="text-align:center">ENTER THE DETAILS FOR BIDDER APPLICATION</h3>
<div>
<form action="controllerservlet" method="GET">
<input type="hidden" name="command" value="CONFIRM" />
PLEASE ENTER YOUR REGISTERED BUYER ID:<br/><input type="text" name="buyer id"/>
<br/>
<br/>
TYPE OF ITEM:<br/>
<input type="radio" name="rf" value="home">HOMES
<input type="radio" name="rf" value="car">CARS
<input type="radio" name="rf" value="jewellery">JEWELS
<br/>
<br/>
AADHAR NUMBER:<br/><input type="text" name="aadhar" required/>
<br/>
<br/>
AGE:<br/><input type="text" name="age" required/>
<br/>
<br/>
ADDRESS:<br/><input type="text" name="address" required/>
<br/>
<br/>
MONTHLY SALARY:<br/><input type="number" name="salary" required/>
<br/>
<br/>
BANK BALANCE:<br/><input type="number" name="bank balance" required/>
<br/>
<br/>
PREVIOUS EXPERIENCE (YES/NO):<br/><input type="text" name="prev" required/>
<br/>
<br/>
<input type="submit" value="submit"/>





</form>



</div>


</body>



</html>