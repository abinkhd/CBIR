


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
        <title>Offer List</title>

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
                    <th> Product Name</th>
                    <th> Offer</th>
                    <th> Starting Date</th>
                    <th> Ending Date</th>
                    
                </tr>
                <%                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Offer_Details> dsList = dbp.selectAll_offer_details();
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
                    for (Offer_Details ds : dsList) {

                        dbp.open();
                        Product_Details sc = dbp.select_product_details(ds.product_id);
                        dbp.close();
                %>
                <tr>
                    <td><%=ds.id%></td>
                    <td>
                        &nbsp;<%=sc.p_name%>&nbsp;
                    </td>

                    <td>
                        &nbsp;<%=ds.offer%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.start_date%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.end_date%>&nbsp;
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
