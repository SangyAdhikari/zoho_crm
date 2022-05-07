<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@include file="menu.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>lead Info</title>
</head>
<body>
<h2>Bill Info</h2>
Id:${bill.id}<br/>
First Name: ${bill.firstName}<br/>
Last Name: ${bill.lastName}<br/>
email : ${bill.email}<br/>
Lead Source: ${bill.productName}<br/> 
Mobile : ${bill.amount}<br/>
<form action="pdf" method="post">
<input type="submit" value ="generate pdf"/>
</form>
</body>
</html>