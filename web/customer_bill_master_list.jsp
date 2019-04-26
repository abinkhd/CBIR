
<%@page import="db.tables.User_Login"%>
<%@page import="db.tables.Bill_Master"%>
<%@page import="db.tables.User_Profile"%>

<%@page import="util.Variables"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DBProcess"%>

<%
    
    Object obj = session.getAttribute("cl");
    if (obj == null) {
        response.sendRedirect("customer_login.jsp");
    }
    User_Login ul = (User_Login)obj;
%>

<html>
    <head>
        <title>Purchase List</title>

    </head>

    <body >

    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="customer_menu.jsp" %>
        <!--<h2><font color="#366092">Purchase List</font></h2>-->
        

        <form>
            <%
                //20. designation_settings - id,designation_name
            %>
            <table border="1">
                <tr>
                    <th>ID</th>
                    <th> User_ID</th>
                    <th> Bill_No</th>
                    <th> Amount</th>
                    <th> Payment type</th>
                    <th> Date</th>
                    <th> Time</th>
                    <th> Status</th>
                    <th> Current Address</th>
                    <th> Permanent Address</th>
                    <th> Street</th>
                    <th> Pin code</th>
                    <th> Contact</th>
                    <th> Track </th>
                    <th> Bill Details </th>
                </tr>
                <%
                    DBProcess dbp = new DBProcess();
                    dbp.open();
                    ArrayList<Bill_Master> dsList = dbp.selectAll_bill_master(ul.user_id);
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
                    for (Bill_Master ds : dsList) {
                        //out.println(ds.toString());
                        dbp.open();
                        User_Profile sc=dbp.select_user_profile(ds.user_id);
                        dbp.close();
                        if(sc==null){
                            //out.println(sc);
                            out.close();
                        }
                %>
                <tr>
                    <td><%=ds.id%></td>
                    <td>
                        &nbsp;<%=sc.fname%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.bill_no%>&nbsp;
                    </td>
                    
                    <td>
                        &nbsp;<%=ds.bill_amt%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.p_type%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.date%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.time%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.status%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.addr1%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.addr2%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.addr3%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.pin%>&nbsp;
                    </td>
                    <td>
                        &nbsp;<%=ds.contact%>&nbsp;
                    </td>
                    <td>
                        &nbsp; <a href="customer_courier_status_list.jsp?bill_master_id=<%=ds.id%>">Track/Cancel</a>  
                        &nbsp;
                    </td>
                    <td>
                        &nbsp; <a href="customer_bill_details_list.jsp?bill_master_id=<%=ds.id%>">Details</a>  
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
