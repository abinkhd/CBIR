
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Courier Staff </title>
    </head>
    <body>
    <center>
        <!--<h1>Add Courier Staff</h1>-->
        <%@include file="admin_settings_menu.jsp" %>
        
        <div class="form-tst">
        <form name="frm" action="admin_courier_add_action.jsp" method="post">
            <table>
                
                
                <tr>
                    <td> Username </td>
                    <td> <input type="text" name="uname"> </td>
                </tr>
                <tr>
                    <td>  Password </td>
                    <td> <input type="password" name="passwd"> </td>
                </tr>
                <tr>
                    <td> <input class="btn btn-success" type="submit" name="s1" value="Add"> </td>
                    <td> <input class="btn btn-dark" type="reset" name="r1" value="Reset"> </td>


                </tr>

            </table>
        </form>
        </div>
        </center>
            </body>
            </html>
