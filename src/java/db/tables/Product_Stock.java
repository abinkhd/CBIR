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
public class Product_Stock {
//7. product_stock - id,product_id,stock,date,time,status
     public int id,product_id;
     public String stock,date,time,status;

    public Product_Stock(int id, int product_id, String stock, String date, String time, String status) {
        this.id = id;
        this.product_id = product_id;
        this.stock = stock;
        this.date = date;
        this.time = time;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Product_Stock{" + "id=" + id + ", product_id=" + product_id + ", stock=" + stock + ", date=" + date + ", time=" + time + ", status=" + status + '}';
    }
     
     
     
}
