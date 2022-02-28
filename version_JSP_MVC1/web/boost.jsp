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
        
        <!-- boutons de navigation entre les différentes pages -->
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
                    <img src='Image/Boost/Flame.png' alt='Flame' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/Boost/Heart.png' alt='Heart' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/Boost/Ink.png' alt='Ink' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Flamerate")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Heart")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Ink")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Flamerate")) ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Heart")) ;%> 
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Ink")) ;%>
                </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="flamerate" value="flamerate">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
                <div class='column_3'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="heart" value="heart">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
                <div class='column_3'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="ink" value="ink">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
            </div>
            <br>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <img src='Image/Boost/Lantern.png' alt='Lantern' style="width:250px;height:250px;"> 
                </div>
                <div class='column_2'>
                    <img src='Image/Boost/dark_matter.png' alt='Dark Matter' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","Lantern Lift")) ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","Dark Matter")) ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","Lantern Lift")) ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","Dark Matter")) ;%>
                </div>
            </div>
            
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="lantern" value="lantern">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
                <div class='column_2'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="dark" value="dark">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
            </div>
            
        </div>        
               
    </body>
</html>

