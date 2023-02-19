<%--
  Created by IntelliJ IDEA.
  User: ronak
  Date: 02-02-2023
  Time: 23:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>loign Form   </title>

</head>
<body>
<form action="<%= request.getContextPath()%>/Controller" method="post">
    Username: <input type="text" name="username" ><br>
    Password: <input type="password" name="password" ><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
