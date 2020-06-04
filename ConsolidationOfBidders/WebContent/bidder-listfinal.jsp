<%@page import="bidder.Bidderapplication"%> 
<%@page import="java.util.ArrayList"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BIDDER LIST</title>
<link rel="stylesheet" type="text/css" href="css/tabledesign.css"/>
</head>
<body>

<h1>THE REGISTERED BIDDERS</h1>
<table>
			
				<tr>
					<th>ITEM</th>
					<th>AADHAR</th>
					<th>AGE</th>
					<th>ADDRESS</th>
					<th>MONTHLY SALARY</th>
					<th>BANK BALANCE</th>
					<th>PREVIOUS EXPERIENCE</th>
					<th>BUYER_ID</th>
				</tr>
				<%ArrayList<Bidderapplication>bidder=(ArrayList<Bidderapplication>)request.getAttribute("BIDDER-LIST");
				for(Bidderapplication s:bidder){%>
				<tr>
				<td><%=s.getItem() %></td>
				<td><%=s.getAadhar() %></td>
				<td><%=s.getAge() %></td>
				<td><%=s.getAddress() %></td>
				<td><%=s.getMonthly() %></td>
				<td><%=s.getBb() %></td>
				<td><%=s.getPre() %></td>
				<td><%=s.getBuyer_id() %></td>
				</tr>
				<%} %>
				
				
			</table>
			<br/>
			<br/>
			<a href="approve.jsp">APPROVE BIDDER LIST FOR AUCTION</a>
		

</body>
</html>