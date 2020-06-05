<%@page import="java.util.Iterator"%>
<%@page import="bankruptcygenerations.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="Bankruptcy.Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply</title>
</head>
<body style='background-color: #CEF6F5;'>
<hr>
         <center>
         <h3><font face = "Verdana" size = "12">VIT BANK</font></h3>
                <hr>
        <br>
        </center>

        
<center><h3><font face = "Verdana" size = "6">Apply For Bankruptcy</font></h3></center>
<center>
                <div align ="center" style="width:450px; height:300px; background: #81DAF5;border-radius: 40px;">
<form action="controller/insert.jsp">

<table border="1">
 <pre><br><br><br>
FirstName :  <input type="text" name="FirstName"><br>
LastName:    <input type="text" name="LastName"><br>
LoanId:      <input type="text" name="LoanId"><br>
BankruptcyId: <input type="text" name="BankruptcyId"><br>
Phone: <input type="text" name="Phone"><br>


 <input type="submit" value="Insert"> 
</pre>

</form>
</div>
</table>

<a href ="success.jsp"><button type="button" style="background-color: mintcream; border-radius: 10px;width: 100px;height:30px;">Submit</button></a><br><br>

</center>
</body>
</html>
