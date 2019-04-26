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
public class Product_Sales {
//11. product_sales- id, product_id,user_id,quantity,date,time,bill_id
    public int id, product_id,user_id,bill_id;
    public String quantity,date,time;

    public Product_Sales(int id, int product_id, int user_id, int bill_id, String quantity, String date, String time) {
        this.id = id;
        this.product_id = product_id;
        this.user_id = user_id;
        this.bill_id = bill_id;
        this.quantity = quantity;
        this.date = date;
        this.time = time;
    }

    @Override
    public String toString() {
        return "Product_Sales{" + "id=" + id + ", product_id=" + product_id + ", user_id=" + user_id + ", bill_id=" + bill_id + ", quantity=" + quantity + ", date=" + date + ", time=" + time + '}';
    }
    
    
}
