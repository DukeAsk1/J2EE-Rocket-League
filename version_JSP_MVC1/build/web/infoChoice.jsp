<%-- 
    Document   : infoChoice
    Created on : 27 févr. 2022, 02:57:52
    Author     : William Lee
--%>

<% if("yes".equals(request.getParameter("yes"))){ %>
    <jsp:forward page="end.jsp"/> <!-- on va à la page end.jsp -->
<% } else { %>
    <jsp:forward page="paymentForm.jsp"/>
<% } %>
