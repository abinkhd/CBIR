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
public class Bill_Details {
//13. bill_details- id, bill_master_id,product_id,quantity,amount
    
    public int id, bill_master_id,product_id;
    public String quantity,amount;

    public Bill_Details(int id, int bill_master_id, int product_id, String quantity, String amount) {
        this.id = id;
        this.bill_master_id = bill_master_id;
        this.product_id = product_id;
        this.quantity = quantity;
        this.amount = amount;
    }

    @Override
    public String toString() {
        return "Bill_Details{" + "id=" + id + ", bill_master_id=" + bill_master_id + ", product_id=" + product_id + ", quantity=" + quantity + ", amount=" + amount + '}';
    }

    
    
    
    
}
