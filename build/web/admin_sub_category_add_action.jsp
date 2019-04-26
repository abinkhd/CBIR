<%@page import="db.tables.Sub_Category"%>
<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sub Category Add Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="admin_settings_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Sub Category Result</font></h2>-->
    <%
         
   //20. designation_settings - id,designation_name
    
    String sub_name = request.getParameter("sub_name");
    String sub_desc = request.getParameter("sub_desc");
    int category_id = Integer.parseInt(request.getParameter("category_id")+"");
   
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_sub_category()+1;
    dbp.close();
    Sub_Category ds = new Sub_Category(id, category_id, sub_name, sub_desc);
    dbp.open();
    int result = dbp.insert_sub_category(ds);
    dbp.close();
    out.println(result + ">>"+ds.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
