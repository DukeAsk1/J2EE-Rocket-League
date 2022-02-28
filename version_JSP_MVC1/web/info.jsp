<%-- 
    Document   : info
    Created on : 27 févr. 2022, 01:54:38
    Author     : William Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <jsp:useBean id="UserBean" scope="session" class="projet.UserBean"/>
   <jsp:setProperty name="UserBean" property="*"/> 
<html>
<link rel='stylesheet' href="custom.css">
 <body>
     <div align="center"> 
    <img  src ="Image/logo.jpg" alt="Logo" style="width:500px;height:197px;"> 
     </div>
     
        <div align="center">
            <h1> Would you like to use these informations ?  </h1>
           <br>
           <h3> Gaming Username:  </h3> <% out.println(UserBean.get("GAMING_USERNAME", UserBean.getUser())); %>
           <br>
           <h3> Gaming Platform:  </h3> <% out.println(UserBean.get("PLATFORM", UserBean.getUser())); %>
           <br>
           <h3> Card ID:  </h3> <% out.println(UserBean.get("ID_CARD", UserBean.getUser())); %>
           <br>
           <h3> Card Key:  </h3> <% out.println(UserBean.get("ID_KEY", UserBean.getUser())); %>
           <br><br>
           <form method="POST" action="infoChoice.jsp">
            <input type ="hidden" name="yes" value="yes">
            <input class="button_yes" type='submit' value="yes">
           </form>
           <br>
           <form method="POST" action="infoChoice.jsp">
            <input type ="hidden" name="no" value="no">
            <input class= "button_no" type='submit' value="no">
           </form>
        </div>

    
 </body>
</html>
