<%@page import="db.tables.Product_Tags"%>
<%@page import="db.tables.Sub_Category"%>
<%@page import="db.tables.Seller_Profile"%>
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
        <title>Product List</title>

    </head>

    <body background="static/images/product9.jpg" style="background-size: cover; background-repeat: no-repeat;">

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="seller_product_menu.jsp" %>
        <!--<h2><font color="#366092">Product List</font></h2>-->
        <!--<a href="seller_product_add.jsp" >Add Product</a><br><br>-->

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table class="table table-hover table-dark">
                <tr>
                    <th>ID</th>
                    <th> Name</th>
                    <th> Description</th>
                    <th> Sub Category</th>
                    <th> Price</th>
                    <th> Tags</th>
                    <th> Date</th>
                    <th> Time</th>
                    <th> Action </th>
                </tr>
                <%
                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Product_Details> dsList = dbp.selectAll_product_details();
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
                    <td>----</td>
                    <td>----</td>
                 



                </tr>
                <%
                } else {
                    for (Product_Details ds : dsList) {
//                        out.println(ds.toString());
                        dbp.open();
                        Sub_Category sc=dbp.select_sub_category(ds.sub_category_id);
                        dbp.close();
                        dbp.open();
                        Product_Tags dc=dbp.select_product_tags2(ds.id);
                        dbp.close();
                        if(sc==null){
                            out.println(sc);
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
                        &nbsp;<%=sc.sub_name%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.p_price%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=dc.tags%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.date%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.time%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp; <a href="seller_product_delete_action.jsp?id=<%=ds.id%>"><span class="btn btn-danger">Delete</span></a>  
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
