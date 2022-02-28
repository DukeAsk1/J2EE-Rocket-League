<%-- 
    Document   : registered.jsp
    Created on : 21 févr. 2022, 21:55:03
    Author     : Hoang-Duc DUONG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel='stylesheet' href=\"custom.css\">
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <title>Saved Information</title>            
    </head>
    <div align='CENTER'>
        <body>
            <img src =\"Image/logo.jpg\" alt=\"Logo\" style="width:400px;height:150px;">
            <h1>Would you like to use these information</h1>
            <form>
            <TABLE>
                <TR>
                    <TD>Gaming Username : </TD>
                    <TD><output name='gameuser' style='font-weight:bold'>"+gameuser+"</output></TD> 
                </TR>
                <TR>
                    <TD>Platform : </TD>
                    <TD><output name='platform' style='font-weight:bold'>"+platform+"</output></TD> 
                </TR>
                <TR>
                    <TD>Card ID : </TD>
                    <TD><output name='id_card' style='font-weight:bold'>"+id_card+"</output></TD> 
                </TR>
                <TR>
                    <TD>Card Key : </TD>
                    <TD><output name='id_key' style='font-weight:bold'>"+id_key+"</output></TD> 
                </TR>
            </TABLE>
            <form action='thankyou.html' method='POST'>
                <input type='submit' value='yes'>
            </form>
            <form action='payment.html' method='POST'>
                <input type='submit' value='no'>
            </form>

        </body>
    </div>
</html>
