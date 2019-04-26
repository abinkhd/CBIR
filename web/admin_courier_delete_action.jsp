


<%@page import="util.DateTime"%>

<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courier Staff Registration Action</title>
    </head>
    <!--<h1>Add Courier Staff</h1>-->
    <%@include file="admin_menu.jsp" %>
    <%
    int id = Integer.parseInt(request.getParameter("id"));
   
    DBProcess dbp =new DBProcess();
    int result = dbp.delete_user_login(id);
    
    
    dbp.close();
    
    %>
    User Deleted   
</html>
