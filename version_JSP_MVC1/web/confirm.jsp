<%-- 
    Document   : summary
    Created on : 26 févr. 2022, 01:49:20
    Author     : William Lee
--%>

   <jsp:useBean id="CartBean" scope="session" class="projet.CartBean"/>
   <jsp:setProperty name="CartBean" property="*"/>    
   
    <% if(CartBean.totalCart()==0) { %> <!-- si le panier est vide -->
        <jsp:forward page="cart.jsp"/>

    <% } else { %> <!-- si le panier n'est pas vide on continue le processus de paiement -->
        <jsp:forward page="summaryView.jsp"/>
    <% } %>
