
<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Seller </title>
    </head>
    <body background="static/images/reg1.jpg" style="background-size: cover; background-repeat: no-repeat;">
    <center>
        <!--<h1> Seller Registration</h1>-->
        
         <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
         <%@include file="register_menu.jsp" %>
        <!--<h2><font color="#366092">Admin Login</font></h2>-->
        <!--<img src="img/person.png" width="150" height="150">-->
        <!--<h1> Customer Registeration</h1>-->
        <div class="form-tst" style="background-color: rgba(16, 44, 53,0.2);">
        <form name="frm" action="seller_reg_add_action.jsp"  method="post">
            <table>

                <tr>
                    <td> Name</td>
                    <td> <input type="text" name="seller_name"></td>
                </tr>
                <tr>
                    <td> Description </td>
                    <td> <textarea name="seller_desc"></textarea> </td>
                </tr>
                <tr>
                    <td>  Address </td>
                    <td> <textarea name="addr1"></textarea> </td>
                </tr>
                <tr>
                    <td>  Street </td>
                    <td> <textarea name="addr2"></textarea> </td>
                </tr>
                <tr>
                    <td>  District </td>
                    <td> <textarea name="addr3"></textarea> </td>
                </tr>
                <tr>
                    <td>Pin Number</td>
                    <td> <input type="text" name="pin"></td>
                </tr>
                <tr>
                    <td>Site Address</td>
                    <td> <textarea name="url"></textarea> </td>
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
                    <td> <input class="btn btn-success" type="submit" name="s1" value="Register"> </td>
                    <td> <input class="btn btn-dark" type="reset" name="r1" value="Reset"> </td>


                </tr>

            </table>
        </form>
      </div>
    </center>
</body>
</html>
