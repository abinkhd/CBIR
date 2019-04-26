



<%@page import="db.tables.User_Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>

<%
 /*   Object obj = session.getAttribute("users");
    if (obj == null) {
        response.sendRedirect("user_login.jsp");
    }*/
%>
<%
    System.out.println("User List");%>
<html>
    <head>
        <title>Courier Staff List</title>

    </head>

    <body background="static/images/admin_reg.jpg" style="background-size: cover; background-repeat: no-repeat;">

    <center>
        <!--<h1 ><font color="#366092">Courier Staff List</font></h1>-->
            <%@include file="admin_settings_menu.jsp" %>
        <form>
            <%
            %>
            <table class="table table-hover">
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Password</th>
                    
                    <th>Action</th>
                    
                    
                </tr>
                <%
                DBProcess dbp =new DBProcess();
                dbp.open();
                ArrayList<User_Login> suList = dbp.selectAll_user_login("courier");
                dbp.close();
                if(suList.size()==0){
                    %>
                    <tr>
                    <td>---</td>
                    <td>N0</td>
                    <td>----</td>
                    <td>Data</td>
                    <td>----</td>
                    <td>----</td>
                    
                </tr>
                    <%
                }
                else{
                    for(User_Login su:suList){
                     
                        %>
                        <tr>
                            <td><%=su.id%></td>
                        <td><%=su.uname%></td>
                        <td><%=su.passwd%></td>
                        
                        
                        <td> 
                            <a href="admin_user_delete_action.jsp?id=<%=su.id%>"><span class="btn btn-danger">Delete</span></a>
                        </td>
                        </tr>
                        <%
                    }
                }
                
            %>
            </table>
            <a href="admin_courier_add.jsp"><span style="color: rgb(234, 151, 7); font-size: 30px;">Add Courier Staff</span></a>
        </form>
        

    </center>    

</body>
</html>
