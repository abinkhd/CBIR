

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title>Product Delete</title>

    </head>

    <body>

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="seller_menu.jsp" %>
        <!--<h2 ><font color="#366092">Product Delete</font></h2>-->
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_product_details(id);
           
            dbp.close();
            
            out.println("Product Deleted ");
            %>
            <br><a href="seller_product_list.jsp">Product List</a>
            <%
            
            int tid = Integer.parseInt(request.getParameter("id") + "");
           
            dbp.open();
            dbp.delete_product_tags2(id);
           
            dbp.close();
            
            out.println("Product Deleted ");
            %>
            
        </form>

    </center>    

</body>
</html>
