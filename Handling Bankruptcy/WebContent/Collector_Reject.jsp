<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "bankruptcy";
String userid = "root";
String password = "1234";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<body style='background-color: #CEF6F5;'>
<hr>
         <center>
        <h3><font face = "Verdana" size = "12">VIT BANK</font></h3>
                <hr>
        <br>
        </center>


<center>
<div align ="center" style="width:600px; height:400px; background: #81DAF5;border-radius: 40px;">
<br>
<br>
<table border="1">

<tr>
<td>FirstName</td>
<td>LastName</td>
<td>Loan_id</td>
<td>Bankruptcy_id</td>
<td>Phone_Number</td>
<td>Status</td>







</tr>
</center>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankruptcy","root", "1234");
statement=connection.createStatement();
String sql =" select * from status where Status = 'Rejected'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("FirstName") %></td>
<td><%=resultSet.getString("LastName") %></td>
<td><%=resultSet.getString("LoanId") %></td>
<td><%=resultSet.getString("BankruptcyId") %></td>
<td><%=resultSet.getString("Phone") %></td>
<td><%=resultSet.getString("Status") %></td>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
