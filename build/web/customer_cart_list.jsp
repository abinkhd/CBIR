

<%@page import="db.tables.User_Cart"%>
<%@page import="db.tables.User_Login"%>
<%@page import="db.tables.Product_Details"%>
<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>

<%
    Object obj = session.getAttribute("cl");
    if (obj == null) {
        response.sendRedirect("customer_login.jsp");
    }
%>

<html>
    <head>
        <title>Cart List</title>

    </head>

    <body >

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="customer_menu.jsp" %>
        <!--<h2><font color="#366092">Cart List</font></h2>-->
        <a href="customer_cart_add.jsp" >Add Products</a><br><br>

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th> Product Name</th>
                    <th> Quantity</th>
                    <th> Date</th>
                    <th> Time</th>
                    <th> Status</th>
                    <th> Action </th>
                </tr>
                <%
                    User_Login ul = (User_Login)session.getAttribute("cl");
                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<User_Cart> dsList = dbp.selectAll_user_cart(ul.user_id);
                    dbp.close();

                    if (dsList.size() == 0) {
                %>
                <tr>
                    <td>No</td>
                    <td>Data</td>
                    <td>----</td>
                    <td>----</td>
                    <td>----</td>
                    <td>----</td>
                    <td>----</td>



                </tr>
                <%
                } else {
                    for (User_Cart ds : dsList) {
                        
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
                        &nbsp;<%=ds.quantity%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.date%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.time%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.status%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp; <a href="customer_cart_delete_action.jsp?id=<%=ds.id%>">Delete</a>  
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
            <a href="bill_master_add.jsp">Checkout</a>
        
    </center>    

</body>
</html>
