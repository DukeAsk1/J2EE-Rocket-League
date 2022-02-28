<%-- 
    Document   : add
    Created on : 25 févr. 2022, 15:52:12
    Author     : William Lee
--%>

   <jsp:useBean id="CartBean" scope="session" class="projet.CartBean"/>
   <jsp:setProperty name="CartBean" property="*"/>

<% if ("takumi".equals(request.getParameter("takumi"))) { %> <!-- si on clique sur le boutton body -->
    <% CartBean.addToCart("Takumi");%> <!-- on ajoute un article "Takumi" -->
    <jsp:forward page="body.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("dominus".equals(request.getParameter("dominus"))){ %>
    <% CartBean.addToCart("Dominus");%> <!-- on ajoute un article "Dominus" -->
    <jsp:forward page="body.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("octane".equals(request.getParameter("octane"))){ %>
    <% CartBean.addToCart("Octane");%>
    <jsp:forward page="body.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("scarab".equals(request.getParameter("scarab"))){ %>
    <% CartBean.addToCart("Scarab");%>
    <jsp:forward page="body.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("fennec".equals(request.getParameter("fennec"))){ %>
    <% CartBean.addToCart("Fennec");%>
    <jsp:forward page="body.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("flamerate".equals(request.getParameter("flamerate"))){ %>
    <% CartBean.addToCart("Flamerate");%>
    <jsp:forward page="boost.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("heart".equals(request.getParameter("heart"))){ %>
    <% CartBean.addToCart("Heart");%>
    <jsp:forward page="boost.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("ink".equals(request.getParameter("ink"))){ %>
    <% CartBean.addToCart("Ink");%>
    <jsp:forward page="boost.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("lantern".equals(request.getParameter("lantern"))){ %>
    <% CartBean.addToCart("Lantern Lift");%>
    <jsp:forward page="boost.jsp"/> <!-- on retourne à la page body.jsp -->
<% } else if("dark".equals(request.getParameter("dark"))){ %>
    <% CartBean.addToCart("Dark Matter");%>
    <jsp:forward page="boost.jsp"/> <!-- on retourne à la page body.jsp -->    
<% } else { %>
<% } %>