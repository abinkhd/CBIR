
<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Section User </title>
    </head>
    <body background="static/images/reg1.jpg" style="background-size: cover; background-repeat: no-repeat;">
  
         <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
         <%@include file="register_menu.jsp" %>
        <!--<h2><font color="#366092">Admin Login</font></h2>-->
        <!--<img src="img/person.png" width="150" height="150">-->
        <!--<h1> Customer Registeration</h1>-->
    <center>
        <div class="form-tst" style="background-color: rgba(16, 44, 53,0.2);">
        <form name="frm" action="user_reg_add_action.jsp" enctype="multipart/form-data" method="post">
            <table>

                <tr>
                    <td>First Name</td>
                    <td> <input type="text" name="fname"></td>
                </tr>
                <tr>
                    <td> Last Name </td>
                    <td> <input type="text" name="lname"> </td>
                </tr>
                <tr>
                    <td>  Date of birth </td>
                    <td> <input type="text" name="dob"> </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td> <input type="text" name="gender"></td>
                </tr>
                <tr>
                    <td> Profile Picture</td>
                    <td> <input type="file" name="pic"></td>
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
                    <td> <input class="btn btn-success" type="submit" name="s1" value="Register"> </td>
                    <td> <input class="btn btn-dark" type="reset" name="r1" value="Reset"> </td>


                </tr>

            </table>
        </form>
       </div>
    </center>
</body>
</html>
