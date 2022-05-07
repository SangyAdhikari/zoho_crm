<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Final Bill</title>
</head>
<body>
<h2>Bill</h2>
<table>
<tr>
  <th>Id</th>
    <th>First Name</th>
      <th>Last Name</th>
        <th>Email</th>
         <th>Mobile</th>
              <th>Product Name</th>
            <th>Amount</th>
                    
            </tr>
            <c:forEach items="${bills}" var="bill"> 
<tr>
 <td>${bill.id}</td>
  <td><a href="getBillingById?id=${lead.id}">${bill.firstName}</a></td>
 <td>${bill.lastName}</td>
 <td>${bill.email}</td>
  <td>${bill.mobile}</td>
    <td>${bill.productName}</td>
    <td>${bill.amount}</td>
 
</tr>
</c:forEach>
          </table>
          </body>
</html>