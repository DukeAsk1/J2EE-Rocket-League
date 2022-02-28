<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
    Document   : confirm.jsp
    Author     : Hoang-Duc DUONG
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="Bean" class="pj.support"/>
        <% Bean.isRegistered(request, response);
        %>    
    </body>
</html>
