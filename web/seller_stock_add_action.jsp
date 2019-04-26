<%@page import="db.tables.Product_Stock"%>
<%@page import="db.tables.User_Login"%>

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stock Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="seller_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Stock Result</font></h2>-->
    <%
         
   //20. designation_settings - id,designation_name
    
    int product_id = Integer.parseInt(request.getParameter("product_id")+"");
    String stock = request.getParameter("stock");
    String date = DateTime.getDate();
    String time = DateTime.getTime(); 
    String status = "active";
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_product_stock()+1;
    dbp.close();
    Product_Stock  ds = new Product_Stock(id, product_id, stock, date, time, status);
    dbp.open();
    int result = dbp.insert_product_stock(ds);
    dbp.close();
    out.println(result + ">>"+ds.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
