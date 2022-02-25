/*
 * To change this license header, choose License Headers in Project Properties.
     * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package pj;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.*;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.UnavailableException;

/**
 *
 * @author duongh
 */
public class support extends HttpServlet{
    
    public support(){
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
        }
        catch (Exception e){
            e.printStackTrace();
        }   
    }
    
    
    public void userLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        /**
         * userLogin:
         *  paramètre: request, response
         *  prend en compte dans la requête les id user et password et cherche dans la table SQL users si ces identifiants existent
         *  si true (si l'execution SQL fait next), on renvoit à la page principale
         *  sinon on renvoit une fenêtre d'erreur d'identifiant inexistant
         */
        String user = request.getParameter("user");
        String password = request.getParameter("password");
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
        Statement state = cx.createStatement();
        ResultSet rs = state.executeQuery("SELECT * FROM DUONGH.USERS WHERE USERNAME = '" + user + "' AND PASSWORD = '" + password + "' "); 
        HttpSession session = request.getSession();
        if (rs.next()){
            session.setAttribute("user",user);
            RequestDispatcher rd = request.getRequestDispatcher("main_page.html");
            rd.forward(request, response);
        }
        else{
            /**
             * fenêtre d'erreur
             */
            out.println("<script type=\"text/javascript\">");
            out.println("alert('User or Password is Invalid');");
            out.println("location='login.html';");
            out.println("</script>");
        }
               
        
    }
          
    public void addUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        /**
         * addUser:
         *  paramètre: request, response
         *  insère les données utilisateurs dans la table USERS et définit l'attribut user tout au long de la session
         *  renvoit directement vers la page principale
         *  
         */
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/projet","duongh","projet");
            Statement state = cx.createStatement();
            //ResultSet rs = state.executeQuery("INSERT INTO DUONGH.REQUESTS_TP2(EMAIL2) VALUES ('" + s + "')");
            state.executeUpdate("INSERT INTO DUONGH.USERS(USERNAME,EMAIl,FIRSTNAME,LASTNAME,PASSWORD) VALUES ('" + request.getParameter("user") + "','" +request.getParameter("email")+ 
                    "','" +request.getParameter("prenom")+"','"+request.getParameter("nom")+"','"+request.getParameter("password")+"')");
            RequestDispatcher rd = request.getRequestDispatcher("main_page.html");
            rd.forward(request, response);
            HttpSession session = request.getSession();
            session.setAttribute("user",request.getParameter("user"));
        
        }
        catch(SQLException ex){
            System.err.println("Erreur : " + ex);
        }
    }
    
    public void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        /**
         * addUser:
         *  paramètre: request, response
         *  insère les données utilisateurs dans la table USERS et définit l'attribut user tout au long de la session
         *  si identifiant unique, renvoit directement vers la page principale
         *  sinon renvoit une fenêtre d'erreur
         *  
         */
        
        Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/projet","duongh","projet");
        Statement state = cx.createStatement();
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        String user = request.getParameter("user");
        ResultSet rs = state.executeQuery("SELECT USERNAME FROM DUONGH.USERS WHERE USERNAME ='" + user +"'");
        if (rs.next()){
            /**
             * fenêtre d'avertissement
             */
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Username is already taken');");
            out.println("location='register.html';");
            out.println("</script>");
        }
        else{
            state.executeUpdate("INSERT INTO DUONGH.USERS(USERNAME,EMAIl,FIRSTNAME,LASTNAME,PASSWORD) VALUES ('" + request.getParameter("user") + "','" +request.getParameter("email")+ 
                    "','" +request.getParameter("prenom")+"','"+request.getParameter("nom")+"','"+request.getParameter("password")+"')");
            RequestDispatcher rd = request.getRequestDispatcher("main_page.html");
            rd.forward(request, response);
            HttpSession session = request.getSession();
            session.setAttribute("user",request.getParameter("user"));
        }
        
        
    }
    
    public void insertUserID(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException, SQLException{
        /**
         * insertID:
         *  paramètre request, response
         *  insert les données d'identifiants de l'utilisateur sur sa plateforme de jeu si il souhaite enregistrer ses données
         *  après l'entrée des données, une page automatique s'ouvre pour confirmer la commande du client
         */
        HttpSession session = request.getSession();
        String user = (String) session.getAttribute("user");
        String game_user = request.getParameter("game_user");
        String gaming_plat = request.getParameter("plat");
        String id_num = request.getParameter("id_card");
        String id_pass = request.getParameter("id_key");
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        if(request.getParameter("remember") == null){
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Réponse Automatique</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Rocket League E-Shop: Confirmation of your order </h1>");
            out.println("<p>Thank you for trusting us and purchasing in our shop </p>");
            out.println("<p>You will soon receive a message of one of our moderators at the user information below: </p>");
            out.println("<p style='font-weight:bold;'>Gaming Username : "+ game_user + "</p>");
            out.println("<p style='font-weight:bold;'>Gaming Platform : "+ gaming_plat + "</p>");
            out.println("<p>Have Fun playing Rocket League</p>");
            out.println("</body>");
            out.println("</html>");
        }
        else{
            String insertStatementStr2 = "insert into user_id (username,gaming_username,platform,id_card,id_key) values ('"+user+"','"+game_user+"','"+gaming_plat+"','"+id_num+"','"+id_pass+"')";
            String insertStatementStr = "delete from user_id where username = '"+user+"'";
            try{
                Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
                java.sql.Statement insertStatement = cx.createStatement( );
                insertStatement.executeUpdate(insertStatementStr);
                java.sql.Statement insertStatement2 = cx.createStatement( );
                insertStatement2.executeUpdate(insertStatementStr2);
            } catch (SQLException ex) {
                System.err.println("Erreur : " + ex);
            }            
            /**
             * page automatique de remerciement
             */        
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Réponse Automatique</title>");            
            out.println("</head>");
            out.println("<link rel='stylesheet' href=\"custom.css\">");
            out.println("<body>");
            out.println("<h1>Rocket League E-Shop: Confirmation of your order </h1>");
            out.println("<p>Thank you for trusting us and purchasing in our shop </p>");
            out.println("<p>You will soon receive a message of one of our moderators at the user information below: </p>");
            out.println("<p style='font-weight:bold;'>Gaming Username : "+ game_user + "</p>");
            out.println("<p style='font-weight:bold;'>Gaming Platform : "+ gaming_plat + "</p>");
            out.println("<p>Have Fun playing Rocket League</p>");
            out.println("<div style='width:200px;'>");
            out.println("<div style='width: 140px; float:left'>");
            out.println("<form action='main_page.html'>");
            out.println("<input type='submit' class='button_back' value='Back to shop' style='margin-right:5px;'>");
            out.println("</form>");
            out.println("</div>");
            out.println("<div style='width: 50px; float: right'>");
            out.println("<form action='login.html'>");
            out.println("<input type='submit' class='button_log' value='Log out' />");
            out.println("</form>");
            out.println("</div>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }        
    }
    public void isRegistered(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException, SQLException{
        /**
         * isRegistered:
         *  paramètre request, response
         *  ouvre une fenetre automatique si information de l'utilisateur enregistrée, demande de les réutiliser pour éviter une étape
         *  sinon, renvoit directement au form de paiement
         */
        HttpSession session = request.getSession();
        String user = (String) session.getAttribute("user");
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException cnfe) {
            throw new UnavailableException("Driver non trouve dans le classpath");
        }
        Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
        java.sql.Statement state = cx.createStatement();
        ResultSet rs = state.executeQuery("SELECT * FROM DUONGH.USER_ID WHERE USERNAME = '" + user + "' ");
        
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();
        
        if (rs.next()){
            /**
             * getString: récupère dans la requête SQL l'indice en fonction du nom de la colonne 
             */
            String gameuser = rs.getString("gaming_username");
            String platform = rs.getString("platform");
            String id_card = rs.getString("id_card");
            String id_key = rs.getString("id_key");
            /**
             * écriture du message automatique
             */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<link rel='stylesheet' href=\"custom.css\">");
            out.println("<meta charset='UTF-8'>");
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.println("<title>Saved Information</title>");            
            out.println("</head>");
            out.println("<div align='CENTER'>");
            out.println("<body>");
            out.println("<img src =\"Image/logo.jpg\" alt=\"Logo\" style=\"width:400px;height:150px;\">");
            out.println("<h1>Would you like to use these information ?</h1>");
            out.println("<TABLE>");
            out.println("<TR><TD>Gaming Username : </TD>");
            out.println("<TD><output name='gameuser' style='font-weight:bold'>"+gameuser+"</output></TD> </TR>");
            out.println("<TR><TD>Platform : </TD>");
            out.println("<TD><output name='platform' style='font-weight:bold'>"+platform+"</output></TD> </TR>");
            out.println("<TR><TD>Card ID : </TD>");
            out.println("<TD><output name='id_card' style='font-weight:bold'>"+id_card+"</output></TD> </TR>");
            out.println("<TR><TD>Card Key : </TD>");
            out.println("<TD><output name='id_key' style='font-weight:bold'>"+id_key+"</output></TD> </TR>");
            out.println("<TR><TD><form action='thankyou.html' method='POST'><input type='submit' class='button_yes' value='yes'></form></TD>");
            out.println("<TD><form action='payment.html' method='POST'><input type='submit' class='button_no' value='no'></form></TD></TR>");
            out.println("</TABLE>");
            out.println("</body>");
            out.println("</div>");
            out.println("</html>");
            
        }
        else{
            RequestDispatcher rd = request.getRequestDispatcher("payment.html");
            rd.forward(request, response);
        }  
    }
}
