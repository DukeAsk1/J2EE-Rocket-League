package mypackage;

/**
 *
 * @author chris
 */
public class Product {
    private String name;
    private String price;
    private String description;
    private String url;
    
    /**
     * Crée un produit.
     * @param name nom du produit
     * @param price prix du produit
     * @param description description du produit
     * @param type type du produit
     */
    public Product(String name, String price, String description, String type){
        this.name=name;
        this.price=price;
        this.description=description;
        this.url="/www/"+type+'/'+name+".png";
    }
    
    
    public String getName(){
        return this.name;
    }
    
    public String getPrice(){
        return this.price;
    }
    
    public String getDescription(){
        return this.description;
    }
    
    public String getUrl(){
        return this.url;
    }
    
}
