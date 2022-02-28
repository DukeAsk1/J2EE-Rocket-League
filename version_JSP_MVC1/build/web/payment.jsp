<%-- 
    Document   : payment
    Created on : 25 févr. 2022, 22:38:11
    Author     : William Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <jsp:useBean id="UserBean" scope="session" class="projet.UserBean"/>
   <jsp:setProperty name="UserBean" property="*"/> 

   <% System.err.println("payment.jsp"); %>
   <% System.err.println("user is : "+UserBean.getUser()); %>
<% if (UserBean.userIDExist(UserBean.getUser())) { %> <!-- si l'on possède déjà les données bancaires de l'utilisateur dans la base de données -->
    <% System.err.println("possède déjà les données bancaires go to info.jsp"); %>
    <jsp:forward page="info.jsp"/>
   
<% } else { %>
    <% System.err.println("go to paymentForm.jsp"); %>
    <jsp:forward page="paymentForm.jsp"/> <!-- sinon, on redirige l'utilisateur vers un formulaire -->
<% } %>