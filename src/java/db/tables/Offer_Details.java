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
public class Offer_Details {
 //15. offer_details- id, product_id,offer,start_date,end_date,status
    public int id, product_id;
    public String offer,start_date,end_date,status;

    public Offer_Details(int id, int product_id, String offer, String start_date, String end_date, String status) {
        this.id = id;
        this.product_id = product_id;
        this.offer = offer;
        this.start_date = start_date;
        this.end_date = end_date;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Offer_Details{" + "id=" + id + ", product_id=" + product_id + ", offer=" + offer + ", start_date=" + start_date + ", end_date=" + end_date + ", status=" + status + '}';
    }
    
    
}
