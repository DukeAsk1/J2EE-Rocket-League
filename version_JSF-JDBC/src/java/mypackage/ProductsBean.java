package mypackage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.util.*;
import java.sql.*;

/**
 *
 * @author chris
 */
@ManagedBean
@SessionScoped
public class ProductsBean {
    private List products; // Liste des produits correspondants au type
    private String type="Body"; // Type des produits souhaités
    
    /**
     * Retourne la liste des produits correspondants au type
     * @return liste de produits
     */
    public List getProducts(){
        this.products = new ArrayList();
        if (type==null) return this.products;
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection connection = DriverManager.getConnection("jdbc:derby://localhost:1527/Projet","duongh","projet");
            ResultSet rs = connection.createStatement().executeQuery("SELECT * FROM DUONGH.PRODUCTS WHERE type = '" + this.type + "' "); 
            while(rs.next()){
                this.products.add(new Product(rs.getString("name"),rs.getString("price"),rs.getString("description"),this.type));
            }
        } catch (Exception e) {
            System.out.println("Error: "+e.getMessage());
        }
        return this.products;
    }
    
    public String getType(){
        return this.type;
    }    
    
    public void setType(String t){
        this.type = t;
    }

    
}

