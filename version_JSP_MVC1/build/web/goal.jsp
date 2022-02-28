<%-- 
    Document   : shop
    Created on : 25 févr. 2022, 14:41:11
    Author     : William Lee
--%>
    <jsp:useBean id="ProductBean" class="projet.ProductBean"/>
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
       
        
        <div id='Goal_Explosion' align='CENTER'>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <img src='Image/GoalE/AirS.png' alt='Air Strike' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/GoalE/Dueling_D.png' alt='Dueling Dragon' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/GoalE/Splash.png' alt='Splash' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Air Strike")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Dragon")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Splash")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Air Strike")) ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Dragon")) ;%> 
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Splash")) ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <button type='button' class='button_cart' id = 'air_strike' onclick='addItem()'>Add to Cart</button>
                </div>
                <div class='column_3'>
                    <button type='button' class='button_cart' id = 'duel_dragon' onclick='addItem()'>Add to Cart</button>
                </div>
                <div class='column_3'>
                    <button type='button' class='button_cart' id = 'splash' onclick='addItem()'>Add to Cart</button>
                </div>
            </div>
            <br>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <img src='Image/GoalE/Supernova.png' alt='Supernova' style="width:250px;height:250px;"> 
                </div>
                <div class='column_2'>
                    <img src='Image/GoalE/YeeHaw.png' alt='YeeHaw' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","Supernova")+" EUR") ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","Yee Haw")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","Supernova")) ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","Yee Haw")) ;%> 
                </div>
            </div>
            
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <button type='button' class='button_cart' id = 'supernova' onclick='addItem()'>Add to Cart</button> 
                </div>
                <div class='column_2'>
                    <button type='button' class='button_cart' id = 'yeehaw' onclick='addItem()'>Add to Cart</button>
                </div>
            </div>
        </div>
                    
    </body>
</html>

