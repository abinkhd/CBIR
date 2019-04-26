
<%@page import="db.tables.Category"%>
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
        <title>Add Sub Category </title>
    </head>
   
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="admin_settings_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Sub Category</font></h2>-->
        <%
       //20. department - id,dep_name
                DBProcess dbp =new DBProcess();
                dbp.open();
                ArrayList<Category> cList = dbp.selectAll_category();
                dbp.close();
        %>
           
        <div class="form-tst"> 
        <form name="frm" action="admin_sub_category_add_action.jsp" method="post">
            <table>
                <tr>
                    <td> Sub Category Name </td>
                    <td> <input type="text" name="sub_name"> </td>
                </tr>
                <tr>
                    <td> Sub Category Description </td>
                    <td> <textarea name="sub_desc"></textarea> </td>
                </tr>
                <tr>
                    <td> Category </td>
                    <td> 
                        <select name="category_id">
                            <%
                            for(int i=0;i<cList.size();i++){
                            %>
                            <option value="<%=cList.get(i).id%>"><%=cList.get(i).category_name%></option>
                            <%
                            }
                            %>
                        </select> 
                    </td>
                </tr>
                <tr>
                     <td></td>
                     <td> 
                         <input class="btn btn-success" type="submit" name="s1" value="Add"> 
                        <input class="btn btn-dark" type="reset" name="r1" value="Reset"> 
                     </td>
                </tr>
                
            </table>
        </form>
        </div>
    </center>
    </body>
</html>
