<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Login</title>
</head>
<body>
	<h1 style="text-align: center; text-color: Blue">Staff Login</h1>
	<br>
	<br>
	<form action="Login" method="post">
		<table
			style="background-color: powderblue; margin-left: 370px; margin-top: 60px">
			<tr>
				<td><h3 style="color:red;">${message}</h3>
				<h3 style="color:green;">${successmessage}</h3></td>
				<td></td>
			</tr>
			<tr>
				<td>UserName :</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</body>
</html>