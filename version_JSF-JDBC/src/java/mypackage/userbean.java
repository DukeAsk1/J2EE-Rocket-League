package mypackage;


import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.servlet.UnavailableException;
import javax.faces.context.FacesContext;
import javax.faces.application.FacesMessage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;



/**
*
* @author duketatur
*/
@ManagedBean
@SessionScoped

public class userbean {
    
    String user, name, lastName, password, email;

    public String getUser() {
        return user;
    }
    public void setUser(String user) {
        this.user = user;
    }
    
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    
    
    /**
     * Permet de savoir si les données entrées pour s'enregistrer sont valides.
     * Elles seront invalides dans le cas où le nom d'utilisateur ou l'adresse mail sont déjà présents dans la base de données.
     * @return une chaîne de caractères permettant la navigation pour faces-config
     * @throws SQLException 
     */
    public String validationSystemeLogiciel() throws SQLException{
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (Exception e) {
            System.out.println(e);
        }
        Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
        java.sql.Statement state = cx.createStatement();
        ResultSet rs = state.executeQuery("SELECT * FROM DUONGH.USERS WHERE USERNAME = '" + user + "' "); 
        if (rs.next()){
            FacesContext.getCurrentInstance().addMessage("f", new FacesMessage("This username is already used."));
            return "err";
        }
        java.sql.Statement state2 = cx.createStatement();
        ResultSet rs2 = state2.executeQuery("SELECT * FROM DUONGH.USERS WHERE EMAIL = '" + email + "' "); 
        if (rs2.next()){
            FacesContext.getCurrentInstance().addMessage("f", new FacesMessage("This email is already used."));
            return "err";
        }
        try {
            sauvegarde();
        } catch (UnavailableException ex) {
            Logger.getLogger(userbean.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "ok";
     }

    /**
     * Permet de savoir si les données entrées pour se connecter sont présentes dans la base de données.
     * @return une chaîne de caractères permettant la navigation pour faces-config
     * @throws UnavailableException
     * @throws SQLException 
     */
    public String validateUsernamePassword() throws UnavailableException, SQLException{
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException cnfe) {
            throw new UnavailableException("Driver non trouve dans le classpath");
        }
        Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
        java.sql.Statement state = cx.createStatement();
        ResultSet rs = state.executeQuery("SELECT * FROM DUONGH.USERS WHERE USERNAME = '" + user + "' AND PASSWORD = '" + password + "' "); 
        if (rs.next()){
            return "connect";
        }
        else{
            System.err.println("prblm mdp ou user");
            FacesContext.getCurrentInstance().addMessage("f", new FacesMessage("Incorrect username or password. Try again."));
        }
        return "err";
    }
    
    
    /**
     * Enregistre l'utilisateur.
     * @throws UnavailableException
     * @throws SQLException 
     */
    void sauvegarde() throws UnavailableException, SQLException {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException cnfe) {
            throw new UnavailableException("Driver non trouve dans le classpath");
        }
        Connection connection = null;
        String insertStatementStr = "insert into users (username,password,email,firstname,lastname) values ('"+name+"','"+ lastName + "','"+ user+ "','"+ email+ "','"+ password+ "')";
        try {
            connection = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet", "duongh",
            "projet");
        } catch (SQLException ex) {
            Logger.getLogger(userbean.class.getName()).log(Level.SEVERE, null, ex);
        }
        java.sql.Statement insertStatement = connection.createStatement( );
        insertStatement.executeUpdate(insertStatementStr);
    }
    
    /**
     * Nettoie les informations de l'utilisateur.
     */
    public void clear(){
        this.user="";
        this.password="";
        this.email="";
        this.name="";
        this.lastName="";
    }
}
    
