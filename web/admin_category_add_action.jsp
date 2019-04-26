<%@page import="db.tables.Category"%>
<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="admin_settings_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Category Result</font></h2>-->
    <%
         
   //20. designation_settings - id,designation_name
    
    String category_name = request.getParameter("category_name");
    String category_desc = request.getParameter("category_desc");
    
   
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_category()+1;
    dbp.close();
    Category ds = new Category(id,category_name,category_desc);
    dbp.open();
    int result = dbp.insert_category(ds);
    dbp.close();
    out.println(result + ">>"+ds.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
