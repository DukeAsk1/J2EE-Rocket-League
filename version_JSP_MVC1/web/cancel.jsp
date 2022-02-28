   <jsp:useBean id="CartBean" scope="session" class="projet.CartBean"/>
   <jsp:setProperty name="CartBean" property="*"/>    

<% if("cancel".equals(request.getParameter("cancel"))){ %>
    <% CartBean.takeOff(); %> <!-- on retire le dernier article du panier -->
    <jsp:forward page="cart.jsp"/> <!-- on va à la page cart.jsp -->
<% } else { %>
<% } %>