<%-- 
    Document   : end
    Created on : 26 févr. 2022, 01:04:15
    Author     : William Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Thank you !</title>
        <link rel='stylesheet' href="custom.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <h1>Rocket League E-Shop: Confirmation of your order </h1>
            <p>Thank you for trusting us and purchasing in our shop !</p>
            <p>Have Fun playing Rocket League !</p>
            <br></br>
        </div>
        <div style="width:200px;">
            <div style="width: 140px; float:left">
                <form action="shop.jsp">
                    <input type="submit" class="button_back" value="Back to shop" style="margin-right:5px;">
                </form>
            </div>
            <div style="width: 50px; float: right">
                <form action="login.jsp">
                  <input type="submit" class="button_log" value="Log out" />
                </form>
            </div>
        </div>
    </body>
</html>
