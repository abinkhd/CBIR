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
        <title>Customer Login</title>
    </head>
    <body background="static/images/1.jpg" style="background-size: cover; background-repeat: no-repeat;">
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
         <%@include file="home_menu.jsp" %>
        <!--<h2><font color="#366092">Customer Login</font></h2>-->
        <!--<img src="img/person.png" width="150" height="150">-->
        <form name="frm" action="customer_login_action.jsp" method="post">
            <div  class="form-tst">
            <table>
                <tr>
                    <td> User Name </td>
                    <td> <input type="text" name="uname"> </td>
                </tr>
                <tr>
                    <td>  Password </td>
                    <td> <input type="password" name="passwd"> </td>
                </tr>
                
                <tr>
                    <td>  </td>
                    <td> <input class="btn btn-success" type="submit" name="s1" value="Login"> <input class="btn btn-danger" type="reset" name="r1" value="Reset"> </td>
                    
                </tr>
                
            </table>
<!--            <a href="user_reg_add.jsp">Registration</a>-->
        </form>
    </center>
    </body>
</html>
