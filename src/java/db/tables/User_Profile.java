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
public class User_Profile {
//2. user_profile - id,fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time
    public int id;
    public String fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time;
    
   

    public User_Profile(int id, String fname, String lname, String dob, String gender, String pic, String addr1, String addr2, String addr3, String pin, String email, String contact, String date, String time) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.dob = dob;
        this.gender = gender;
        this.pic = pic;
        this.addr1 = addr1;
        this.addr2 = addr2;
        this.addr3 = addr3;
        this.pin = pin;
        this.email = email;
        this.contact = contact;
        this.date = date;
        this.time = time;
    }

    @Override
    public String toString() {
        return "User_profile{" + "id=" + id + ", fname=" + fname + ", lname=" + lname + ", dob=" + dob + ", gender=" + gender + ", pic=" + pic + ", addr1=" + addr1 + ", addr2=" + addr2 + ", addr3=" + addr3 + ", pin=" + pin + ", email=" + email + ", contact=" + contact + ", date=" + date + ", time=" + time + '}';
    }
    
    
   }
