

<%@page import="db.tables.User_Login"%>
<%@page import="db.tables.Product_Review"%>
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
        <title>Review List</title>

    </head>

    <body >

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="customer_menu.jsp" %>
        <!--<h2><font color="#366092">Review List</font></h2>-->
        <a href="customer_review_add.jsp" >Add Review</a><br><br>

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th> Product Name</th>
                    <th> Review</th>
                    <th> Rating</th>
                    <th> Date</th>
                    <th> Time</th>
                    <th> Action </th>
                </tr>
                <%
                    User_Login ul = (User_Login)session.getAttribute("cl");
                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Product_Review> dsList = dbp.selectAll_product_review(ul.user_id);
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
                    for (Product_Review ds : dsList) {
                        
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
                        &nbsp;<%=ds.review%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.rating%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.date%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.time%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp; <a href="customer_review_delete_action.jsp?id=<%=ds.id%>">Delete</a>  
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
        <a href="customer_review_add.jsp" >Add Review</a>
    </center>    

</body>
</html>
