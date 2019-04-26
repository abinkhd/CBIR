<%@page import="util.Variables"%>
<%

Object obj= session.getAttribute("cl");
if(obj==null)response.sendRedirect("customer_login.jsp");
%>
<html>
    <head>
        <title>Customer Change Password</title>

    </head>

    <body >

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="customer_settings_menu.jsp" %>
        <!--<h2 ><font color="#366092">Customer Change Password</font></h2>-->
        <form name="frm" action="customer_changepassword_action.jsp" method="post">
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

    </center>    

</body>
</html>
