

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <link rel='stylesheet' href="custom.css">
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    
    
    <body>  
        <div class="row" align="CENTER">
            <div class='column_2'>
                <h2>Please Register here: </h2>
                    <FORM action="register.jsp" method='POST'>                    
                        <TABLE >
                                <TR>
                                    <TD>Username :</TD>
                                    <TD><INPUT TYPE="text" NAME="username" id="username" SIZE="30" required="required"></TD>
                                </TR>
                                <TR>
                                    <TD>Email :</TD>
                                    <TD><INPUT TYPE="email" NAME="email" id="email" SIZE="30" required="required"></TD>
                                </TR>
                                <TR>
                                    <TD>First Name :</TD>
                                    <TD><INPUT TYPE="text" NAME="firstname" id="firstname" SIZE="30" required="required"></TD>
                                </TR>
                                <TR>
                                    <TD>Last Name :</TD>
                                    <TD><INPUT TYPE="text" NAME="lastname" id="lastname" SIZE="30" required="required"></TD>
                                </TR>     
                                <TR>
                                    <TD>Password :</TD>
                                    <TD><INPUT TYPE="password" NAME="password" id="password" SIZE="30" required="required"></TD>
                                </TR>
                        </TABLE>
                        <BR><INPUT TYPE="Submit" VALUE="Check In" class="button_val"><BR><BR>
                    </FORM>
            </div>
            <div class="column_2">
                <img src='Image/meme.jpg' alt='meme' style="width:287px;height:400px;">  
            </div>
        </div>
    </body>
</html>

