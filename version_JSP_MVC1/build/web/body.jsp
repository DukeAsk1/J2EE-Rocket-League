<%-- 
    Document   : shop
    Created on : 25 févr. 2022, 14:41:11
    Author     : William Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <jsp:useBean id="ProductBean" class="projet.ProductBean"/>
    
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
                    <img src='Image/Body/Takumi.png' alt='Takumi' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/Body/Dominus.png' alt='Dominus' style="width:250px;height:250px;"> 
                </div>
                <div class='column_3'>
                    <img src='Image/Body/Octane.png' alt='Octane' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Takumi")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Dominus")+" EUR") ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("PRICE","Octane")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Takumi")) ;%>
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Dominus")) ;%> 
                </div>
                <div class='column_3'>
                    <% out.print(ProductBean.get("DESCRIPTION","Octane")) ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_3'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="takumi" value="takumi">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
                <div class='column_3'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="dominus" value="dominus">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
                <div class='column_3'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="octane" value="octane">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
            </div>
            <br>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <img src='Image/Body/Scarab.png' alt='Scarab' style="width:250px;height:250px;"> 
                </div>
                <div class='column_2'>
                    <img src='Image/Body/Fennec.png' alt='Fennec' style="width:250px;height:250px;"> 
                </div>
            </div>
            <div class='row' align='CENTER'>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","Scarab")+" EUR") ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("PRICE","Fennec")+" EUR") ;%>
                </div>
            </div>
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","Scarab")) ;%>
                </div>
                <div class='column_2'>
                    <% out.print(ProductBean.get("DESCRIPTION","Fennec")) ;%> 
                </div>
            </div>
            
            <div class='row' align ="CENTER">
                <div class='column_2'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="scarab" value="scarab">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
                <div class='column_2'>
                    <FORM METHOD="POST" ACTION="add.jsp">
                        <input type ="hidden" name="fennec" value="fennec">
                        <input class='button_cart' type="submit" value="Add to Cart">
                    </form>
                </div>
            </div>
            
    </body>
</html>

