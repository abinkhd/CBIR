
<%@page import="db.tables.Bill_Master"%>
<%@page import="db.tables.Courier_Status"%>
<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>

<%
    Object obj = session.getAttribute("cl");
    if (obj == null) {
        response.sendRedirect("customer_login.jsp");
    }
    int bill_master_id=Integer.parseInt(request.getParameter("bill_master_id"));
%>

<html>
    <head>
        <title>Status List</title>

    </head>

    <body >

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="customer_menu.jsp" %>
        <!--<h2><font color="#366092">Status List</font></h2>-->
        

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th> Bill_no</th>
                    <th> Remarks</th>
                    <th> Date</th>
                    <th> Time</th>
                    
                    <th> Action </th>
                </tr>
                <%
                
                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Courier_Status> dsList = dbp.selectAll_courier_status(bill_master_id);
                    dbp.close();

                    if (dsList.size() == 0) {
                %>
                <tr>
                    <td>No</td>
                    <td>Data</td>
                    <td>----</td>



                </tr>
                <%
                } else {
                    for (Courier_Status ds : dsList) {
                        
                        dbp.open();
                        Bill_Master sc=dbp.select_bill_master(ds.bill_master_id);
                        dbp.close();
                %>
                <tr>
                    <td><%=ds.id%></td>
                    <td>
                        &nbsp;<%=sc.bill_no%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.remarks%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.date%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.time%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp; <a href="bill_master_delete_action.jsp?id=<%=ds.id%>">cancel</a>  
                        &nbsp;
                    </td>
                </tr>
                <%
                        }
                    }
                    dbp.close();
                %>
            </table>

        </form>
        
    </center>    

</body>
</html>
