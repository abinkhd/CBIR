

<%@page import="db.tables.Product_Stock"%>
<%@page import="db.tables.Product_Details"%>
<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>

<%
    Object obj = session.getAttribute("sl");
    if (obj == null) {
        response.sendRedirect("seller_login.jsp");
    }
%>

<html>
    <head>
        <title>Stock List</title>

    </head>

    <body background="static/images/stock1.jpg" style="background-size: cover; background-repeat: no-repeat;">

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="seller_product_menu.jsp" %>
        <!--<h2><font color="#366092">Stock List</font></h2>-->
        <!--<a href="seller_product_add.jsp" >Add Stock</a><br><br>-->

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table class="table table-hover table-dark  ">
                <tr>
                    <th>ID</th>
                    <th> Product Name</th>
                    <th> Stock</th>
                    <th> Date</th>
                    <th> Time</th>
                    <th> Action </th>
                </tr>
                <%
                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Product_Stock> dsList = dbp.selectAll_product_stock();
                    dbp.close();

                    if (dsList.size() == 0) {
                %>
                <tr>
                    <td>No</td>
                    <td>Data</td>
                    <td>----</td>



                </tr>
                <%
                } else {
                    for (Product_Stock ds : dsList) {
                        
                        dbp.open();
                        Product_Details sc=dbp.select_product_details(ds.product_id);
                        dbp.close();
                %>
                <tr>
                    <td><%=ds.id%></td>
                    <td>
                        &nbsp;<%=sc.p_name%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.stock%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.date%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.time%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp; <a href="seller_stock_delete_action.jsp?id=<%=ds.id%>"><span class="btn btn-danger">Delete</span></a>  
                        &nbsp;
                    </td>
                </tr>
                <%
                        }
                    }
                    dbp.close();
                %>
            </table>

        </form>
        <a href="seller_stock_add.jsp" >Add Stocks</a>
    </center>    

</body>
</html>
