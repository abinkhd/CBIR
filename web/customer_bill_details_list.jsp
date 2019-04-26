


<%@page import="db.tables.Bill_Master"%>
<%@page import="db.tables.Bill_Details"%>
<%@page import="db.tables.Offer_Details"%>
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
        <title>Bill Details List</title>

    </head>

    <body>
    <center>
            <%@include file="customer_menu.jsp" %>
        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th> Product_ID</th>
                    <th> Quantity</th>
                    <th> Amount</th>
                </tr>
                <%                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Bill_Details> dsList = dbp.selectAll_bill_details();
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
                    for (Bill_Details ds : dsList) {

                        dbp.open();
                        Product_Details sc = dbp.select_product_details(ds.product_id);
                        dbp.close();
                        if (sc==null)continue;
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
                        &nbsp;<%=ds.amount%>&nbsp;
                    </td>


                </tr>
                <%
                        }
                    }
                    dbp.close();
                %>
            </table>

        </form>

    </center>

</body>
</html>
