

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>


<html>
    <head>
        <title>offer Delete</title>

    </head>

    <body>

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
        <%@include file="seller_menu.jsp" %>
        <!--<h2 ><font color="#366092">Offer Delete</font></h2>-->
        <form>
            <%
            
            int id = Integer.parseInt(request.getParameter("id") + "");
            DBProcess dbp = new DBProcess();
            dbp.open();
            dbp.delete_offer_details(id);
           
            dbp.close();
            
            out.println("Offer Deleted ");
            %>
            <br><a href="seller_offer_list.jsp">Offer List</a>
        </form>

    </center>    

</body>
</html>
