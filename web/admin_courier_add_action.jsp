


<%@page import="db.tables.User_Login"%>
<%@page import="util.DateTime"%>

<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courier Staff Registration Action</title>
    </head>
    <!--<h1>Add Section User</h1>-->
    <%@include file="admin_menu.jsp" %>
    <%
    String uname = request.getParameter("uname");
    String passwd = request.getParameter("passwd");
    String u_type = "courier";
    String status="active";
    
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_user_login()+1;
  dbp.close();
    int user_id = id;//Integer.parseInt(request.getParameter("user_id"));
  
    User_Login obj = new User_Login(id, user_id, uname, passwd, u_type, status);
    dbp.open();
    int result = dbp.insert_user_login(obj);
    out.println(result + ">>"+obj.toString()+"<br>");
    
    dbp.close();
    
    %>
    User Added   
</html>
