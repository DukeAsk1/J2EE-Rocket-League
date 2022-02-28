
package projet;

import java.sql.*;


public class UserBean {
 
    private String user ="";
    
    public UserBean(){
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
        }
        catch (Exception e){
            e.printStackTrace();
        }   
    }
    
    public void setUser(String s){
        this.user = s;
    }
    
    public String getUser(){
        return this.user;
    }
    
    public boolean userExist(String username){
         /**
         * userExist:
         *  paramètre: username
         *  vérifie dans la base de données si l'utilisateur existe déjà (colonne USERNAME)
         */        
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            ResultSet rs = state.executeQuery("SELECT * FROM DUONGH.USERS WHERE USERNAME = '" + username + "'");
            System.err.println("user exist");
            return rs.next();
        }
        catch(SQLException ex){
            System.err.println("Erreur userExist : " + ex);
            return false;
        }
    }    
    
        public boolean uExist(String username){
         /**
         * uExist:
         *  paramètre: username
         *  vérifie dans la base de données USER_ID si l'utilisateur existe déjà (colonne USERNAME)
         */        
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            ResultSet rs = state.executeQuery("SELECT * FROM DUONGH.USER_ID WHERE USERNAME = '" + username + "'");
            System.err.println("user exist");
            return rs.next();
        }
        catch(SQLException ex){
            System.err.println("Erreur userExist : " + ex);
            return false;
        }
    }  
    
        public boolean userIDExist(String username){
         /**
         * userExist:
         *  paramètre: username
         *  vérifie dans la base de données si les ID de l'utilisateur existe déjà (colonne USERNAME)
         */            
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            ResultSet rs = state.executeQuery("SELECT ID_KEY FROM DUONGH.USER_ID WHERE USERNAME = '" + username + "'");
            String s ="";
            while ( rs.next() ) {
                    s = rs.getString("ID_KEY");
             }
            //System.err.println("s : "+s);
            //System.err.println("s est null : "+"null".equals(s));
            if("".equals(s)||"null".equals(s)){
                return false;
            } else{
                return true;
            }
        }
        catch(SQLException ex){
            System.err.println("Erreur userIDExist : " + ex);
            return false;
        }
    } 
    
    public void addUser(String username, String password, String email, String firstname, String lastname){
         /**
         * addUser:
         *  paramètre: username, password, email, firstname, lastname
         *  rentre dans la base de données tous les paramètres dans les colonnes correspondantes
         */
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            state.executeUpdate("INSERT INTO DUONGH.USERS(USERNAME,EMAIl,FIRSTNAME,LASTNAME,PASSWORD) VALUES ('" + username + "','" + email + 
                    "','" + firstname +"','"+ lastname +"','"+ password +"')");
            System.err.println("user added");
        }
        catch(SQLException ex){
            System.err.println("Erreur addUser: " + ex);
        }
    }
    
        public boolean userLogin(String username, String password){
         /**
         * userLogin:
         *  paramètre: username, password
         *  prend en compte dans la requête SQL l'username et le password et cherche dans la table SQL BDD s'ils se correspondent
         *  rs.next() prend la valeur TRUE si c'est le cas et FALSE dans le cas contraire
         */

        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            ResultSet rs = state.executeQuery("SELECT * FROM DUONGH.USERS WHERE USERNAME = '" + username + "' AND PASSWORD = '" + password + "' ");
            System.err.println("userLogin");
            return rs.next();    
        }
        catch(SQLException ex){
            System.err.println("Erreur addUser: " + ex);
            return false;
        }
    }
        
    public void addInfo(String game_user, String game_plat, String id_card, String id_key, boolean remember){
         /**
         * addInfo:
         *  paramètre: username, password, email, firstname, lastname
         *  rentre dans la base de données tous les paramètres dans les colonnes correspondantes
         */
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            
            if(uExist(user)){
                System.err.println("uExist");
                state.executeUpdate("DELETE FROM USER_ID WHERE USERNAME = '" + user + "'");    
            }
                if(remember==true){
                    state.executeUpdate("INSERT INTO DUONGH.USER_ID(USERNAME,GAMING_USERNAME,PLATFORM,ID_CARD,ID_KEY) VALUES ('"+this.user + "','" + game_user + "','" + game_plat + 
                            "','" + id_card +"','"+ id_key +"')");
                }else{
                    state.executeUpdate("INSERT INTO DUONGH.USER_ID(USERNAME,GAMING_USERNAME,PLATFORM,ID_CARD,ID_KEY) VALUES ('"+user + "','" + game_user + "','" + game_plat + 
                            "','null','null')");
                }
            
            System.err.println("addInfo "+user);
        }
        catch(SQLException ex){
            System.err.println("Erreur addUser: " + ex);
        }
    } 
    
        public String get(String info, String user){
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            ResultSet rs = state.executeQuery("SELECT "+info+" FROM DUONGH.USER_ID WHERE USERNAME = '" + user + "'");
            String s ="";
             while ( rs.next() ) {
                    s = rs.getString( info );
             }
             return s;
        }
        catch(SQLException ex){
            System.err.println("Erreur get : " + ex);
            return "false";
        }
    }
    
}
