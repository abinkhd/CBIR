
<%@page import="db.tables.Sub_Category"%>
<%@page import="db.tables.Seller_Profile"%>
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
        <title>Add Products </title>
    </head>

    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->

        <%@include file="seller_product_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Products</font></h2>-->
            <%
                //20. department - id,dep_name
                DBProcess dbp = new DBProcess();
                dbp.open();
                ArrayList<Seller_Profile> pList = dbp.selectAll_seller_profile();
                dbp.close();
                
                dbp.open();
                ArrayList<Sub_Category> sList = dbp.selectAll_sub_category();
                dbp.close();
            %>
            <div class="form-tst">
        <form name="frm" action="seller_product_add_action.jsp" method="post">
            <table>
                <tr>
                    <td> Product Name </td>
                    <td> <input type="text" name="p_name"> </td>
                </tr>
                <tr>
                    <td> Description</td>
                    <td><textarea name="p_desc"></textarea></td>
                </tr>
                
                <tr>
                    <td> Sub category ID</td>
                    <td> 
                        <select name="sub_category_id">
                            <%
                                for (int i = 0; i < sList.size(); i++) {
                            %>
                            <option value="<%=sList.get(i).id%>"><%=sList.get(i).sub_name%></option>
                            <%
                                }
                            %>
                        </select> 
                    </td>
                </tr>
                <tr>
                    <td> Product Price </td>
                    <td> <input type="text" name="p_price"> </td>
                </tr>
                <tr>
                    <td> Tags</td>
                    <td><textarea name="tags"></textarea></td>
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
