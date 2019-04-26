
<%@page import="java.util.HashMap"%>
<%@page import="com.geekonjava.fileupload.FileUploading"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.tables.User_Profile"%>
<%@page import="db.tables.User_Login"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Registration Action</title>
    </head>
    <!--<h1>Add Customer</h1>-->
    <%@include file="customer_menu.jsp" %>
    <%
            String imagepath = config.getServletContext().getRealPath("/") + "/images/";

            ArrayList<String> imagename = new ArrayList<String>();
            imagename.add("pic");
            

            ArrayList<String> dataname = new ArrayList<String>();
            dataname.add("fname");
            dataname.add("lname");
            dataname.add("dob");
            dataname.add("gender");
           // dataname.add("pic");
            dataname.add("addr1");
            dataname.add("addr2");
            dataname.add("addr3");
            dataname.add("pin");
            dataname.add("email");
            dataname.add("contact");
            

            HashMap map = FileUploading.UploadFile(imagepath, dataname, imagename, request);
            
            //HashMap map = FileUploading.UploadFile(imagepath, imagename, request);
            
       
       
    String fname =(String) map.get("fname");
    String lname = (String) map.get("lname");
    String dob = (String) map.get("dob");
    String gender = (String) map.get("gender");
    String pic = (String) map.get("pic");
    String addr1 = (String) map.get("addr1");
    String addr2 = (String) map.get("addr2");
    String addr3 = (String) map.get("addr3");
    String pin = (String) map.get("pin");
    String email = (String) map.get("email");
    String contact = (String) map.get("contact");
    String date = DateTime.getDate();
    String time = DateTime.getTime();
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_user_profile()+1;
    dbp.close();
    User_Profile obj = new User_Profile(id,fname,lname,dob,gender,pic,addr1,addr2,addr3,pin,email,contact,date,time);
    dbp.open();
    int result = dbp.insert_user_profile(obj);
    dbp.close();
    out.println(result + ">>"+obj.toString()+"<br>");
    dbp.close();
    int user_id = id;
    String uname = email;
    String passwd = "1234";
    String u_type="customer";
    String status = "active";
    dbp.open();
    int uid = dbp.getMaxID_user_login()+1;
    dbp.close();        
    User_Login ul = new User_Login(uid, user_id, uname, passwd, u_type, status);
    dbp.open();
    dbp.insert_user_login(ul);
    dbp.close();
    %>
    User Added   
</html>
