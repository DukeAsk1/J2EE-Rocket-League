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
            <h2>Choose your items</h2>
            <h2>Search through the tabs to get what you want</h2>
        </div>
        
        <div class="tab" align='CENTER'>
            <FORM class=tab-form METHOD="POST" ACTION="choice.jsp">
                <input type ="hidden" name="body" value="body">
                <input class="tablinks" type="submit" value="Body" >
            </form>

            <FORM class=tab-form METHOD="POST" ACTION="choice.jsp">
                <input type ="hidden" name="boost" value="boost">
                <input class="tablinks" type="submit" value="Boost" >
            </form>
            
            <FORM class=tab-form METHOD="POST" ACTION="choice.jsp">
                <input type ="hidden" name="decal" value="decal">
                <input class="tablinks" type="submit" value="Decal">
            </form>

            <FORM class=tab-form METHOD="POST" ACTION="choice.jsp">
                <input type ="hidden" name="goal" value="goal">
                <input class="tablinks" type="submit" value="Goal explosion">
            </form>
            
            <FORM class=tab-form METHOD="POST" ACTION="choice.jsp">
                <input type ="hidden" name="wheel" value="wheel">
                <input class="tablinks" type="submit" value="Wheel">
            </form>

            <FORM class=tab-form METHOD="POST" ACTION="choice.jsp">
                <input type ="hidden" name="credits" value="credits">
                <input class="tablinks" type="submit" value="Credits">
            </form>
            
            <FORM class=tab-form METHOD="POST" ACTION="choice.jsp">
                <input type ="hidden" name="cart" value="cart">
                <input class="tablinks" type="submit" value="Cart" style="color:#FF0000; font-weight:bold">
            </form>
        </div>
                       
                           
        <div align='CENTER'>
            <div class='row' align='CENTER'>
                <h2>Your Cart</h2>
                <table id='item_cart' class='table' >
                 <%@ include file="/cartlist.jsp" %>  
                </table>
                <br>
                <form action='cancel.jsp' method='POST'>
                    <input type ="hidden" name="cancel" value="cancel">
                    <input type='submit' class='button_cancel' value="REMOVE LAST ITEM" style="width:150px;height:30px;">
                </form>
                <br><br>

                <form action='confirm.jsp' method='POST'>
                    <input type='submit' class='button_val' value="VALIDATE" style="width:150px;height:30px;">
                </form>
            </div> 
        </div>
        

    </body>
</html>

