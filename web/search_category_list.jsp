<%@page import="db.tables.Product_Tags"%>
<%@page import="db.tables.Sub_Category"%>
<%@page import="db.tables.Seller_Profile"%>
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
        <title>Product List</title>

    </head>

    <body >

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="customer_menu.jsp" %>
        <!--<h2><font color="#366092">Product List</font></h2>-->
       

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th> Name</th>
                    <th> Description</th>
                    <th> Seller Name</th>
                    <th> Sub Category</th>
                    <th> Price</th>
                    <th> Tags</th>
                    
                    
                    <th> Action </th>
                </tr>
                <%
                    int sub_category_id=Integer.parseInt(request.getParameter("sub_category_id"));
                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Product_Details> dsList = dbp.selectAll_product_details4(sub_category_id);
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
                    for (Product_Details ds : dsList) {
                        out.println(ds.toString());
                        dbp.open();
                        Seller_Profile sp=dbp.select_seller_profile(ds.seller_id);
                        dbp.close();
                        
                        dbp.open();
                        Product_Tags dc=dbp.select_product_tags2(ds.id);
                        dbp.close();
                        if(sp==null){
                            out.println(sp);
                            out.close();
                        }
                %>
                <tr>
                    <td><%=ds.id%></td>
                    <td>
                        &nbsp;<%=ds.p_name%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.p_desc%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=sp.seller_name%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.p_price%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=dc.tags%>&nbsp;
                    </td>
                    
                    
                    <td>
                        &nbsp; <a href="customer_cart_add_action.jsp?id=<%=ds.id%>">Add to Cart</a>  
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
        <a href="seller_product_add.jsp" >Add Products</a>
    </center>    

</body>
</html>
