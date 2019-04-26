
<%@page import="db.tables.Offer_Details"%>
<%@page import="db.tables.User_Login"%>

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Offer Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="seller_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Offer Result</font></h2>-->
    <%
         
   //20. designation_settings - id,designation_name
    
    int product_id = Integer.parseInt(request.getParameter("product_id")+"");
    String offer = request.getParameter("offer");
    
    String start_date = request.getParameter("start_date");
    String end_date = request.getParameter("end_date"); 
    String status = "active";
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_offer_details()+1;
    dbp.close();
    Offer_Details  ds = new Offer_Details (id, product_id, offer, start_date, end_date, status);
    dbp.open();
    int result = dbp.insert_offer_details(ds);
    dbp.close();
    out.println(result + ">>"+ds.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
