<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REJECT APPLICATION</title>
<link rel="stylesheet" type="text/css" href="css/style2.css"/>
</head>
<body>
<h1 style="text-align:center">REJECT APPLICATION</h1>
<br/>
<br/>
<div>
<form action="controllerservlet" method="GET">
<input type="hidden" name="command" value="DELETE" />
BUYER ID:<br/><input type="text" name="buyer id"/>
<br/>
<br/>
<input type="submit" value="login"/>
</form>
</div>

</body>
</html>