

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title>Tags Delete</title>

    </head>

    <body>

    <center>
        <h1 ><font color="#366092"><%=Variables.prjName%></font></h1>
        <%@include file="seller_menu.jsp" %>
        <h2 ><font color="#366092">Tags Delete</font></h2>
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_product_tags(id);
           
            dbp.close();
            
            out.println("Tags Deleted ");
            %>
            <br><a href="seller_tags_list.jsp">Tags List</a>
        </form>

    </center>    

</body>
</html>
