<html>
<head><title>BIDDER REGISTRATION FORM</title>
<link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<h1 style="text-align:center">BIDDER REGISTRATION FORM</h1>
<br/>
<div>
<form action="controllerservlet" method="GET">
<input type="hidden" name="command" value="REG" />
BUYER ID:<br/><input type="text" name="buyer id" required/>
<br/>
<br/>
FIRST NAME:<br/><input type="text" name="fname" required/>
<br/>
<br/>
LAST NAME:<br/><input type="text" name="lname" required/>
<br/>
<br/>
PHONE NUMBER:<br/><input type="number" name="phone number" required/>
<br/>
<br/>
EMAIL:<br/><input type="email" name="email" required/>
<br/>
<br/>
PASSWORD:<br/><input type="password" name="pwd" required/>
<br/>
<br/>
<input type="submit" value="submit"/>
</form>
</div>
</body>
</html>