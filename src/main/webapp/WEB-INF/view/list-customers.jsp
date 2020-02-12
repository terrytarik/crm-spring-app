<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: taras
  Date: 28.01.2020
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Customer Table</title>
    <link href="../../resources/css/customerTable.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
<div class="table_container">
    <input type="button" value="Add Customer" class="table_button"
           onclick="window.location.href='showFormForAdd';">
    <table class="customer_table">
        <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tempCustomer" items="${customers}">
            <c:url var="updateLink" value="/customer/updateCustomer">
                <c:param name="customerId" value="${tempCustomer.id}"/>
            </c:url>
            <c:url var="deleteLink" value="/customer/deleteCustomer">
                <c:param name="deleteCustomerId" value="${tempCustomer.id}"/>
            </c:url>
            <tr>
                <td>${tempCustomer.id}</td>
                <td>${tempCustomer.firstName}</td>
                <td>${tempCustomer.lastName}</td>
                <td>${tempCustomer.email}</td>
                <td>
                    <a href="${updateLink}">update</a>
                    <a href="${deleteLink}">delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
