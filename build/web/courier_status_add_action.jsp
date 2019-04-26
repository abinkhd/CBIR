
<%@page import="db.tables.Courier_Status"%>
<%@page import="db.tables.User_Login"%>

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Status Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="courier_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Status Result</font></h2>-->
    <%
         
   //20. designation_settings - id,designation_name
    
    int bill_master_id = Integer.parseInt(request.getParameter("bill_master_id")+"");
    String remarks = request.getParameter("remarks");
    
    String date = DateTime.getDate();
    String time = DateTime.getTime(); 
    String status = "active";
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_courier_status()+1;
    dbp.close();
    Courier_Status  ds = new Courier_Status(id, bill_master_id, remarks, date, time, status);
    dbp.open();
    int result = dbp.insert_courier_status(ds);
    dbp.close();
    out.println(result + ">>"+ds.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
