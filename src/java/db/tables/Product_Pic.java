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
public class Product_Pic {
//8. product_pic - id,product-id,pic,date,time
    public int id,product_id;
    public String pic,date,time;

    public Product_Pic(int id, int product_id, String pic, String date, String time) {
        this.id = id;
        this.product_id = product_id;
        this.pic = pic;
        this.date = date;
        this.time = time;
    }

    @Override
    public String toString() {
        return "Product_Pic{" + "id=" + id + ", product_id=" + product_id + ", pic=" + pic + ", date=" + date + ", time=" + time + '}';
    }
    
    
}
