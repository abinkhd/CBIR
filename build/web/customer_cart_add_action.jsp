<%@page import="db.tables.User_Cart"%>
<%@page import="db.tables.User_Login"%>
<%@page import="db.tables.Product_Details"%>
<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="customer_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Cart Result</font></h2>-->
    <%
         
   
    User_Login ul = (User_Login)session.getAttribute("cl");
    int user_id = ul.user_id;
    int product_id = Integer.parseInt(request.getParameter("product_id")+"");
    String quantity = request.getParameter("quantity");
   
    String date = DateTime.getDate();
    String time = DateTime.getTime(); 
    String status="active";
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_user_cart()+1;
    dbp.close();
    User_Cart  obj = new User_Cart(id, product_id, user_id, quantity, date, time, status);
    dbp.open();
    int result = dbp.insert_user_cart(obj);
    dbp.close();
    out.println(result + ">>"+obj.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
