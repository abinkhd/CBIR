<%@page import="db.tables.Product_Review"%>
<%@page import="db.tables.User_Login"%>
<%@page import="db.tables.Product_Details"%>
<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="customer_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Review Result</font></h2>-->
    <%
         
   
    User_Login ul = (User_Login)session.getAttribute("cl");
    int user_id = ul.user_id;
    int product_id = Integer.parseInt(request.getParameter("product_id")+"");
    String review = request.getParameter("review");
    String rating = request.getParameter("rating");
    
    String date = DateTime.getDate();
    String time = DateTime.getTime(); 
    
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_product_review()+1;
    dbp.close();
    Product_Review  obj = new Product_Review(id, product_id, user_id, review, rating, date, time);
    dbp.open();
    int result = dbp.insert_product_review(obj);
    dbp.close();
    out.println(result + ">>"+obj.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
