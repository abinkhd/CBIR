/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;

import db.tables.*;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author LENOVO
 */
public class DBProcess extends DBCon {

    //1. user_login - id,user_id,uname,passwd,u_type
    /**
     * ***************************************************************
     */
    public int getMaxID_user_login() {
        int mid = 0;
        try {
            String query = "SELECT MAX(id) FROM user_login";
            ResultSet rset = executeQuery(query);
            if (rset.next()) {
                mid = rset.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("getMaxID_user_login Err>>" + e);
        }
        return mid;
    }

    public int insert_user_login(User_Login obj) {
        int result = 0;
        try {
            String query = "INSERT INTO user_login(id,user_id,uname,passwd,u_type,status) "
                    + "VALUES(" + obj.id + "," + obj.user_id + ",'" + obj.uname + "','" + obj.passwd + "',"
                    + "'" + obj.u_type + "','"+obj.status+"')";
            result = executeUpdate(query);
        } catch (Exception e) {
            System.out.println("insert_user_login Err>>" + e);
        }
        return result;
    }

    public int delete_user_login(int id) {
        int result = 0;
        try {
            String query = "DELETE FROM user_login WHERE id=" + id;
            result = executeUpdate(query);
        } catch (Exception e) {
            System.out.println("delete_user_login Err>>" + e);
        }
        return result;
    }

    

    public int update_user_login(User_Login obj) {
        int result = 0;
        try {
            String query = "UPDATE user_login SET user_id=" + obj.user_id + ",uname='" + obj.uname + "',passwd='" + obj.passwd + "',u_type='" + obj.u_type +"',status='"+obj.status+ "' WHERE id=" + obj.id;
            result = executeUpdate(query);
        } catch (Exception e) {
            System.out.println("update_user_login Err>>" + e);
        }
        return result;
    }

    public int update_user_login(String uname, String opasswd, String npasswd, String u_type) {
        int result = 0;
        try {
            String query = "UPDATE user_login SET passwd='" + npasswd + "' WHERE uname='" + uname + "' AND passwd='" + opasswd + "' AND u_type='" + u_type +"'";
            result = executeUpdate(query);
        } catch (Exception e) {
            System.out.println("update_user_login Err>>" + e);
        }
        return result;
    }

    public User_Login select_user_login(int id) {
        User_Login obj = null;
        try {
            String query = "SELECT id,user_id,uname,passwd,u_type, status FROM user_login WHERE id=" + id;
            ResultSet rset = executeQuery(query);
            if (rset.next()) {
                //id,user_id,uname,passwd,u_type
                id = rset.getInt("id");
                int user_id = rset.getInt("user_id");
                String uname = rset.getString("uname");
                String passwd = rset.getString("passwd");
                String u_type = rset.getString("u_type");
                String status = rset.getString("status");

                obj = new User_Login(id, user_id, uname, passwd, u_type, status);
            }
        } catch (Exception e) {
            System.out.println("select_user_login Err>>" + e);
        }
        return obj;
    }

    public User_Login select_user_login(String uname, String passwd, String u_type) {
        User_Login obj = null;
        try {
            String query = "SELECT id,user_id,uname,passwd,u_type,status FROM user_login WHERE uname='" + uname + "' AND passwd='" + passwd + "' AND u_type='" + u_type + "'";
            ResultSet rset = executeQuery(query);
            if (rset.next()) {
                //id,user_id,uname,passwd,u_type
                int id = rset.getInt("id");
                int user_id = rset.getInt("user_id");
                uname = rset.getString("uname");
                passwd = rset.getString("passwd");
                u_type = rset.getString("u_type");
                String status = rset.getString("status");

                obj = new User_Login(id, user_id, uname, passwd, u_type,status);
            }
        } catch (Exception e) {
            System.out.println("select_user_login Err>>" + e);
        }
        return obj;
    }

    public ArrayList<User_Login> selectAll_user_login() {
        ArrayList<User_Login> objList = new ArrayList<User_Login>();
        try {
            String query = "SELECT id,user_id,uname,passwd,u_type,status FROM user_login ";
            ResultSet rset = executeQuery(query);
            while (rset.next()) {
                User_Login obj;
                int id = rset.getInt("id");
                int user_id = rset.getInt("user_id");
                String uname = rset.getString("uname");
                String passwd = rset.getString("passwd");
                String u_type = rset.getString("u_type");
                String status = rset.getString("status");

                obj = new User_Login(id, user_id, uname, passwd, u_type,status);

                objList.add(obj);
            }
        } catch (Exception e) {
            System.out.println("selectAll_user_login Err>>" + e);
        }
        return objList;
    }

    public ArrayList<User_Login> selectAll_user_login(String u_type) {
        ArrayList<User_Login> objList = new ArrayList<User_Login>();
        try {
            String query = "SELECT id,user_id,uname,passwd,u_type,status FROM user_login WHERE u_type='" + u_type + "'";
            ResultSet rset = executeQuery(query);
            while (rset.next()) {
                User_Login obj;
                int id = rset.getInt("id");
                int user_id = rset.getInt("user_id");
                String uname = rset.getString("uname");
                String passwd = rset.getString("passwd");
                String status = rset.getString("status");
                u_type = rset.getString("u_type");
                

                obj = new User_Login(id, user_id, uname, passwd, u_type,status);

                objList.add(obj);
            }
        } catch (Exception e) {
            System.out.println("selectAll_user_login Err>>" + e);
        }
        return objList;
    }
    /**
     * ***************************************************************
     */
    public int getMaxID_user_profile(){ 
        int mid =0;
        try { 
            String query="\"SELECT MAX(id) FROM user_profile\""; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_user_profile Err>>" + e);
        } 
        return mid; 
    }
     
    public int insert_user_profile(User_Profile obj){ 
        int result =0;
        try { 
            String query="INSERT INTO user_profile(id,fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time) "
                    + "VALUES(" + obj.id + ",'" + obj.fname+"','"+obj.lname+"','"+obj.dob+"','"+obj.gender+"','"+obj.pic+"','"+obj.addr1+"','"+obj.addr2+"',"
                    + "'"+obj.addr3+"','"+obj.pin+"','"+obj.email+"','"+obj.contact+"','"+obj.date+"','"+obj.time+"')" ; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_user_profile Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_user_profile(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM user_profile WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_user_profile Err>>" + e);
        } 
        return result; 
    }
     
    public int update_user_profile(User_Profile obj){ 
        int result =0;
        try { 
            String query="UPDATE user_profile SET id=" + obj.id + ",fname='" + obj.fname+",lname='"+obj.lname+","
                    + "dob='"+obj.dob+",gender='"+obj.gender+",pic='"+obj.pic+",addr1='"+obj.addr1+",addr2='"+obj.addr2+","
                    + "addr3='"+obj.addr3+",pin='"+obj.pin+",email='"+obj.email+",contact='"+obj.contact+",date='"+obj.date+","
                    + "time='"+obj.time ;
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_user_profile Err>>" + e);
        } 
        return result; 
    } 
    public User_Profile select_user_profile(int id){ 
        User_Profile obj =null;
        try { 
            String query="SELECT id,fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time"
                    + " FROM user_profile WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                 id = rset.getInt("id");
                String fname= rset.getString("fname"); 
                String lname = rset.getString("lname");
                String dob = rset.getString("dob");
                String gender = rset.getString("gender");
                String pic = rset.getString("pic");
                String addr1 = rset.getString("addr1");
                String addr2 = rset.getString("addr2");
                String addr3 = rset.getString("addr3");
                String pin = rset.getString("pin");
                String email = rset.getString("email");
                String contact = rset.getString("contact");
                String date = rset.getString("date");
                String time = rset.getString("time");
                
                obj = new User_Profile(id,fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_user_profile Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<User_Profile> selectAll_user_profile(){ 
        ArrayList<User_Profile> objList = new ArrayList<User_Profile>(); 
        try { 
            String query="SELECT id,fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time FROM user_profile"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                User_Profile obj;
                int id = rset.getInt("id");
                String fname = rset.getString("fname");
                String lname = rset.getString("lname");
                String dob = rset.getString("dob");
                String gender = rset.getString("gender");
                String pic = rset.getString("pic");
                String addr1 = rset.getString("addr1");
                String addr2 = rset.getString("addr2");
                String addr3 = rset.getString("addr3");
                String pin = rset.getString("pin");
                String email = rset.getString("email");
                String contact = rset.getString("contact");
                String date = rset.getString("date");
                String time = rset.getString("time");
                obj = new User_Profile(id,fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_user_profile Err>>"+e); 
        } 
        return objList;
    }

    
    //**************************************************************************//
    
    
    public int getMaxID_seller_profile(){ 
        int mid =0;
        try { 
            String query="\"SELECT MAX(id) FROM seller_profile\""; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_seller_profile Err>>" + e);
        } 
        return mid; 
    }
     
    public int insert_seller_profile(Seller_Profile obj){ 
        int result =0;
        try { 
            String query="INSERT INTO seller_profile(id,seller_name,seller_desc,addr1,addr2,addr3,pin,url,email,contact,date,time,status) "
                    + "VALUES(" + obj.id + ",'" + obj.seller_name+"','"+obj.seller_desc+"','"+obj.addr1+"','"+obj.addr2+"','"+obj.addr3+"','"+obj.pin+"','"+obj.url+"',"
                    + "'"+obj.email+"','"+obj.contact+"','"+obj.date+"','"+obj.time+"','"+obj.status+"')" ; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_seller_profile Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_seller_profile(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM seller_profile WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_seller_profile Err>>" + e);
        } 
        return result; 
    }
     
    public int update_seller_profile(Seller_Profile obj){ 
        int result =0;
        try { 
            String query="UPDATE seller_profile SET id=" + obj.id + ",seller_name='" + obj.seller_name+",seller_desc='"+obj.seller_desc+","
                    + "addr1='"+obj.addr1+",addr2='"+obj.addr2+",addr3='"+obj.addr3+",pin='"+obj.pin+",url='"+obj.url+","
                    + "email='"+obj.email+",contact='"+obj.contact+",date='"+obj.date+",time='"+obj.time+",status='"+obj.status;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_seller_profile Err>>" + e);
        } 
        return result; 
    } 
    public Seller_Profile select_seller_profile(int id){ 
        Seller_Profile obj =null;
        try { 
            String query="SELECT id,seller_name,seller_desc,,addr1,addr2,addr3,pin,url,email,contact,date,time,status"
                    + " FROM seller_profile WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                 id = rset.getInt("id");
                String seller_name= rset.getString("seller_name"); 
                String seller_desc = rset.getString("seller_desc");
                String addr1 = rset.getString("addr1");
                String addr2 = rset.getString("addr2");
                String addr3 = rset.getString("add3");
                String pin = rset.getString("pin");
                String url = rset.getString("url");
                
                String email = rset.getString("email");
                String contact = rset.getString("contact");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                
                obj = new Seller_Profile(id,seller_name,seller_desc,addr1,addr2,addr3,pin,url,email,contact,date,time,status);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_seller_profile Err>>"+e); 
        } 
        return obj; 
    }
    
    
    public ArrayList<Seller_Profile> selectAll_seller_profile(){ 
        ArrayList<Seller_Profile> objList = new ArrayList<Seller_Profile>(); 
        try { 
            String query="SELECT id,seller_name,seller_desc,,addr1,addr2,addr3,pin,url,email,contact,date,time,status FROM seller_profile"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Seller_Profile obj;
                int id = rset.getInt("id");
                String seller_name= rset.getString("seller_name"); 
                String seller_desc = rset.getString("seller_desc");
                String addr1 = rset.getString("addr1");
                String addr2 = rset.getString("addr2");
                String addr3 = rset.getString("add3");
                String pin = rset.getString("pin");
                String url = rset.getString("url");
                
                String email = rset.getString("email");
                String contact = rset.getString("contact");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                obj = new Seller_Profile(id,seller_name,seller_desc,addr1,addr2,addr3,pin,url,email,contact,date,time,status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_seller_profile Err>>"+e); 
        } 
        return objList;
    }
    
//****************************************************************************//


public int getMaxID_category(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM category"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_category Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_category(Category obj){ 
        int result =0;
        try { 
            String query="INSERT INTO category(id,category_name,category_desc) "
                    + "VALUES(" + obj.id + ",'" + obj.category_name+"','"+obj.category_desc+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_category Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_category(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM category WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_category Err>>" + e);
        } 
        return result; 
    }
     
    public int update_category(Category obj){ 
        int result =0;
        try { 
            String query="UPDATE category SET id=" + obj.id + ",category_name='" + obj.category_name+",category_desc='"+obj.category_desc;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_category Err>>" + e);
        } 
        return result; 
    } 
    public Category select_category(int id){ 
        Category obj =null;
        try { 
            String query="SELECT id,category_name,category_desc FROM category"
                    + " WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                 id = rset.getInt("id");
                String category_name= rset.getString("category_name"); 
                String category_desc = rset.getString("category_desc");
                obj = new Category(id, category_name, category_desc);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_category Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Category> selectAll_category(){ 
        ArrayList<Category> objList = new ArrayList<Category>(); 
        try { 
            String query="SELECT id,category_name,category_desc FROM category"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Category obj;
                int id = rset.getInt("id");
                String category_name= rset.getString("category_name"); 
                String category_desc = rset.getString("category_desc");
                
                obj = new Category(id, category_name, category_desc);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_category Err>>"+e); 
        } 
        return objList;
    }
    
    //**************************************************************************//
   
    public int getMaxID_sub_category(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM sub_category"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_sub_category Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_sub_category(Sub_Category obj){ 
        int result =0;
        try { 
            String query="INSERT INTO sub_category(id,sub_name,sub_desc,category_id) "
                    + "VALUES(" + obj.id + ",'" + obj.sub_name+"','"+obj.sub_desc+"','"+obj.category_id+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_sub_category Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_sub_category(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM sub_category WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_sub_category Err>>" + e);
        } 
        return result; 
    }
     
    public int update_sub_category(Sub_Category obj){ 
        int result =0;
        try { 
            String query="UPDATE sub_category SET id=" + obj.id + ",sub_name='" + obj.sub_name+",sub_desc='"+obj.sub_desc+",category_id='"+obj.category_id;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_sub_category Err>>" + e);
        } 
        return result; 
    } 
    public Sub_Category select_sub_category(int id){ 
        Sub_Category obj =null;
        try { 
            String query="SELECT id,sub_name,sub_desc,category_id FROM sub_category "
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                 id = rset.getInt("id");
                String sub_name= rset.getString("sub_name"); 
                String sub_desc = rset.getString("sub_desc");
                int category_id = rset.getInt("category_id");
                obj = new Sub_Category(id, category_id, sub_name, sub_desc);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_sub_category Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Sub_Category> selectAll_sub_category(){ 
        ArrayList<Sub_Category> objList = new ArrayList<Sub_Category>(); 
        try { 
            String query="SELECT id,sub_name,sub_desc,category_id FROM sub_category"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Sub_Category obj;
                int id = rset.getInt("id");
                String sub_name= rset.getString("sub_name"); 
                String sub_desc = rset.getString("sub_desc");
                int category_id = rset.getInt("category_id");
                obj = new Sub_Category(id, category_id, sub_name, sub_desc);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_sub_category Err>>"+e); 
        } 
        return objList;
    }
    
    
    
    //**************************************************************************//
    
    public int getMaxID_product_details(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM product_details"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_product_details Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_product_details(Product_Details obj){ 
        int result =0;
        try { 
            String query="INSERT INTO product_details(id,p_name,p_desc,seller_id,sub_category_id,p_price,date,time,status) "
                    + "VALUES(" + obj.id + ",'" + obj.p_name+"','"+obj.p_desc+"','"+obj.seller_id+"','"+obj.sub_category_id+"','"+obj.p_price+"','"+obj.date+"',"
                    + "'"+obj.time+"','"+obj.status+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_product_details Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_product_details(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM product_details WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_product_details Err>>" + e);
        } 
        return result; 
    }
     
    public int update_product_details(Product_Details obj){ 
        int result =0;
        try { 
            String query="UPDATE product_details SET id=" + obj.id + ",p_name='" + obj.p_name+",p_desc='"+obj.p_desc+",seller_id='"+obj.seller_id+",sub_category_id='"+obj.sub_category_id+",p_price='"+obj.p_price+","
                    + "date='"+obj.date+",time='"+obj.time+",status='"+obj.status;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_product_details Err>>" + e);
        } 
        return result; 
    } 
    public Product_Details select_product_details(int id){ 
        Product_Details obj =null;
        try { 
            String query="SELECT id,p_name,p_desc,seller_id,sub_category_id,p_price,date,time,status FROM product_details"
                    + " WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int seller_id = rset.getInt("seller_id");
                int sub_category_id = rset.getInt("sub_category_id");
                String p_name= rset.getString("p_name"); 
                String p_desc = rset.getString("p_desc");
                String p_price = rset.getString("p_price");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                obj = new Product_Details(id, seller_id, sub_category_id, p_name, p_desc, p_price, date, time, status);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_category Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Product_Details> selectAll_product_details(){ 
        ArrayList<Product_Details> objList = new ArrayList<Product_Details>(); 
        try { 
            String query="SELECT id,p_name,p_desc,seller_id,sub_category_id,p_price,date,time,status FROM product_details"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Details obj;
                int id = rset.getInt("id");
                int seller_id = rset.getInt("seller_id");
                int sub_category_id = rset.getInt("sub_category_id");
                String p_name= rset.getString("p_name"); 
                String p_desc = rset.getString("p_desc");
                String p_price = rset.getString("p_price");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                
                obj = new Product_Details(id, seller_id, sub_category_id, p_name, p_desc, p_price, date, time, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_Product_details Err>>"+e); 
        } 
        return objList;
    }
    public ArrayList<Product_Details> selectAll_product_details2(String p_name){ 
        ArrayList<Product_Details> objList = new ArrayList<Product_Details>(); 
        try { 
            String query="SELECT id,p_name,p_desc,seller_id,sub_category_id,p_price,date,time,status FROM product_details WHERE p_name like '%"+p_name+"%'"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Details obj;
                int id = rset.getInt("id");
                int seller_id = rset.getInt("seller_id");
                int sub_category_id = rset.getInt("sub_category_id");
                p_name= rset.getString("p_name"); 
                String p_desc = rset.getString("p_desc");
                String p_price = rset.getString("p_price");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                
                obj = new Product_Details(id, seller_id, sub_category_id, p_name, p_desc, p_price, date, time, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_Product_details Err>>"+e); 
        } 
        return objList;
    }
    public ArrayList<Product_Details> selectAll_product_details3(int seller_id){ 
        ArrayList<Product_Details> objList = new ArrayList<Product_Details>(); 
        try { 
            String query="SELECT id,p_name,p_desc,seller_id,sub_category_id,p_price,date,time,status FROM product_details WHERE seller_id=seller_id"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Details obj;
                int id = rset.getInt("id");
                seller_id = rset.getInt("seller_id");
                int sub_category_id = rset.getInt("sub_category_id");
                String p_name= rset.getString("p_name"); 
                String p_desc = rset.getString("p_desc");
                String p_price = rset.getString("p_price");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                
                obj = new Product_Details(id, seller_id, sub_category_id, p_name, p_desc, p_price, date, time, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_Product_details Err>>"+e); 
        } 
        return objList;
    }
    
    public ArrayList<Product_Details> selectAll_product_details4(int sub_category_id){ 
        ArrayList<Product_Details> objList = new ArrayList<Product_Details>(); 
        try { 
            String query="SELECT id,p_name,p_desc,seller_id,sub_category_id,p_price,date,time,status FROM product_details WHERE sub_category_id=sub_category_id"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Details obj;
                int id = rset.getInt("id");
                int seller_id = rset.getInt("seller_id");
                sub_category_id = rset.getInt("sub_category_id");
                String p_name= rset.getString("p_name"); 
                String p_desc = rset.getString("p_desc");
                String p_price = rset.getString("p_price");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                
                obj = new Product_Details(id, seller_id, sub_category_id, p_name, p_desc, p_price, date, time, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_Product_details Err>>"+e); 
        } 
        return objList;
    }
    //*******************************************************************************//
    
    public int getMaxID_product_stock(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM product_stock"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_product_stock Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_product_stock(Product_Stock obj){ 
        int result =0;
        try { 
            String query="INSERT INTO product_stock(id,product_id,stock,date,time,status) "
                    + "VALUES(" + obj.id + ",'" + obj.product_id+"','"+obj.stock+"','"+obj.date+"','"+obj.time+"','"+obj.status+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_product_stock Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_product_stock(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM product_stock WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_product_stock Err>>" + e);
        } 
        return result; 
    }
     
    public int update_product_stock(Product_Stock obj){ 
        int result =0;
        try { 
            String query="UPDATE product_stock SET id=" + obj.id + ",product_id='" + obj.product_id+",stock='"+obj.stock+",date='"+obj.date+","
                    + "time='"+obj.time+",status='"+obj.status;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_product_stock Err>>" + e);
        } 
        return result; 
    } 
    public Product_Stock select_product_stock(int id){ 
        Product_Stock obj =null;
        try { 
            String query="SELECT id,product_id,stock,date,time,status FROM product_stock"
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                String stock= rset.getString("stock"); 
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
               
                obj = new Product_Stock(id, product_id, stock, date, time, status);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_product_stock Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Product_Stock> selectAll_product_stock(){ 
        ArrayList<Product_Stock> objList = new ArrayList<Product_Stock>(); 
        try { 
            String query="SELECT id,product_id,stock,date,time,status FROM product_stock"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Stock obj;
                int id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                String stock= rset.getString("stock"); 
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                obj = new Product_Stock(id, product_id, stock, date, time, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_product_stock Err>>"+e); 
        } 
        return objList;
    }
    //*****************************************************************************//
    
    public int getMaxID_product_pic(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM product_pic"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_product_pic Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_product_pic(Product_Pic obj){ 
        int result =0;
        try { 
            String query="INSERT INTO product_pic(id,product_id,pic,date,time) "
                    + "VALUES(" + obj.id + ",'" + obj.product_id+"','"+obj.pic+"','"+obj.date+"','"+obj.time+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_product_pic Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_product_pic(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM product_pic WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_product_pic Err>>" + e);
        } 
        return result; 
    }
     
    public int update_product_pic(Product_Pic obj){ 
        int result =0;
        try { 
            String query="UPDATE product_pic SET id=" + obj.id + ",product_id='" + obj.product_id+",pic='"+obj.pic+",date='"+obj.date+","
                    + "time='"+obj.time;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_product_pic Err>>" + e);
        } 
        return result; 
    } 
    public Product_Pic select_product_pic(int id){ 
        Product_Pic obj =null;
        try { 
            String query="SELECT id,product_id,pic,date,time FROM product_pic"
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                String pic= rset.getString("pic"); 
                String date = rset.getString("date");
                String time = rset.getString("time");
                
               
                obj = new Product_Pic(id, product_id, pic, date, time);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_product_pic Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Product_Pic> selectAll_product_pic(){ 
        ArrayList<Product_Pic> objList = new ArrayList<Product_Pic>(); 
        try { 
            String query="SELECT id,product_id,pic,date,time FROM product_pic"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Pic obj;
                int id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                String pic= rset.getString("pic"); 
                String date = rset.getString("date");
                String time = rset.getString("time");
                obj = new Product_Pic(id, product_id, pic, date, time);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_product_pic Err>>"+e); 
        } 
        return objList;
    }
    
    //***************************************************************************//
    
    public int getMaxID_product_review(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM product_review"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_product_review Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_product_review(Product_Review obj){ 
        int result =0;
        try { 
            String query="INSERT INTO product_review(id,product_id,user_id,review,rating,date,time) "
                    + "VALUES(" + obj.id + ",'" + obj.product_id+"','"+obj.user_id+"','"+obj.review+"','"+obj.rating+"','"+obj.date+"','"+obj.time+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_product_review Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_product_review(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM product_review WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_product_review Err>>" + e);
        } 
        return result; 
    }
     
    public int update_product_review(Product_Review obj){ 
        int result =0;
        try { 
            String query="UPDATE product_review SET id=" + obj.id + ",product_id='" + obj.product_id+",user_id='"+obj.user_id+",review='"+obj.review+",rating='"+obj.rating+",date='"+obj.date+","
                    + "time='"+obj.time;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_product_review Err>>" + e);
        } 
        return result; 
    } 
    public Product_Review select_product_review(int id){ 
        Product_Review obj =null;
        try { 
            String query="SELECT id,product_id,user_id,review,rating,date,time FROM product_review"
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                int user_id = rset.getInt("user_id");
                String review= rset.getString("review");
                String rating= rset.getString("rating");
                String date = rset.getString("date");
                String time = rset.getString("time");
                
               
                obj = new Product_Review(id, product_id, user_id, review, rating, date, time);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_product_review Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Product_Review> selectAll_product_review(){ 
        ArrayList<Product_Review> objList = new ArrayList<Product_Review>(); 
        try { 
            String query="SELECT id,product_id,user_id,review,rating,date,time FROM product_review"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Review obj;
                int id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                int user_id = rset.getInt("user_id");
                String review= rset.getString("review");
                String rating= rset.getString("rating");
                String date = rset.getString("date");
                String time = rset.getString("time");
                obj = new Product_Review(id, product_id, user_id, review, rating, date, time);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_product_review Err>>"+e); 
        } 
        return objList;
    }
    public ArrayList<Product_Review> selectAll_product_review(int user_id){ 
        ArrayList<Product_Review> objList = new ArrayList<Product_Review>(); 
        try { 
            String query="SELECT id,product_id,user_id,review,rating,date,time FROM product_review WHERE user_id="+user_id; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Review obj;
                int id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                user_id = rset.getInt("user_id");
                String review= rset.getString("review");
                String rating= rset.getString("rating");
                String date = rset.getString("date");
                String time = rset.getString("time");
                obj = new Product_Review(id, product_id, user_id, review, rating, date, time);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_product_review Err>>"+e); 
        } 
        return objList;
    }
    //******************************************************************************//
    
    public int getMaxID_user_cart(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM user_cart"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_user_cart Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_user_cart(User_Cart obj){ 
        int result =0;
        try { 
            String query="INSERT INTO user_cart(id, product_id,user_id,quantity,date,time,status) "
                    + "VALUES(" + obj.id + ",'" + obj.product_id+"','"+obj.user_id+"','"+obj.quantity+"','"+obj.date+"','"+obj.time+"','"+obj.status+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_user_cart Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_user_cart(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM user_cart WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_user_cart Err>>" + e);
        } 
        return result; 
    }
     
    public int update_user_cart(User_Cart obj){ 
        int result =0;
        try { 
            String query="UPDATE user_cart SET id=" + obj.id + ",product_id='" + obj.product_id+",user_id='"+obj.user_id+",quantity='"+obj.quantity+",date='"+obj.date+","
                    + "time='"+obj.time+",status='"+obj.status;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_user_cart Err>>" + e);
        } 
        return result; 
    } 
    public User_Cart select_user_cart(int id){ 
        User_Cart obj =null;
        try { 
            String query="SELECT id, product_id,user_id,quantity,date,time,status FROM user_cart"
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                int user_id = rset.getInt("user_id");
                String quantity= rset.getString("quantity");
                
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status= rset.getString("status");
                
               
                obj = new User_Cart(id, product_id, user_id, quantity, date, time, status);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_user_cart Err>>"+e); 
        } 
        return obj; 
    }
    
    
    public ArrayList<User_Cart> selectAll_user_cart(int user_id){ 
        ArrayList<User_Cart> objList = new ArrayList<User_Cart>(); 
        try { 
            String query="SELECT id, product_id,user_id,quantity,date,time,status FROM user_cart"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                User_Cart obj;
                int id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                user_id = rset.getInt("user_id");
                String quantity= rset.getString("quantity");
                
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status= rset.getString("status");
                
                obj = new User_Cart(id, product_id, user_id, quantity, date, time, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_user_cart Err>>"+e); 
        } 
        return objList;
    }
        
        //******************************************************************************//
        
        public int getMaxID_product_sales(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM product_sales"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_product_sales Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_product_sales(Product_Sales obj){ 
        int result =0;
        try { 
            String query="INSERT INTO uproduct_sales(id, product_id,user_id,quantity,date,time,bill_id) "
                    + "VALUES(" + obj.id + ",'" + obj.product_id+"','"+obj.user_id+"','"+obj.quantity+"','"+obj.date+"','"+obj.time+"','"+obj.bill_id+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_product_sales Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_product_sales(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM product_sales WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_product_sales Err>>" + e);
        } 
        return result; 
    }
     
    public int update_product_sales(Product_Sales obj){ 
        int result =0;
        try { 
            String query="UPDATE product_sales SET id=" + obj.id + ",product_id='" + obj.product_id+",user_id='"+obj.user_id+",quantity='"+obj.quantity+",date='"+obj.date+","
                    + "time='"+obj.time+",bill_id='"+obj.bill_id;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_product_sales Err>>" + e);
        } 
        return result; 
    } 
    public Product_Sales select_product_sales(int id){ 
        Product_Sales obj =null;
        try { 
            String query="SELECT id, product_id,user_id,quantity,date,time,bill_id FROM product_sales"
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                int user_id = rset.getInt("user_id");
                String quantity= rset.getString("quantity");
                
                String date = rset.getString("date");
                String time = rset.getString("time");
                int bill_id= rset.getInt("bill_id");
                
               
                obj = new Product_Sales(id, product_id, user_id, bill_id, quantity, date, time);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_product_sales Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Product_Sales> selectAll_product_sales(){ 
        ArrayList<Product_Sales> objList = new ArrayList<Product_Sales>(); 
        try { 
            String query="SELECT id, product_id,user_id,quantity,date,time,bill_id FROM product_sales"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Sales obj;
                int id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                int user_id = rset.getInt("user_id");
                String quantity= rset.getString("quantity");
                
                String date = rset.getString("date");
                String time = rset.getString("time");
                int bill_id= rset.getInt("bill_id");
                
                
                obj = new Product_Sales(id, product_id, user_id, bill_id, quantity, date, time);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_product_sales Err>>"+e); 
        } 
        return objList;
        
    }
    //*****************************************************************************//
    
    
    public int getMaxID_bill_master(){ 
        int mid =0;
        try { 
            String query="\"SELECT MAX(id) FROM bill_master\""; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_bill_master Err>>" + e);
        } 
        return mid; 
    }
     
    public int insert_bill_master(Bill_Master obj){ 
        int result =0;
        try { 
            String query="INSERT INTO bill_master(id,user_id,bill_no,bill_amt,p_type,date,time,status,addr1,addr2,addr3,pin,email,contact,discount) "
                    + "VALUES(" + obj.id + ",'" + obj.user_id+"','"+obj.bill_no+"','"+obj.bill_amt+"','"+obj.p_type+"','"+obj.date+"','"+obj.time+"','"+obj.status+"',"
                    + "'"+obj.addr1+"','"+obj.addr2+"','"+obj.addr3+"','"+obj.pin+"','"+obj.email+"','"+obj.contact+"','"+obj.discount+"')" ; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_bill_master Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_bill_master(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM bill_master WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_bill_master Err>>" + e);
        } 
        return result; 
    }
     
    public int update_bill_master(Bill_Master obj){ 
        int result =0;
        try { 
            String query="UPDATE bill_master SET id=" + obj.id + ",user_id='" + obj.user_id+",bill_no='"+obj.bill_no+","
                    + "bill_amt='"+obj.bill_amt+",p_type='"+obj.p_type+",date='"+obj.date+",time='"+obj.time+",status='"+obj.status+",addr1='"+obj.addr1+","
                    + "addr2='"+obj.addr2+",addr3='"+obj.addr3+",pin='"+obj.pin+",email='"+obj.email+",contact='"+obj.contact+","
                    + "time='"+obj.discount ;
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_bill_master Err>>" + e);
        } 
        return result; 
    } 
    public Bill_Master select_bill_master(int id){ 
        Bill_Master obj =null;
        try { 
            String query="SELECT id,user_id,bill_no,bill_amt,p_type,date,time,status,addr1,addr2,addr3,pin,email,contact,discount"
                    + " FROM bill_master WHERE id=" +id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int user_id= rset.getInt("user_id"); 
                String bill_no = rset.getString("bill_no");
                String bill_amt = rset.getString("bill_amt");
                String p_type = rset.getString("p_type");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                String addr1 = rset.getString("addr1");
                String addr2 = rset.getString("addr2");
                String addr3 = rset.getString("addr3");
                String pin = rset.getString("pin");
                String email = rset.getString("email");
                String contact = rset.getString("contact");
                String discount = rset.getString("discount");
                
                
                obj = new Bill_Master(id, user_id, bill_no, bill_amt, p_type, date, time, status, addr1, addr2, addr3, pin, email, contact, discount);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_bill_master Err>>"+e); 
        } 
        return obj; 
    }
    
    
    public ArrayList<Bill_Master> selectAll_bill_master(int user_id){ 
        ArrayList<Bill_Master> objList = new ArrayList<Bill_Master>(); 
        try { 
            String query="SELECT id,user_id,bill_no,bill_amt,p_type,date,time,status,addr1,addr2,addr3,pin,email,contact,discount FROM bill_master"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Bill_Master obj;
                int id = rset.getInt("id");
                user_id= rset.getInt("user_id"); 
                String bill_no = rset.getString("bill_no");
                String bill_amt = rset.getString("bill_amt");
                String p_type = rset.getString("p_type");
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                String addr1 = rset.getString("addr1");
                String addr2 = rset.getString("addr2");
                String addr3 = rset.getString("addr3");
                String pin = rset.getString("pin");
                String email = rset.getString("email");
                String contact = rset.getString("contact");
                String discount = rset.getString("discount");
                
                obj = new Bill_Master(id, user_id, bill_no, bill_amt, p_type, date, time, status, addr1, addr2, addr3, pin, email, contact, discount);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_bill_master Err>>"+e); 
        } 
        return objList;
    }
    //************************************************************************************//
    
    public int getMaxID_bill_details(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM bill_details"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_bill_details Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_bill_details(Bill_Details obj){ 
        int result =0;
        try { 
            String query="INSERT INTO bill_details(id, bill_master_id,product_id,quantity,amount) "
                    + "VALUES(" + obj.id + ",'" + obj.bill_master_id+"','"+obj.product_id+"','"+obj.quantity+"','"+obj.amount+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_bill_details Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_bill_details(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM bill_details WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_bill_details Err>>" + e);
        } 
        return result; 
    }
     
    public int update_bill_details(Bill_Details obj){ 
        int result =0;
        try { 
            String query="UPDATE bill_details SET id=" + obj.id + ",bill_master_id='" + obj.bill_master_id+",product_id='"+obj.product_id+",quantity='"+obj.quantity+",amount='"+obj.amount+"";
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_bill_details Err>>" + e);
        } 
        return result; 
    } 
    public Bill_Details select_bill_details(int id){ 
        Bill_Details obj =null;
        try { 
            String query="SELECT id, bill_master_id,product_id,quantity,amount FROM bill_details"
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int bill_master_id = rset.getInt("bill_master_id");
                int product_id = rset.getInt("product_id");
                String quantity= rset.getString("quantity"); 
                String amount = rset.getString("amount");
                
                obj = new Bill_Details(id, bill_master_id, product_id, quantity, amount);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_bill_details Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Bill_Details> selectAll_bill_details(){ 
        ArrayList<Bill_Details> objList = new ArrayList<Bill_Details>(); 
        try { 
            String query="SELECT id, bill_master_id,product_id,quantity,amount FROM bill_details"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Bill_Details obj;
                int id = rset.getInt("id");
                int bill_master_id = rset.getInt("bill_master_id");
                int product_id = rset.getInt("product_id");
                String quantity= rset.getString("quantity"); 
                String amount = rset.getString("amount");
                obj = new Bill_Details(id, bill_master_id, product_id, quantity, amount);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_bill_details Err>>"+e); 
        } 
        return objList;
    }
    
    //********************************************************************************//
    
    public int getMaxID_courier_status(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM courier_status"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_courier_status Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_courier_status(Courier_Status obj){ 
        int result =0;
        try { 
            String query="INSERT INTO courier_status(id, bill_master_id,remarks,date,time,status) "
                    + "VALUES(" + obj.id + ",'" + obj.bill_master_id+"','"+obj.remarks+"','"+obj.date+"','"+obj.time+"','"+obj.status+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_courier_status Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_courier_status(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM courier_status WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_courier_status Err>>" + e);
        } 
        return result; 
    }
     
    public int update_courier_status(Courier_Status obj){ 
        int result =0;
        try { 
            String query="UPDATE courier_status SET id=" + obj.id + ",bill_master_id='" + obj.bill_master_id+",remarks='"+obj.remarks+",date='"+obj.date+","
                    + "time='"+obj.time+",status='"+obj.status;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_courier_status Err>>" + e);
        } 
        return result; 
    } 
    public Courier_Status select_courier_status(int id){ 
        Courier_Status obj =null;
        try { 
            String query="SELECT id, bill_master_id,remarks,date,time,status FROM courier_status"
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int bill_master_id = rset.getInt("bill_master_id");
                String remarks= rset.getString("remarks"); 
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
               
                obj = new Courier_Status(id, bill_master_id, remarks, date, time, status);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_courier_status Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Courier_Status> selectAll_courier_status(){ 
        ArrayList<Courier_Status> objList = new ArrayList<Courier_Status>(); 
        try { 
            String query="SELECT id,bill_master_id,remarks,date,time,status FROM courier_status"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Courier_Status obj;
                int id = rset.getInt("id");
                int bill_master_id = rset.getInt("bill_master_id");
                String remarks= rset.getString("remarks"); 
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                obj = new Courier_Status(id, bill_master_id, remarks, date, time, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_courier_status Err>>"+e); 
        } 
        return objList;
    }
    
    public ArrayList<Courier_Status> selectAll_courier_status(int bill_master_id){ 
        ArrayList<Courier_Status> objList = new ArrayList<Courier_Status>(); 
        try { 
            String query="SELECT id,bill_master_id,remarks,date,time,status FROM courier_status WHERE bill_master_id="+bill_master_id; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Courier_Status obj;
                int id = rset.getInt("id");
                bill_master_id = rset.getInt("bill_master_id");
                String remarks= rset.getString("remarks"); 
                String date = rset.getString("date");
                String time = rset.getString("time");
                String status = rset.getString("status");
                obj = new Courier_Status(id, bill_master_id, remarks, date, time, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_courier_status Err>>"+e); 
        } 
        return objList;
    }
    
    //**********************************************************************************//
    
    public int getMaxID_offer_details(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM offer_details"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_offer_details Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_offer_details(Offer_Details obj){ 
        int result =0;
        try { 
            String query="INSERT INTO offer_details(id, product_id,offer,start_date,end_date,status) "
                    + "VALUES(" + obj.id + ",'" + obj.product_id+"','"+obj.offer+"','"+obj.start_date+"','"+obj.end_date+"','"+obj.status+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_offer_details Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_offer_details(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM offer_details WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_offer_details Err>>" + e);
        } 
        return result; 
    }
     
    public int update_offer_details(Offer_Details obj){ 
        int result =0;
        try { 
            String query="UPDATE courier_status SET id=" + obj.id + ",product_id='" + obj.product_id+",offer='"+obj.offer+",start_date='"+obj.start_date+","
                    + "end_date='"+obj.end_date+",status='"+obj.status;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_offer_details Err>>" + e);
        } 
        return result; 
    } 
    public Offer_Details select_offer_details(int id){ 
        Offer_Details obj =null;
        try { 
            String query="SELECT id, product_id,offer,start_date,end_date,status FROM offer_details"
                    + "WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                String offer= rset.getString("offer"); 
                String start_date = rset.getString("start_date");
                String end_date = rset.getString("end_date");
                String status = rset.getString("status");
               
                obj = new Offer_Details(id, product_id, offer, start_date, end_date, status);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_offer_details Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Offer_Details> selectAll_offer_details(){ 
        ArrayList<Offer_Details> objList = new ArrayList<Offer_Details>(); 
        try { 
            String query="SELECT id,product_id,offer,start_date,end_date,status FROM offer_details"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Offer_Details obj;
                int id = rset.getInt("id");
                int product_id = rset.getInt("product_id");
                String offer= rset.getString("offer"); 
                String start_date = rset.getString("start_date");
                String end_date = rset.getString("end_date");
                String status = rset.getString("status");
                obj = new Offer_Details(product_id, product_id, offer, start_date, end_date, status);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_offer_details Err>>"+e); 
        } 
        return objList;
    }
    
    //*******************************************************************//
    
    public int getMaxID_product_tags(){ 
        int mid =0;
        try { 
            String query="SELECT MAX(id) FROM product_tags"; 
            ResultSet rset = executeQuery(query); 
            if(rset.next()){ 
                mid = rset.getInt(1); 
            } 
        } 
        catch (Exception e) { 
            System.out.println(" getMaxID_product_tags Err>>" + e);
        } 
        return mid; 
}
     
    public int insert_product_tags(Product_Tags obj){ 
        int result =0;
        try { 
            String query="INSERT INTO product_tags(id, p_id,tags) "
                    + "VALUES(" + obj.id + ",'" + obj.p_id+"','"+obj.tags+"')"; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) { 
            System.out.println("update_product_tags Err>>" + e);
        } 
        return result; 
    } 
    
    public int delete_product_tags(int id){ 
        int result = 0;
        try { 
            String query="DELETE FROM product_tags WHERE id=" + id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_product_tags Err>>" + e);
        } 
        return result; 
    }
    public int delete_product_tags2(int p_id){ 
        int result = 0;
        try { 
            String query="DELETE FROM product_tags WHERE p_id=" + p_id; 
            result = executeUpdate(query); 
        } 
        catch (Exception e) {
            System.out.println(" delete_product_tags Err>>" + e);
        } 
        return result; 
    }
     
    public int update_product_tags(Product_Tags obj){ 
        int result =0;
        try { 
            String query="UPDATE product_tags SET id=" + obj.id + ",p_id='" + obj.p_id+",tags='"+obj.tags;
               
            result = executeUpdate(query); 
        } 
        catch(Exception e) { 
            System.out.println(" update_product_tags Err>>" + e);
        } 
        return result; 
    } 
    public Product_Tags select_product_tags(int id){ 
        Product_Tags obj =null;
        try { 
            String query="SELECT id, p_id,tags FROM product_tags"
                    + " WHERE id=" + id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                 id = rset.getInt("id");
                int p_id= rset.getInt("p_id"); 
                String tags= rset.getString("tags");
                obj = new Product_Tags(id, p_id, tags);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_product_tags Err>>"+e); 
        } 
        return obj; 
    }
    public Product_Tags select_product_tags2(int p_id){ 
        Product_Tags obj =null;
        try { 
            String query="SELECT id, p_id,tags FROM product_tags"
                    + " WHERE p_id=" + p_id; 
            ResultSet rset = executeQuery(query);
            if(rset.next()){ 
                int id = rset.getInt("id");
                p_id= rset.getInt("p_id"); 
                String tags= rset.getString("tags");
                obj = new Product_Tags(id, p_id, tags);
            } 
        } 
        catch (Exception e) { 
            System.out.println("select_product_tags Err>>"+e); 
        } 
        return obj; 
    }
    
    public ArrayList<Product_Tags> selectAll_product_tags(String tags){ 
        ArrayList<Product_Tags> objList = new ArrayList<Product_Tags>(); 
        try { 
            String query="SELECT * FROM product_tags WHERE tags like '%"+tags+"%'"; 
            ResultSet rset = executeQuery(query); 
            while(rset.next()){
                Product_Tags obj;
                int  id = rset.getInt("id");
                int p_id= rset.getInt("p_id"); 
                tags= rset.getString("tags");
                
                obj = new Product_Tags(id, p_id, tags);

                objList.add(obj);
            }
        } catch (Exception e) { 
            System.out.println(" select_product_tags Err>>"+e); 
        } 
        return objList;
    }
    
    

}

