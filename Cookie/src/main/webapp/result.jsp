<%--
  Created by IntelliJ IDEA.
  User: ronak
  Date: 02-02-2023
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
      <title>Result </title>

</head>
<body>
<%
      String username = null, sessionID = null;
      if(request.getSession().getAttribute("username") == null){
            response.sendRedirect("login.jsp");
      } else {
            username = request.getSession().getAttribute("username").toString();
            sessionID = request.getSession().getId();
      }
%>
      <%--Cookie[] cookies = request.getCookies();
      if (cookies != null) {
            for (Cookie i : cookies) {
                  if(i.getName().equals("username")){
                        username = i.getValue();
                  } if (i.getName().equals("JSESSIONID")){
                        sessionID = i.getValue();
                  }
            }
      }

      if(sessionID == null || username == null  ){
            response.sendRedirect("login.jsp");
      }--%>

username: <%= username %><br>
sessionID: <%= sessionID%><br>

<form action="<%= request.getContextPath()%>/resultController" method="post">
      <input type="hidden" name="action" value="destroy" >
      <input type="submit" value="logout">

</form>
</body>
</html>
