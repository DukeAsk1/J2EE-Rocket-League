<!DOCTYPE html>

<html>
    <head>
        <link rel='stylesheet' href="custom.css">
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <FORM METHOD="POST" ACTION="user.jsp">
            <div align="CENTER" id="content-wrap">
                <h1>Welcome to the Rocket League Market Shop</h1>

                <img src ="Image/logo.jpg" alt="Logo" style="width:500px;height:197px;"> 
                <h2>Log in your information here: </h2>
                <TABLE>
                    <TR>
                        <TD>Username :</TD>
                        <TD><INPUT TYPE="Text" id='username' NAME="username" SIZE="30"></TD>
                    </TR>
                    <TR>
                        <TD>Password :</TD>
                        <TD><INPUT TYPE="password" id="password" NAME="password" SIZE="30"></TD>
                    </TR>
                </TABLE>
                <BR><INPUT TYPE="Submit" class='button_val' VALUE="Sign In" ><BR>
                <BR>
            </div>
            <div align='CENTER'>
            </div>
        </FORM>
        <form method="POST" action="regform.jsp">
            <div align="CENTER">
                New User to the Page ? <input type ="Submit" class='button_cart' VALUE='Register Here' >  
            </div>
        </form>
    </body>
</html>
