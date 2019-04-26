


<%@page import="db.tables.User_Login"%>
<%@page import="db.tables.Bill_Master"%>
<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>
<!DOCTYPE html>
<%

    Object obj = session.getAttribute("ol");
    if (obj == null) {
        response.sendRedirect("courier_login.jsp");
    }
    User_Login ul = (User_Login)obj;
        
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Status </title>
    </head>

    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->

        <%@include file="courier_menu.jsp" %>
        <!--<h2 ><font color="#366092">Add Status</font></h2>-->
            <%

            int bill_master_id=Integer.parseInt(request.getParameter("bill_master_id"));
                            
//20. department - id,dep_name
                DBProcess dbp = new DBProcess();

                dbp.open();
                ArrayList<Bill_Master> pList = dbp.selectAll_bill_master(ul.user_id);
                dbp.close();
                       
            %>
           

        <form name="frm" action="courier_status_add_action.jsp" method="post">
            <input type="hidden" name="bill_master_id" value="<%=bill_master_id%>">
            <table>
                <tr>
                    <td> Bill Number </td>
                    <td> 
                        <select name="bill_master_id">
                            <%
                                for (int i = 0; i < pList.size(); i++) {
                            %>
                            <option value="<%=pList.get(i).id%>"><%=pList.get(i).bill_no%></option>
                            <%
                                }
                            %>
                        </select> 
                    </td>
                </tr>
                <tr>
                    <td> Remarks</td>
                    <td> <textarea name="remarks"></textarea> </td>
                </tr>
                <tr>
                    <td></td>
                    <td> 
                        <input type="submit" name="s1" value="Add"> 
                        <input type="reset" name="r1" value="Reset"> 
                    </td>
                </tr>

            </table>
        </form>
    </center>
</body>
</html>
