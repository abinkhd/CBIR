<%@page import="db.tables.User_Login"%>
<%@page import="util.Variables"%>
<%

Object obj= session.getAttribute("sl");
if(obj==null)response.sendRedirect("seller_login.jsp");

User_Login sl = (User_Login)obj;

%>

<html>
    <head>
        <title>Welcome Home Seller</title>

    </head>

    <body background="static/images/seller2.jpg" style="background-size: cover; background-repeat: no-repeat;">

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="seller_menu.jsp" %>
         <!--<h2 ><font color="#366092">Welcome Home Seller</font></h2>-->
        <form>
            <!--<img src="img/web.jpg" width="640" height="320">-->
            <% if (sl.passwd.equals("1234"))out.println("Do change your default password");
            %>
        </form>

    </center>    

</body>
</html>
