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
public class Seller_Profile {
//3. seller_profile - id,seller_name,seller_desc,,addr1,addr2,addr3,pin,url,email,contact,date,time,status
    public int id;
    public String seller_name,seller_desc,addr1,addr2,addr3,pin,url,email,contact,date,time,status;
    
   

    

    public Seller_Profile(int id, String seller_name, String seller_desc, String addr1, String addr2, String addr3, String pin, String url, String email, String contact, String date, String time, String status) {
        this.id = id;
        this.seller_name = seller_name;
        this.seller_desc = seller_desc;
        this.addr1 = addr1;
        this.addr2 = addr2;
        this.addr3 = addr3;
        this.pin = pin;
        this.url = url;
        this.email = email;
        this.contact = contact;
        this.date = date;
        this.time = time;
        this.status = status;
    }
        

    
    @Override
    public String toString() {
        return "Seller_profile{" + "id=" + id + ", seller_name=" + seller_name + ", seller_desc=" + seller_desc + ", addr1=" + addr1 + ", addr2=" + addr2 + ", addr3=" + addr3 + ", pin=" + pin + ", url=" + url + ", email=" + email + ", contact=" + contact + ", date=" + date + ", time=" + time + ", status=" + status + '}';
    }
    
    
   }

