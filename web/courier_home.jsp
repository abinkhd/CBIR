<%@page import="db.tables.User_Login"%>
<%@page import="util.Variables"%>
<%

Object obj= session.getAttribute("ol");
if(obj==null)response.sendRedirect("courier_login.jsp");
User_Login ol = (User_Login)obj;
%>

<html>
    <head>
        <title>Welcome Home Courier Tracker</title>

    </head>

    <body background="static/images/courier1.jpg" style="background-size: cover; background-repeat: no-repeat;">

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="courier_menu.jsp" %>
         <!--<h2 ><font color="#366092">Welcome Home Courier Tracker</font></h2>-->
        <form>
            <!--<img src="img/web.jpg" width="640" height="320">-->
            <% if (ol.passwd.equals("1234"))out.println("Do change your default password");
            %>
        </form>

    </center>    

</body>
</html>
