

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title>Stock Delete</title>

    </head>

    <body>

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="seller_menu.jsp" %>
        <!--<h2 ><font color="#366092">Stock Delete</font></h2>-->
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_product_stock(id);
           
            dbp.close();
            
            out.println("Stock Deleted ");
            %>
            <br><a href="seller_stock_list.jsp">Stock List</a>
        </form>

    </center>    

</body>
</html>
