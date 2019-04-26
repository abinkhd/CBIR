

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title>Cart Delete</title>

    </head>

    <body>

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="customer_menu.jsp" %>
        <!--<h2 ><font color="#366092">Cart Delete</font></h2>-->
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_user_cart(id);
           
            dbp.close();
            
            out.println("Product Deleted ");
            %>
            <br><a href="customer_cart_list.jsp">Cart List</a>
        </form>

    </center>    

</body>
</html>
