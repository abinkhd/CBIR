

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title>Review Delete</title>

    </head>

    <body>

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="customer_menu.jsp" %>
        <!--<h2 ><font color="#366092">Review Delete</font></h2>-->
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_product_review(id);
           
            dbp.close();
            
            out.println("Review Deleted ");
            %>
            <br><a href="customer_review_list.jsp">Review List</a>
        </form>

    </center>    

</body>
</html>
