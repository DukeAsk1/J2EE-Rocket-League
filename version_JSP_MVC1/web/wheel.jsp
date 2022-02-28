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
       
           
        <div align='CENTER'>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <img src='Image/Wheel/Cristiano.png' alt='Christiano' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/Wheel/Dieci.png' alt='Dieci' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/Wheel/Glonex.png' alt='Glonex' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Christiano")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Dieci")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Glonex")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Christiano")) ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Dieci")) ;%> 
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Glonex")) ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <button type='button' class='button_cart' id = 'christiano' onclick='addItem()'>Add to Cart</button>
                </div>
                <div class='column_3'>
                    <button type='button' class='button_cart' id = 'dieci' onclick='addItem()'>Add to Cart</button>
                </div>
                <div class='column_3'>
                    <button type='button' class='button_cart' id = 'glonex' onclick='addItem()'>Add to Cart</button>
                </div>
            </div>
            <br>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <img src='Image/Wheel/Hypnotik.png' alt='Hypnotik' style="width:250px;height:250px;"> 
                </div>
                <div class='column_2'>
                    <img src='Image/Wheel/Reaper.png' alt='Reaper' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","Hypnotik")+" EUR") ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","Reaper")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","Hypnotik")) ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","Reaper")) ;%> 
                </div>
            </div>
            
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <button type='button' class='button_cart' id = 'hypnotik' onclick='addItem()'>Add to Cart</button> 
                </div>
                <div class='column_2'>
                    <button type='button' class='button_cart' id = 'reaper' onclick='addItem()'>Add to Cart</button>
                </div>
            </div>
        </div>                   
                            
    </body>
</html>

