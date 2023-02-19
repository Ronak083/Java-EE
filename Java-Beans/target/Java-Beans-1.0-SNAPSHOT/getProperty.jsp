<%--
  Created by IntelliJ IDEA.
  User: ronak
  Date: 31-01-2023
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get Property</title>
</head>
<body>
<jsp:useBean id="user" class="com.example.javabeans.User" scope="session" ></jsp:useBean>
First Name: <jsp:getProperty name="user" property="firstName"/><br/>
Last Name: <jsp:getProperty name="user" property="lastName"/>
Values has been Set
</body>
</html>
