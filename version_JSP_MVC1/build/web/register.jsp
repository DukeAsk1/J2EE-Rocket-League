

<%@page contentType="text/html" pageEncoding="UTF-8"%>

   
    <jsp:useBean id="UserBean" scope="session" class="projet.UserBean"/>
    <jsp:setProperty name="UserBean" property="*"/>   
    
    <% UserBean.addUser(request.getParameter("username"),request.getParameter("password"),request.getParameter("email"),request.getParameter("firstname"),request.getParameter("lastname"));%>

    <% UserBean.setUser(request.getParameter("username"));%>
    
    <jsp:forward page="shop.jsp"/>