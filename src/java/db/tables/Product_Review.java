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
public class Product_Review {
//9. product_review - id,product-id,user_id,review,rating,date,time
    public int id,product_id,user_id;
    public String review,rating,date,time;

    public Product_Review(int id, int product_id, int user_id, String review, String rating, String date, String time) {
        this.id = id;
        this.product_id = product_id;
        this.user_id = user_id;
        this.review = review;
        this.rating = rating;
        this.date = date;
        this.time = time;
    }

    @Override
    public String toString() {
        return "Product_Review{" + "id=" + id + ", product_id=" + product_id + ", user_id=" + user_id + ", review=" + review + ", rating=" + rating + ", date=" + date + ", time=" + time + '}';
    }
    
    
}
