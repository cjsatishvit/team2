<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Roboto" />
<style>
body {
	background: #4CA1AF; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #C4E0E5, #4CA1AF);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to down, #C4E0E5, #4CA1AF);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

.panel-footer {
	display: flex;
	padding: 3% 10% 1.5% 10%;
}

.button-panel {
	display: flex;
	display: flex;
	padding: 0% 10%;
	width: 50%;
}

.header-footer-item {
	display: inline-block;
	text-align: right;
	align-self: center;
}

.button-item {
	align-self: center;
	text-align: justify;
}

button {
	background-color: black;
	color: white;
	border: none;
	height: 40px;
	line-height: 40px;
	text-align: center;
	width: 10em;
}

.toast-message {
	text-align: center;
	font-size: 16px;
	position: absolute;
	right: 0;
	bottom: 0;
	margin-right: 10%;
	margin-bottom: 6%;
}

.submit-button {
	position: absolute;
	right: 0;
	bottom: 0;
	margin-right: 10%;
	margin-bottom: 10%;
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
}

label {
	font-size: 1.5rem;
	margin-right: 5%;
}

table {
	display: table;
	width: 50%;
	padding: 3% 10% 1.5% 10%;
}
</style>
<meta charset="ISO-8859-1">
<title>Check Status Page</title>
</head>
<body>
	<%@ include file="header.jsp"%>
	<div class="panel-footer">
		<h2>Welcome Collector</h2>
		<span style="width: 100%;" class="header-footer-item">
			<button type="button">Logout</button>
		</span>
	</div>
	<p style="margin-left:10%; font-weight: bold; font-size: 1rem">${message}</p>
	<form action="checkStatus" method="post">
		<table>
			<tr>
				<td><label for="name">Enter Customer ID:</label></td>
				<td><input type="text" id="name" name="cid" required
					minlength="4" maxlength="10" size="10"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><label for="start">Enter Loan ID:</label></td>
				<td><input type="text" id="name" name="lid" required
					minlength="3" maxlength="12" size="10">
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
		<button style="margin-left: 27.5%;" type="submit" name="submit"
			value="Submit">Submit</button>
	</form>
	<div class="footer"><%@ include file="footer.jsp"%>
	</div>
</body>
</html>