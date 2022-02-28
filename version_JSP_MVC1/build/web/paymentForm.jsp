<%-- 
    Document   : paymentForm
    Created on : 27 févr. 2022, 01:38:09
    Author     : William Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel='stylesheet' href="custom.css">
        <title>Payment</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    
    <body>  
        <form action="registerInfo.jsp" method='POST'>
            <div align="CENTER">
                <div class='column_pay'>
                    <h2>Enter your coordinates here: </h2>
                    <TABLE align='CENTER'>
                            <TR>                         
                                <TD>Gaming Username :</TD>
                                <TD><INPUT TYPE="text" NAME="game_user" SIZE="30" id='game_user' required="required"></TD>
                            </TR>
                            <TR>
                                <TD>Gaming Platform :</TD>
                                <TD name='game_plat' id='game_plat'>
                                      <div>
                                        <input name='game_plat' type="radio" id="epic"
                                         name="plat" value="Epic">
                                        <label for="epic">Epic Games</label>

                                        <input name='game_plat' type="radio" id="steam"
                                         name="plat" value="Steam">
                                        <label for="steam">Steam</label>

                                        <input name='game_plat' type="radio" id="xbox"
                                         name="plat" value="XBOX">
                                        <label for="xbox">XBOX</label>
                                        
                                        <input name='game_plat' type="radio" id="ps"
                                         name="plat" value="Playstation">
                                        <label for="ps">Playstation</label>

                                        <input name='game_plat' type="radio" id="nintendo"
                                         name="plat" value="Nintendo Switch">
                                        <label for="nintendo">Nintendo Switch</label>
                                      </div>
                                </TD>
                            </TR>
                            <TR>
                                <TD>Credit Card ID (16-digit code) :</TD>
                                <TD><INPUT TYPE="number" NAME="id_card" SIZE="30" id='id_num' required="required"></TD>
                            </TR>     
                            <TR>
                                <TD>Credit Card Key (3-digit code) :</TD>
                                <TD><INPUT TYPE="number" NAME="id_key" SIZE="30" id='id_key' required="required"></TD>
                            </TR>
                            <TR align='CENTER'>
                                <TD align='CENTER'>
                                    <INPUT type='checkbox' id='remember' name='remember' value="remember">
                                    <label>Remember my IDs</label>                                   
                                </TD>                            
                            </TR>
                    </TABLE>
                    <BR><INPUT TYPE="Submit" class='button_val' VALUE="Validate"><BR><BR>
                </div>
            </div>
        </form>
    </body>
</html>
