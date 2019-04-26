<%@page import="util.Variables"%>
<%

Object obj= session.getAttribute("sl");
if(obj==null)response.sendRedirect("seller_login.jsp");
%>
<html>
    <head>
        <title>Seller Change Password</title>

    </head>

    <body background="static/images/pass.jpg" style="background-size: cover; background-repeat: no-repeat;">

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="seller_menu.jsp" %>
        <!--<h2 ><font color="#366092">Seller Change Password</font></h2>-->
        <div class="form-tst">
        <form name="frm" action="seller_changepassword_action.jsp" method="post">
            <table>
                <tr>
                    <td> Old Password </td>
                    <td> <input type="password" name="opasswd"> </td>
                </tr>
                <tr>
                    <td>  New Password </td>
                    <td> <input type="password" name="npasswd"> </td>
                </tr>
                <tr>
                    <td> Confirm Password </td>
                    <td> <input type="password" name="cpasswd"> </td>
                </tr>
                <tr>
                    <td>  </td>
                    <td> <input class="btn btn-success" type="submit" name="s1" value="Change Password"> <input class="btn btn-dark" type="reset" name="r1" value="Reset"> </td>
                    
                </tr>
                
            </table>
        </form>
        </div>

    </center>    

</body>
</html>
