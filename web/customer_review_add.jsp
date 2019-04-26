


<%@page import="db.tables.User_Profile"%>
<%@page import="db.tables.Product_Details"%>
<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>
<!DOCTYPE html>
<%

    Object obj = session.getAttribute("cl");
    if (obj == null) {
        response.sendRedirect("customer_login.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Reviews </title>
    </head>

    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->

        <%@include file="customer_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Reviews</font></h2>-->
            <%
                //20. department - id,dep_name
                DBProcess dbp = new DBProcess();
                dbp.open();
                ArrayList<Product_Details> pList = dbp.selectAll_product_details();
                dbp.close();
                
                dbp.open();
                ArrayList<User_Profile> sList = dbp.selectAll_user_profile();
                dbp.close();
            %>

        <form name="frm" action="customer_review_add_action.jsp" method="post">
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
                    <td> Review</td>
                    <td><textarea name="review"></textarea></td>
                </tr>
                
                
                <tr>
                    <td> Rating </td>
                    <td> <input type="text" name="rating"> </td>
                </tr>
                
                <tr>
                    <td></td>
                    <td> 
                        <input type="submit" name="s1" value="Add"> 
                        <input type="reset" name="r1" value="Reset"> 
                    </td>
                </tr>

            </table>
        </form>
    </center>
</body>
</html>
