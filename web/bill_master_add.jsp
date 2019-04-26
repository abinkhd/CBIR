
<%@page import="db.tables.User_Profile"%>
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
        <title>Bill Master </title>
    </head>

    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->

        <%@include file="customer_menu.jsp" %>
        <!--<h2 ><font color="#366092">Bill Master</font></h2>-->
            <%
                //20. department - id,dep_name
                DBProcess dbp = new DBProcess();

                dbp.open();
                ArrayList<User_Profile> sList = dbp.selectAll_user_profile();
                dbp.close();
            %>

        <form name="frm" action="bill_master_add_action.jsp" method="post">
            <table>
                <tr>
                    <td> Bill Number </td>
                    <td><input type="text" name="bill_no"> </td>
                </tr>
                <tr>
                    <td> Bill Amount </td>
                    <td><input type="text" name="bill_amt"> </td>
                </tr>
                <tr>
                    <td> Payment Type</td>
                    <td><select name="p_type"> <option>Cash</option>
                            <option>Debit Card</option>
                            <option>Credit Card</option>
                        </select>
                    </td>
                </tr> 
                <tr>
                    <td> Permenant Address</td>
                    <td><textarea name="addr1"></textarea></td>
                </tr>
                <tr>
                    <td> Street</td>
                    <td><textarea name="addr2"></textarea></td>
                </tr>
                <tr>
                    <td> Residential Address</td>
                    <td><textarea name="addr3"></textarea></td>
                </tr>
                <tr>
                    <td> Pin Number</td>
                    <td> <input type="text" name="pin"></td>
                </tr>
                <tr>
                    <td> Email Id</td>
                    <td> <input type="text" name="email"></td>
                </tr>
                <tr>
                    <td> Contact</td>
                    <td> <input type="text" name="contact"></td>
                </tr>
                <tr>
                    <td> Discount</td>
                    <td> <input type="text" name="cdiscount"></td>
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
