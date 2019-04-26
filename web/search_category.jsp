<%-- 
    Document   : customer_search
    Created on : 26 Mar, 2019, 10:48:06 AM
    Author     : LENOVO
--%>
<%@page import="db.tables.Sub_Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>
<%@page import="util.Variables" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search </title>
    </head>
   
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="search_menu.jsp" %>
        <!--<h2 ><font color="#366092">Search</font></h2>-->
        
        <form name="frm" action="search_category_list.jsp" method="post">           
            <%
                DBProcess dbp =new DBProcess();
                dbp.open();
                ArrayList<Sub_Category> scList = dbp.selectAll_sub_category();
                dbp.close();
            %>
            <table>
                <tr>
                    <td> Category Name </td>
                            <td> <select name="sub_category_id">
                        <%
                            for(Sub_Category sc:scList){
                        %>
                        <option value="<%=sc.id%>"><%=sc.sub_name%></option>
                        <%
                            }
                        %>
                        </select> </td>
                </tr>
                
                <tr>
                     <td></td>
                     <td> 
                         <input type="submit" name="s1" value="Search"> 
                        <input type="reset" name="r1" value="Reset"> 
                     </td>
                </tr>
                
            </table>
        </form>
    </center>
    </body>
</html>

