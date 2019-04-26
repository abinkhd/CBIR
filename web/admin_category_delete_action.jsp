

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title> Category Delete</title>

    </head>

    <body>

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="admin_settings_menu.jsp" %>
        <!--<h2 ><font color="#366092">Category Delete</font></h2>-->
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_category(id);
           
            dbp.close();
            
            out.println("Category Deleted ");
            %>
            <br><a href="admin_category_list.jsp">Category List</a>
        </form>

    </center>    

</body>
</html>
