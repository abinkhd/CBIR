

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title>Order Delete</title>

    </head>

    <body>

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="customer_menu.jsp" %>
        <!--<h2 ><font color="#366092">Order Delete</font></h2>-->
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_bill_master(id);
           
            dbp.close();
            
            out.println("Order Deleted ");
            %>
            <br><a href="customer_bill_master_list.jsp">Product List</a>
        </form>

    </center>    

</body>
</html>
