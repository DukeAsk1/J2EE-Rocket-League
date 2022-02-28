<%-- 
    Document   : info
    Created on : 25 févr. 2022, 22:46:11
    Author     : William Lee
--%>
    <jsp:useBean id="UserBean" scope="session" class="projet.UserBean"/>
       <jsp:setProperty name="UserBean" property="*"/>   
       
<% if ("remember".equals(request.getParameter("remember"))) { %> <!-- si l'utilisateur a coché la case "remember" -->
<% UserBean.addInfo(request.getParameter("game_user"), request.getParameter("game_plat"), request.getParameter("id_card"), request.getParameter("id_key"), true);%>
   
<% } else { %>
<% UserBean.addInfo(request.getParameter("game_user"), request.getParameter("game_plat"), request.getParameter("id_card"), request.getParameter("id_key"), false);%>
<% } %>

    <jsp:forward page="end.jsp"/> 