
<%@page import="db.tables.Product_Tags"%>
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
        <title>Tags List</title>

    </head>

    <body >

    <center>
        <h1 ><font color="#366092"><%=Variables.prjName%></font></h1>
            <%@include file="seller_menu.jsp" %>
        <h2><font color="#366092">Tags List</font></h2>
        <a href="seller_tgas_add.jsp" >Add Tags</a><br><br>

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th> Product Name</th>
                    <th> Tags</th>
                    <th> Action </th>
                </tr>
                <%
                    String tags=request.getParameter("tags");
                    out.print(tags);
                    out.close();
                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Product_Tags> dsList = dbp.selectAll_product_tags(tags);
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
                    for (Product_Tags ds : dsList) {
                        
                        dbp.open();
                        Product_Details sc=dbp.select_product_details(ds.p_id);
                        dbp.close();
                %>
                <tr>
                    <td><%=ds.id%></td>
                    <td>
                        &nbsp;<%=sc.p_name%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.tags%>&nbsp;
                    </td>
                    
                    
                    <td>
                        &nbsp; <a href="seller_tags_delete_action.jsp?id=<%=ds.id%>">Delete</a>  
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
        <a href="seller_tags_add.jsp" >Add Tags</a>
    </center>    

</body>
</html>
