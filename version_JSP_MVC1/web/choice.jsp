<%-- 
    Document   : choice
    Created on : 25 févr. 2022, 15:00:03
    Author     : William Lee
--%>

<% if ("body".equals(request.getParameter("body"))) { %> <!-- si on clique sur le boutton body -->
    <jsp:forward page="body.jsp"/> <!-- on va à la page body.jsp -->
<% } else if("boost".equals(request.getParameter("boost"))){ %> <!-- si on clique sur le boutton boost -->
    <jsp:forward page="boost.jsp"/> <!-- on va à la page boost.jsp -->
<% } else if("decal".equals(request.getParameter("decal"))){ %> <!-- si on clique sur le boutton decal -->
    <jsp:forward page="decal.jsp"/> <!-- on va à la page decal.jsp -->
<% } else if("goal".equals(request.getParameter("goal"))){ %>
    <jsp:forward page="goal.jsp"/> <!-- on va à la page goal.jsp -->
<% } else if("wheel".equals(request.getParameter("wheel"))){ %>
    <jsp:forward page="wheel.jsp"/> <!-- on va à la page wheel.jsp -->
<% } else if("credits".equals(request.getParameter("credits"))){ %>
    <jsp:forward page="credits.jsp"/> <!-- on va à la page credits.jsp -->
<% } else if("cart".equals(request.getParameter("cart"))){ %>
    <jsp:forward page="cart.jsp"/> <!-- on va à la page cart.jsp -->
<% } else { %>
<% } %>