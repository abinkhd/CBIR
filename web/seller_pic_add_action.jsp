<%@page import="java.util.HashMap"%>
<%@page import="com.geekonjava.fileupload.FileUploading"%>
<%@page import="db.tables.Product_Pic"%>
<%@page import="db.tables.User_Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Picture Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="seller_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Picture Result</font></h2>-->
    <%
     String imagepath = config.getServletContext().getRealPath("/") + "/images/";

            ArrayList<String> imagename = new ArrayList<String>();
            imagename.add("pic");
            

            ArrayList<String> dataname = new ArrayList<String>();
            dataname.add("product_id");
            
            

            HashMap map = FileUploading.UploadFile(imagepath, dataname, imagename, request);    
   //20. designation_settings - id,designation_name
    
    int product_id = Integer.parseInt(map.get("product_id")+"");
    String pic = (String)map.get("pic");
    String date = DateTime.getDate();
    String time = DateTime.getTime(); 
    
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_product_stock()+1;
    dbp.close();
    Product_Pic  obj = new Product_Pic(id, product_id, pic, date, time);
    dbp.open();
    int result = dbp.insert_product_pic(obj);
    dbp.close();
    out.println(result + ">>"+obj.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
