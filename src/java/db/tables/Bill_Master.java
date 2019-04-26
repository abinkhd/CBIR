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
public class Bill_Master {
//12. bill_master - id,user_id,bill_no,bill_amt,p_type,date,time,status,addr1,
//addr2,addr3,pin,email,contact,discount 
    public int id,user_id;
    public String bill_no,bill_amt,p_type,date,time,status,addr1,
            addr2,addr3,pin,email,contact,discount;

    public Bill_Master(int id, int user_id, String bill_no, String bill_amt, String p_type, String date, String time, String status, String addr1, String addr2, String addr3, String pin, String email, String contact, String discount) {
        this.id = id;
        this.user_id = user_id;
        this.bill_no = bill_no;
        this.bill_amt = bill_amt;
        this.p_type = p_type;
        this.date = date;
        this.time = time;
        this.status = status;
        this.addr1 = addr1;
        this.addr2 = addr2;
        this.addr3 = addr3;
        this.pin = pin;
        this.email = email;
        this.contact = contact;
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Bill_Master{" + "id=" + id + ", user_id=" + user_id + ", bill_no=" + bill_no + ", bill_amt=" + bill_amt + ", p_type=" + p_type + ", date=" + date + ", time=" + time + ", status=" + status + ", addr1=" + addr1 + ", addr2=" + addr2 + ", addr3=" + addr3 + ", pin=" + pin + ", email=" + email + ", contact=" + contact + ", discount=" + discount + '}';
    }

    
    
}
