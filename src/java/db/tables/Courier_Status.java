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
public class Courier_Status {
//14. courier_status- id, bill_master_id,remarks,date,time,status
    public int id, bill_master_id;
    public String remarks,date,time,status;

    public Courier_Status(int id, int bill_master_id, String remarks, String date, String time, String status) {
        this.id = id;
        this.bill_master_id = bill_master_id;
        this.remarks = remarks;
        this.date = date;
        this.time = time;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Courier_Status{" + "id=" + id + ", bill_master_id=" + bill_master_id + ", remarks=" + remarks + ", date=" + date + ", time=" + time + ", status=" + status + '}';
    }
    
    
}
