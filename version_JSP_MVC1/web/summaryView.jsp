

<%-- 
    Document   : shop
    Created on : 25 févr. 2022, 14:41:11
    Author     : William Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link rel='stylesheet' href="custom.css">
        <title>Item Center</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    
    <body>  
        <div class="row" align='CENTER'>
            <h1>Summary</h1>
            <br>
        </div>
        
                   
        <div align='CENTER'>
            <div class='row' align='CENTER'>
                <h2>Your order : </h2>
                <table id='item_cart' class='table' >
                 <%@ include file="/cartlist.jsp" %>  
                </table>
                
                <br>

                <form action='payment.jsp' method='POST'>
                    <input type='submit' class='button_val' value="PROCEED TO PAYMENT" style="width:350px;height:30px;">
                </form>
            </div> 
        </div>
        

    </body>
</html>