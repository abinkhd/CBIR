
<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>
<!DOCTYPE html>
<%

Object obj= session.getAttribute("al");
if(obj==null)response.sendRedirect("admin_login.jsp");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Category </title>
    </head>
   
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="admin_settings_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Category</font></h2>-->
        <%
       //20. department - id,dep_name
                            
        %>
        <div class="form-tst">       
            <form name="frm" action="admin_category_add_action.jsp" method="post">
                <table>
                    <tr>
                        <td> Category Name </td>
                        <td> <input type="text" name="category_name"> </td>
                    </tr>
                    <tr>
                        <td> Category Description </td>
                        <td> <textarea name="category_desc"></textarea> </td>
                    </tr>
                    <tr>
                         <td></td>
                         <td> 
                             <input class="btn btn-primary" type="submit" name="s1" value="Add"> 
                            <input class="btn btn-dark" type="reset" name="r1" value="Reset"> 
                         </td>
                    </tr>

                </table>
            </form>
        </div>
    </center>
    </body>
</html>
