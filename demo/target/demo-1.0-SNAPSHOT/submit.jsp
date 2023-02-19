<%@ page import="java.io.PrintWriter" %>
<%--
  Created by IntelliJ IDEA.
  User: ronak
  Date: 29-01-2023
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="ISO-8859-1" %>
<html>
<head>
    <title>Form result</title>
</head>
<body>

Name: <%= request.getParameter("name")%><br/>
Gender: <%= request.getParameter("gender")%><br/>
Language: <%
    String[] langs = request.getParameterValues("lang");
    if (langs != null){
    for (int i  =0; i<langs.length;i++){
        out.print("<br/>");
        out.print(langs[i]);}
    } else {
    out.print("null");
}
%>
<br/>
Country: <%= request.getParameter("country")%><br/>
</body>
</html>
