<%@page import="util.Variables"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <title>Seller Change Password Result</title>

    </head>

    <body >

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="seller_settings_menu.jsp" %>
         <!--<h2 ><font color="#366092">Seller Change Password Result</font></h2>-->
        <form>
            <%
              
              String opasswd = request.getParameter("opasswd");
              String npasswd = request.getParameter("npasswd");
              
              DBProcess dbp =new DBProcess();
              dbp.open();
              int result = dbp.update_user_login("seller", opasswd, npasswd,"seller");
              dbp.close();
                if(result>0){
                  out.println("Password Changed");}
               else{
                   out.println("Password not changed");
               }
              %>
        </form>
        
    </center>    

</body>
</html>
