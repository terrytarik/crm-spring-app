<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: taras
  Date: 29.01.2020
  Time: 23:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Form</title>
    <link href="../../resources/css/customerForm.css" rel="stylesheet" type="text/css" >
    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
<div class="add_customer_box">
    <h1>Add Customer</h1>
    <div class="customer_fields">
        <form:form action="saveCustomer" modelAttribute="customer" method="post">
            <form:hidden path="id"/>
            <p>First Name</p>
            <form:input path="firstName"/>
            <p>Last Name</p>
            <form:input path="lastName"/>
            <p>Email</p>
            <form:input path="email"/>
            <input type="submit" value="submit" class="form_submit_button">
        </form:form>
    </div>
</div>
</body>
</html>
