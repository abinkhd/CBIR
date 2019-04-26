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
public class Product_Details {
//6. product_details - id,p_name,p_desc,seller_id,sub_category_id,p_price,date,time,status
    public int id,seller_id,sub_category_id;
    public String p_name,p_desc,p_price,date,time,status;

    public Product_Details(int id, int seller_id, int sub_category_id, String p_name, String p_desc, String p_price, String date, String time, String status) {
        this.id = id;
        this.seller_id = seller_id;
        this.sub_category_id = sub_category_id;
        this.p_name = p_name;
        this.p_desc = p_desc;
        this.p_price = p_price;
        this.date = date;
        this.time = time;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Product_Details{" + "id=" + id + ", seller_id=" + seller_id + ", sub_category_id=" + sub_category_id + ", p_name=" + p_name + ", p_desc=" + p_desc + ", p_price=" + p_price + ", date=" + date + ", time=" + time + ", status=" + status + '}';
    }

    
    
   
    
}
