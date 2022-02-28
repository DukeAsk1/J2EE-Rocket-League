   <jsp:useBean id="CartBean" scope="session" class="projet.CartBean"/>
   <jsp:setProperty name="CartBean" property="*"/>     

   
    <jsp:getProperty name="CartBean" property="list" /> <!-- affichage du panier -->
    
    <br><br>
    <% out.println("TOTAL : "+Math.round(CartBean.totalCart())+" EUR");%> <!-- affichage du total du panier -->