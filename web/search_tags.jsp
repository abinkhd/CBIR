<%-- 
    Document   : customer_search
    Created on : 26 Mar, 2019, 10:48:06 AM
    Author     : LENOVO
--%>
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
        
        <form name="frm" action="search_tags_list.jsp" method="post">           
        
            <table>
                <tr>
                    <td> Keywords </td>
                    <td> <input type="text" name="tags"> </td>
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

