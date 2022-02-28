<%-- 
    Document   : user
    Created on : 25 févr. 2022, 12:35:17
    Author     : William Lee
--%>

    <jsp:useBean id="UserBean" scope="session" class="projet.UserBean"/>
   <jsp:setProperty name="UserBean" property="*"/>   
    
    <% if (UserBean.userExist(request.getParameter("username"))) { %> <!-- si l'utilisateur existe -->
        <% if (UserBean.userLogin(request.getParameter("username"),request.getParameter("password"))) { %> <!-- et si l'username et le password correspondent -->
            <% UserBean.setUser(request.getParameter("username"));%>
            <jsp:forward page="shop.jsp"/> <!-- on accède au shop -->
         <% } else { %>
            <jsp:forward page="login.jsp"/> <!-- si l'username et le password ne correspondent pas, on retourne à la page d'accueil -->
         <% } %>
    <% } else { %> <!-- si l'utilisateur n'existe pas, on est redirigé vers le formulaire d'enregistrement -->
        <jsp:forward page="regform.jsp"/>
    <% } %>