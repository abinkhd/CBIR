/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db.tables;

/**
 *
 * @author LENOVO
 */
public class Product_Tags {
//16. product_tags- id, p_id,tags

    public int id, p_id;
    public String tags;

    public Product_Tags(int id, int p_id, String tags) {
        this.id = id;
        this.p_id = p_id;
        this.tags = tags;
    }

    @Override
    public String toString() {
        return "Product_Tags{" + "id=" + id + ", p_id=" + p_id + ", tags=" + tags + '}';
    }

}
