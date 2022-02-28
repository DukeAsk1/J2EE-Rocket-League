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
                       
                             
        <div id='Credits' align='CENTER'>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <img src='Image/Credit.png' alt='Credit' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/Credit.png' alt='Credit' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/Credit.png' alt='Credit' style="width:250px;height:250px;">  
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","100")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","500")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","2000")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","100")) ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","500")) ;%> 
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","2000")) ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <button type='button' class='button_cart' id = '100c' onclick='addItem()'>Add to Cart</button>
                </div>
                <div class='column_3'>
                    <button type='button' class='button_cart' id = '500c' onclick='addItem()'>Add to Cart</button>
                </div>
                <div class='column_3'>
                    <button type='button' class='button_cart' id = '2000c' onclick='addItem()'>Add to Cart</button>
                </div>
            </div>
            <br>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <img src='Image/Credit.png' alt='Credit' style="width:250px;height:250px;">  
                </div>
                <div class='column_2'>
                    <img src='Image/Credit.png' alt='Credit' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","10000")+" EUR") ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","30000")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","10000")) ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","30000")) ;%> 
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

    </body>
</html>

