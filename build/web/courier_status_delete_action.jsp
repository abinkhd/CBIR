

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title>Status Delete</title>

    </head>

    <body>

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="courier_menu.jsp" %>
        <!--<h2 ><font color="#366092">Status Delete</font></h2>-->
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_courier_status(id);
           
            dbp.close();
            
            out.println("Status Deleted ");
            %>
            <br><a href="courier_status_list.jsp">Status List</a>
        </form>

    </center>    

</body>
</html>
