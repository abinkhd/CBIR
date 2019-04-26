
<%@page import="db.tables.Product_Tags"%>
<%@page import="db.tables.User_Login"%>

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tags Add Action</title>
    </head>
    <body>
    <center>
        <h1 ><font color="#366092"><%=Variables.prjName%></font></h1>
       
        <%@include file="seller_menu.jsp" %>
        <h2 ><font color="#366092">Add Tags Result</font></h2>
    <%
         
   //20. designation_settings - id,designation_name
    
    int p_id = Integer.parseInt(request.getParameter("p_id")+"");
    String tags = request.getParameter("tags");
    //out.println(tags);
    //out.close();
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_product_tags()+1;
    dbp.close();
    Product_Tags  ds = new Product_Tags(id, p_id, tags);
    dbp.open();
    int result = dbp.insert_product_tags(ds);
    dbp.close();
    out.println(result + ">>"+ds.toString()+"<br>");
    
    %>
    Record Added
    </center>
</body>
</html>
