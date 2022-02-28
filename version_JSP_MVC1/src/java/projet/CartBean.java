
package projet;
import java.util.ArrayList;
import java.sql.*;
/**
 *
 * @author William Lee
 */
public class CartBean {
    
    private ArrayList <String> list = new ArrayList<String>();
    
    
    public ArrayList<String> getList(){
        return this.list;
    }
    
    public void addToCart(String s){
        this.list.add(s);
        System.err.println(this.list);
    }
    
    public double get(String info, String produit){
        try{
            Connection cx = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            Statement state = cx.createStatement();
            ResultSet rs = state.executeQuery("SELECT "+info+" FROM DUONGH.PRODUCTS WHERE NAME = '" + produit + "'");
            double s =0;
             while ( rs.next() ) {
                    s = rs.getDouble( info );
             }
             return s;
        }
        catch(SQLException ex){
            System.err.println("Erreur get : " + ex);
            return 0;
        }
    }
    
    public double totalCart(){
        double total = 0;
        String produit ="";
        for(int i=0;i<this.list.size();i++){
            produit = this.list.get(i);
            total += get("PRICE",produit);
        }
        System.err.println("total : "+total);
        return total;
    }
    
    public void resetCart(){
        this.list.clear();
    }
    
    public void takeOff(){
        System.err.println("taille de la liste : "+this.list.size());
        this.list.remove(this.list.size()-1);
    }
    
}
