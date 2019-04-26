<%-- 
    Document   : user_login
    Created on : 24 Nov, 2015, 12:21:16 PM
    Author     : sarath
--%>

<%@page import="util.Variables"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% session.invalidate();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body background="static/images/1.jpg" style="background-size: cover; background-repeat: no-repeat;">
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
         <%@include file="home_menu.jsp" %>
        <!--<h2><font color="#366092">Admin Login</font></h2>-->
        <!--<img src="img/person.png" width="150" height="150">-->
        <form name="frm" action="admin_login_action.jsp" method="post">
            <div  class="form-tst">
                <table>
                    <tr>
                        <td> User Name </td>
                        <td> <input type="text" class="form-control" name="uname"> </td>
                    </tr>
                    <tr>
                        <td>  Password </td>
                        <td> <input type="password" class="form-control" name="passwd"> </td>
                    </tr>

                    <tr>
                        <td>  </td>
                        <td> <input class="btn btn-success" type="submit" name="s1" value="Login"> <input type="reset" class="btn btn-danger" name="r1" value="Reset"> </td>

                    </tr>

                </table>
         </div>
        </form>
    </center>
    </body>
</html>
