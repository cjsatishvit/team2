<%@page import="Bankruptcy.Insert_NoticeValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String FirstName=request.getParameter("FirstName");
String LastName=request.getParameter("LastName");
String LoanId=request.getParameter("LoanId");
String BankruptcyId=request.getParameter("BankruptcyId");
String Phone=request.getParameter("Phone");


Insert_NoticeValues obj_Insert_NoticeValues=new Insert_NoticeValues();

obj_Insert_NoticeValues.insert_noticevalues(FirstName, LastName, LoanId, BankruptcyId, Phone);


%>
SUCCESS

</script>
</body>
</html>