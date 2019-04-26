/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db.tables;

/**
 *
 * @author kites
 */
public class User_Login {
   
   //1. user_login - id,user_id,uname,passwd,u_type, status
    public int id,user_id;
    public String uname,passwd,u_type, status;

    public User_Login(int id, int user_id, String uname, String passwd, String u_type, String status) {
        this.id = id;
        this.user_id = user_id;
        this.uname = uname;
        this.passwd = passwd;
        this.u_type = u_type;
        this.status = status;
    }

    @Override
    public String toString() {
        return "User_Login{" + "id=" + id + ", user_id=" + user_id + ", uname=" + uname + ", passwd=" + passwd + ", u_type=" + u_type + ", status=" + status + '}';
    }
    

    
    
    
}
