<%@page import="db.tables.Product_Tags"%>
<%@page import="db.tables.User_Login"%>
<%@page import="db.tables.Product_Details"%>
<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="seller_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Product Result</font></h2>-->
    <%
         
   //20. designation_settings - id,designation_name
    User_Login ul = (User_Login)session.getAttribute("sl");
    int seller_id = ul.user_id;
    int sub_category_id = Integer.parseInt(request.getParameter("sub_category_id")+"");
    String p_name = request.getParameter("p_name");
    String p_desc = request.getParameter("p_desc");
    String p_price = request.getParameter("p_price");
    String tags = request.getParameter("tags");
    String date = DateTime.getDate();
    String time = DateTime.getTime(); 
    String status = "active";
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_product_details()+1;
    dbp.close();
    Product_Details  ds = new Product_Details(id, seller_id, sub_category_id, p_name, p_desc, p_price, date, time, status);
    dbp.open();
    int result = dbp.insert_product_details(ds);
    dbp.close();
    out.println(result + ">>"+ds.toString()+"<br>");
    dbp.open();
    int tid = dbp.getMaxID_product_tags()+1;
    dbp.close();
    Product_Tags  pt = new Product_Tags(tid,id,tags);
    dbp.open();
    result = dbp.insert_product_tags(pt);
    dbp.close();
    out.println(result + ">>"+pt.toString()+"<br>");
    %>
    Record Added
    </center>
</body>
</html>
