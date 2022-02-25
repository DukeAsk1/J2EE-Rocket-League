package mypackage;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.servlet.UnavailableException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
/**
 *
 * @author chris
 */
@ManagedBean
@SessionScoped
public class paymentBean {
    private String gameuser;
    private String platform;
    private String id_card;
    private String id_key;
    private boolean rememberMe;
    
    public void setGameuser(String gu){
        this.gameuser = gu;
    }
    
    public String getGameuser(){
        return this.gameuser;
    }
    
    public void setPlatform(String p){
        this.platform = p;
    }
    
    public String getPlatform(){
        return this.platform;
    }
    
    public void setId_card(String id){
        this.id_card = id;
    }
    
    public String getId_card(){
        return this.id_card;
    }
    
    public void setId_key(String id){
        this.id_key = id;
    }
    
    public String getId_key(){
        return this.id_key;
    }
    
    public void setRememberMe(boolean r){
        this.rememberMe = r;
    }
    
    public boolean getRememberMe(){
        return this.rememberMe;
    }
    
    /**
     * Valide le paiement de l'utilisateur.
     * @param user nom de l'utilisateur
     * @return une chaîne de caractères permettant la navigation pour faces-config
     * @throws UnavailableException 
     */
    public String proceed(String user) throws UnavailableException{
        if (this.rememberMe) remember(user);
        return "thankyou";
    }
    
    /**
     * Nettoie les informations.
     */
    public void clear(){
        this.gameuser="";
        this.platform="";
        this.id_card="";
        this.id_key="";
        this.rememberMe=false;
    }
    
    /**
     * Sauvegarde les coordonnées de l'utilisateur.
     * @param user nom de l'utilisateur
     * @throws UnavailableException 
     */
    public void remember(String user) throws UnavailableException{
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException cnfe) {
            throw new UnavailableException("Driver non trouve dans le classpath");
        }
        Connection connection = null;
        String insertStatementStr2 = "insert into user_id (username,gaming_username,platform,id_card,id_key) values ('"+user+"','"+this.gameuser+"','"+this.platform+"','"+this.id_card+"','"+this.id_key+"')";
        String insertStatementStr = "delete from user_id where username = '"+user+"'";
        try {
            connection = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet", "duongh",
            "projet");
            java.sql.Statement insertStatement = connection.createStatement( );
            insertStatement.executeUpdate(insertStatementStr);
            java.sql.Statement insertStatement2 = connection.createStatement( );
            insertStatement2.executeUpdate(insertStatementStr2);
        } catch (SQLException ex) {
            Logger.getLogger(userbean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    /**
     * Permet de savoir si l'utilisateur a déjà des coordonnées sauvegardées.
     * @param user nom de l'utilisateur
     * @return une chaîne de caractères permettant la navigation pour faces-config
     * @throws UnavailableException
     * @throws SQLException 
     */
    public String isRegistered(String user) throws UnavailableException, SQLException{
        System.out.println(user);
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
        } catch (ClassNotFoundException cnfe) {
            throw new UnavailableException("Driver non trouve dans le classpath");
        }
        Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
        java.sql.Statement state = cx.createStatement();
        ResultSet rs = state.executeQuery("SELECT * FROM DUONGH.USER_ID WHERE USERNAME = '" + user + "' ");
        if (rs.next()){
            this.gameuser = rs.getString("gaming_username");
            this.platform = rs.getString("platform");
            this.id_card = rs.getString("id_card");
            this.id_key = rs.getString("id_key");
            return "registered";
        }
        return "not registered";
    }
}
