package db;

import java.sql.*;

public class DBCon {

    Connection con = null;
    Statement stmt = null;
    public static String tables[] =  new String[18];
/********************SQlite********************************/ 
    static final String MACPath ="C:\\Users\\aBiN\\Documents\\NetBeansProjects\\E_commerce\\out\\ecom.db";
    static final String DBPATH =MACPath;
    static final String DRIVER = "org.sqlite.JDBC";
    static final String CONSTRING = "jdbc:sqlite:"+DBPATH;
        public void open() {

        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(CONSTRING);
            System.out.println("Database Created");
            con.setAutoCommit(false);
            stmt = con.createStatement();
            System.out.println("Statement Created");

        } catch (Exception e) {
            System.out.println("DBConn Constructor Err>>" + e);
        }
    }


    public void createTables() {
        try {

           
            
            //1. user_login - id,user_id,uname,passwd,u_type, status
            tables[0] = "CREATE TABLE IF NOT EXISTS user_login("
                    + "id INT,"
                    + "user_id INT,"
                    + "uname VARCHAR(50),"
                    + "passwd VARCHAR(25),"
                    + "u_type VARCHAR(10),"
                    + "status VARCHAR(10))";
            //2. user_profile - id,fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time
            tables[1] = "CREATE TABLE IF NOT EXISTS user_profile("
                    + "id INT,"
                    + "fname VARCHAR(50),"
                    + "lname VARCHAR(50),"
                    + "dob VARCHAR(25),"
                    + "gender VARCHAR(10),"
                    + "pic VARCHAR(150),"
                    + "addr1 VARCHAR(50),"
                    + "addr2 VARCHAR(50),"
                    + "addr3 VARCHAR(50),"
                    + "pin VARCHAR(6),"
                    + "email VARCHAR(20),"
                    + "contact VARCHAR(10),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10))";
             //3. seller_profile - id,seller_name,seller_desc,,addr1,addr2,addr3,pin,url,email,contact,date,time,status
            tables[2] = "CREATE TABLE IF NOT EXISTS seller_profile("
                    + "id INT,"
                    + "seller_name VARCHAR(50),"
                    + "seller_desc VARCHAR(50),"
                    // + "dob VARCHAR(25),"
                    //+ "gender VARCHAR(10),"
                    //+ "pic VARCHAR(150),"
                    + "addr1 VARCHAR(50),"
                    + "addr2 VARCHAR(50),"
                    + "addr3 VARCHAR(50),"
                    + "pin VARCHAR(6),"
                    + "url VARCHAR(50),"
                    + "email VARCHAR(20),"
                    + "contact VARCHAR(10),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10),"
                    + "status VARCHAR(20))";
            //4. category - id,category_name,category_desc
            tables[3] = "CREATE TABLE IF NOT EXISTS category("
                    + "id INT,"
                    + "category_name VARCHAR(50),"
                    + "category_desc VARCHAR(50))";
            //5. sub_category - id,sub_name,sub_desc,category_id
            tables[4] = "CREATE TABLE IF NOT EXISTS sub_category("
                    + "id INT,"
                    + "sub_name VARCHAR(50),"
                    + "sub_desc VARCHAR(50),"
                    + "category_id INT)";
            //6. product_details - id,p_name,p_desc,seller_id,sub_category_id,p_price,date,time,status
            tables[5] = "CREATE TABLE IF NOT EXISTS product_details("
                    + "id INT,"
                    + "p_name VARCHAR(50),"
                    + "p_desc VARCHAR(50),"
                    + "seller_id INT,"
                    + "sub_category_id INT,"
                    + "p_price VARCHAR(10),"
                    + "date VARCHAR(20),"
                    + "time VARCHAR(20),"
                    + "status VARCHAR(10))";
            //7. product_stock - id,product-id,stock,date,time,status
            tables[6] = "CREATE TABLE IF NOT EXISTS product_stock("
                    + "id INT,"
                    + "product_id INT,"
                    + "stock VARCHAR(50),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10),"
                    + "status VARCHAR(20))";
            //8. product_pic - id,product-id,pic,date,time
            tables[7] = "CREATE TABLE IF NOT EXISTS product_pic("
                    + "id INT,"
                    + "product_id INT,"
                    + "pic VARCHAR(150),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10))";
            //9. product_review - id,product-id,user_id,review,rating,date,time
            tables[8] = "CREATE TABLE IF NOT EXISTS product_review("
                    + "id INT,"
                    + "product_id INT,"
                    + "user_id INT,"
                    + "review VARCHAR(50),"
                    + "rating VARCHAR(50),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10))";   
            //10. user_cart- id, product_id,user_id,quantity,date,time,status
            tables[9] = "CREATE TABLE IF NOT EXISTS user_cart("
                    + "id INT,"
                    + "product_id INT,"
                    + "user_id INT,"
                    + "quantity VARCHAR(50),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10),"
                    + "status VARCHAR(10))";   
            //11. product_sales- id, product_id,user_id,quantity,date,time,bill_id
            tables[10] = "CREATE TABLE IF NOT EXISTS product_sales("
                    + "id INT,"
                    + "product_id INT,"
                    + "user_id INT,"
                    + "quantity VARCHAR(50),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10),"
                    + "bill_id INT)"; 
            //12. bill_master - id,user_id,bill_no,bill_amt,p_type,date,time,status,addr1,addr2,addr3,pin,email,contact,discount
            tables[11] = "CREATE TABLE IF NOT EXISTS bill_master("
                    + "id INT,"
                    + "user_id INT,"
                    + "bill_no VARCHAR(50),"
                    + "bill_amt VARCHAR(50),"
                    
                    + "p_type VARCHAR(50),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10),"
                    + "status VARCHAR(10),"
                    //+ "gender VARCHAR(10),"
                    //+ "pic VARCHAR(150),"
                    + "addr1 VARCHAR(50),"
                    + "addr2 VARCHAR(50),"
                    + "addr3 VARCHAR(50),"
                    + "pin VARCHAR(6),"
                    + "email VARCHAR(20),"
                    + "contact VARCHAR(10),"
                    + "discount VARCHAR(10))";
            //13. bill_details- id, bill_master_id,product_id,quantity,amount
            tables[12] = "CREATE TABLE IF NOT EXISTS bill_details("
                    + "id INT,"
                    + "bill_master_id INT,"
                    + "product_id INT,"
                    + "quantity VARCHAR(50),"
                    + "amount VARCHAR(10))";
                   
            //14. courier_status- id, bill_master_id,remarks,date,time,status
            tables[13] = "CREATE TABLE IF NOT EXISTS courier_status("
                    + "id INT,"
                    + "bill_master_id INT ,"
                    + "remarks VARCHAR(50),"
                    + "date VARCHAR(10),"
                    + "time VARCHAR(10),"
                    + "status VARCHAR(10))";
            //15. offer_details- id, product_id,offer,start_date,end_date,status
            tables[14] = "CREATE TABLE IF NOT EXISTS offer_details("
                    + "id INT,"
                    + "product_id INT ,"
                    + "offer VARCHAR(50),"
                    + "start_date VARCHAR(10),"
                    + "end_date VARCHAR(10),"
                    + "status VARCHAR(10))";                      
            //16. product_tags- id, p_id,tags
            tables[15] = "CREATE TABLE IF NOT EXISTS product_tags("
                    + "id INT,"
                    + "p_id INT ,"
                    + "tags VARCHAR(50))";
            
            for(int i=0;i<tables.length;i++){
                if(tables[i]==null)break;
                int j = executeUpdate(tables[i]);
              //  System.out.println("Result"+j);
                if (j > 0) {
                    System.out.println("Table Created");
                }
            }
            
        } catch (Exception e) {
            System.out.println("DBConn Create Tables Err>>" + e);
        }
    }

    public void dropTables() {
        try {
            tables = new String[]{"user_login","user_profile,seller_profile,category,sub_category,producy_details,"
                    + "product_stock,product_pic,product_review,user_cart,product_sales,bill_master,bill_details,"
                    + "courier_status,offer_details,product_tags"};
            
             
            
            for(int i=0;i<tables.length;i++){
                if(tables[i]==null)break;
                String q="DROP TABLE IF EXISTS "+tables[i].trim();
                int j = executeUpdate(q);

                if (j > 0) {
                    System.out.println("Table Deleted");
                }
            }
        } catch (Exception e) {
            System.out.println("DBCon Drop Tables Err>>" + e);
        }

    }

    public int executeUpdate(String query) {
        int result = 0;
        try {
            System.out.println("DBCon Query>>" + query);
            result = stmt.executeUpdate(query);
            con.commit();
        } catch (Exception e) {
            System.out.println("DBCon Execute Update Error>>" + e);
        }
        return result;
    }

    public ResultSet executeQuery(String query) {
        ResultSet rset = null;
        try {

            System.out.println("DBCon Query>>" + query);
            con.commit();
            rset = stmt.executeQuery(query);

        } catch (Exception e) {
            System.out.println("DBCon Execute Query Err>>" + e);
        }
        return rset;
    }

    public void close() {
        try {
            con.close();
        } catch (Exception e) {
            System.out.println("DBCon Close Err>>" + e);
        }
    }

    public static void main(String args[]) {
        DBCon dbcon = new DBCon();
        dbcon.open();
        dbcon.createTables();
        //dbcon.dropTables();
        dbcon.close();
    }
}
