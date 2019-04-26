


<%@page import="db.tables.Product_Details"%>

<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>
<!DOCTYPE html>
<%

    Object obj = session.getAttribute("sl");
    if (obj == null) {
        response.sendRedirect("seller_login.jsp");
    }
        
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Offers </title>
    </head>

    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->

        <%@include file="seller_product_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Offers</font></h2>-->
            <%
                //20. department - id,dep_name
                DBProcess dbp = new DBProcess();

                dbp.open();
                ArrayList<Product_Details> pList = dbp.selectAll_product_details();
                dbp.close();
            %>
            <div class="form-tst">
                <form name="frm" action="seller_offer_add_action.jsp" method="post">
                    <table>
                        <tr>
                            <td> Product Name </td>
                            <td> 
                                <select name="product_id">
                                    <%
                                        for (int i = 0; i < pList.size(); i++) {
                                    %>
                                    <option value="<%=pList.get(i).id%>"><%=pList.get(i).p_name%></option>
                                    <%
                                        }
                                    %>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td> Offer</td>
                            <td> <input type="text" name="offer"> </td>
                        </tr>



                        <tr>
                            <td> Start Date </td>
                            <td> <input type="date" name="start_date"> </td>
                        </tr>
                        <tr>
                            <td> End Date </td>
                            <td> <input type="date" name="end_date"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td> 
                                <input class="btn btn-success" type="submit" name="s1" value="Add"> 
                                <input class="btn btn-dark" type="reset" name="r1" value="Reset"> 
                            </td>
                        </tr>

                    </table>
                </form>
            </div>
    </center>
</body>
</html>
