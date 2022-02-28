
package projet;

import java.sql.*;

public class ProductBean {
    
    public String get(String info, String produit){
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            ResultSet rs = state.executeQuery("SELECT "+info+" FROM DUONGH.PRODUCTS WHERE NAME = '" + produit + "'");
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
