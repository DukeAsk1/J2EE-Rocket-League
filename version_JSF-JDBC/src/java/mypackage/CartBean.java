package mypackage;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import java.util.*;
import java.util.HashMap;

/**
 *
 * @author chris
 */
@ManagedBean
@SessionScoped
public class CartBean {
    private HashMap<String,Integer> quantity = new HashMap(); // Quantité des produits du panier
    private List<Product> cart = new ArrayList(); // Liste des différents produits du panier
    private float total=0; // Coût total du panier
    
    /**
     * Ajoute un objet dans le panier.
     * @param p le produit à ajouter au panier
     */
    public void addToCart(Product p){
        if (this.quantity.containsKey(p.getName())){
            this.quantity.replace(p.getName(), this.getQuantity(p)+1);
        }
        else{
            this.quantity.put(p.getName(),1);
            this.cart.add(p);
        }
        this.total+=Float.parseFloat(p.getPrice());
       
    }
    /**
     * Enlève un objet dans le panier.
     * @param p le produit à enlever du panier.
     */
    public void removeFromCart(Product p){
        if (this.getQuantity(p)<=1){
            this.cart.remove(p);
            this.quantity.remove(p.getName());
        }
        else{
            this.quantity.replace(p.getName(), this.getQuantity(p)-1);
        }
        this.total-=Float.parseFloat(p.getPrice());
    }
    
    public List getCart(){
        return this.cart;
    }
    
    public boolean notEmpty(){
        return !this.cart.isEmpty();
    }
    
    public int getQuantity(Product p){
        return this.quantity.get(p.getName());
    }
    
    /**
     * Retourne le coût total du panier, arrondi au centième.
     * @return le coût total du panier
     */
    public float getTotal(){
        return (float)Math.round(this.total*100)/100;
    }
    
    /**
     * Vide le panier.
     */
    public void clear(){
        this.cart = new ArrayList();
        this.quantity = new HashMap();
        this.total = 0;
    }
    
}
