


<%@page import="db.tables.Offer_Details"%>
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
        <title>Offer List</title>

    </head>

    <body background="static/images/offer.jpg" style="background-size: cover; background-repeat: no-repeat;">

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="seller_product_menu.jsp" %>
        <!--<h2><font color="#366092">Offer List</font></h2>-->
        <a href="seller_offer_add.jsp" >Add Offer</a><br><br>

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table class="table table-hover table-dark">
                <tr>
                    <th>ID</th>
                    <th> Product Name</th>
                    <th> Offer</th>
                    <th> Starting Date</th>
                    <th> Ending Date</th>
                    <th> Action </th>
                </tr>
                <%
                    DBProcess dbp = new DBProcess();
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
                        Product_Details sc=dbp.select_product_details(ds.product_id);
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
                    
                    <td>
                        &nbsp; <a href="seller_offer_delete_action.jsp?id=<%=ds.id%>"><span class="btn btn-danger">Delete</span></a>  
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
        <a href="seller_offer_add.jsp" >Add Offers</a>
    </center>    

</body>
</html>
