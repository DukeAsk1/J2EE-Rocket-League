<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
    Document   : Login.jsp
    Author     : Hoang-Duc DUONG
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="Bean" class="pj.support"/>
        <% Bean.userLogin(request, response);
        %>    
    </body>
</html>

