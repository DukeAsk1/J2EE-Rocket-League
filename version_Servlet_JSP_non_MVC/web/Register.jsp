<%-- 
    Document   : Register.jsp
    Created on : 22 janv. 2022, 23:07:11
    Author     : Hoang-Duc DUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="Bean" class="pj.support"/>
        <% Bean.insertUser(request, response);
        %>
    </body>
</html>
