
<%@page import="util.Variables"%>
<%@page import="db.tables.User_Login"%>
<%@page import="util.DateTime"%>

<%@page import="db.DBProcess"%>
<%
String uname = request.getParameter("uname");
String passwd = request.getParameter("passwd");

DBProcess dbp =new DBProcess();
dbp.open();
User_Login ologin = dbp.select_user_login(uname,passwd,"courier");
dbp.close();
if(ologin==null){
    %>
     <center>
         <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="home_menu.jsp" %>
         <h2 ><font color="#366092">Sorry Login error</font></h2>
   
       
       
    </center>
    <%
}
else{
session.setAttribute("ol", ologin);
response.sendRedirect("courier_home.jsp");
}
%>