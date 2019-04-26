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
public class User_Cart {
//10. user_cart- id, product_id,user_id,quantity,date,time,status
    public int id, product_id,user_id;
    public String quantity,date,time,status;

    public User_Cart(int id, int product_id, int user_id, String quantity, String date, String time, String status) {
        this.id = id;
        this.product_id = product_id;
        this.user_id = user_id;
        this.quantity = quantity;
        this.date = date;
        this.time = time;
        this.status = status;
    }

    @Override
    public String toString() {
        return "User_Cart{" + "id=" + id + ", product_id=" + product_id + ", user_id=" + user_id + ", quantity=" + quantity + ", date=" + date + ", time=" + time + ", status=" + status + '}';
    }
    
    
    
}
