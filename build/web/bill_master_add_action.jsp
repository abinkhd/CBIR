

<%@page import="db.tables.User_Cart"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.tables.Bill_Details"%>
<%@page import="db.tables.Bill_Master"%>
<%@page import="db.tables.User_Login"%>

<%@page import="util.Variables"%>
<%@page import="util.DateTime"%>
<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bill Master Action</title>
    </head>
    <body>
    <center>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
       
        <%@include file="customer_menu.jsp" %>
        <!--<h2 ><font color="#366092">Bill Master Result</font></h2>-->
    <%
         
   
    User_Login ul = (User_Login)session.getAttribute("cl");
    int user_id = ul.user_id;
    
    String bill_no = request.getParameter("bill_no");
    String bill_amt = "0000";//request.getParameter("bill_amt");
    String p_type= request.getParameter("p_type");
    String date = DateTime.getDate();
    String time = DateTime.getTime(); 
    String status="active";
    String addr1= request.getParameter("addr1");
    String addr2= request.getParameter("addr2");
    String addr3= request.getParameter("addr3");
    String pin= request.getParameter("pin");
    String email= request.getParameter("email");
    String contact= request.getParameter("contact");
    String discount= "10%";//request.getParameter("discount");
    //out.println(bill_no);
    //out.println(bill_amt);
    //out.println(p_type);
    //out.println(addr1);
    //out.println(addr2);
    //out.println(addr3);
    //out.println(pin);
    //out.println(email);
    //out.println(contact);
    //out.println(discount);
    //out.close();
    DBProcess dbp =new DBProcess();
    dbp.open();
    int id = dbp.getMaxID_bill_master()+1;
    dbp.close();
    Bill_Master  obj = new Bill_Master(id, user_id, bill_no, bill_amt, p_type, date, time, status, addr1, addr2, addr3, pin, email, contact, discount);
    dbp.open();
    int result = dbp.insert_bill_master(obj);
    dbp.close();
    out.println(result + ">>"+obj.toString()+"<br>");
    dbp.open();
    ArrayList<User_Cart> ucList = dbp.selectAll_user_cart(user_id);
    dbp.close();
    for(User_Cart uc:ucList){
        dbp.open();
        int bill_id= dbp.getMaxID_bill_details()+1;
        dbp.close();
        
        int product_id = uc.product_id;
        String qty = uc.quantity;
        String amt ="0.0";
        
        Bill_Details bd = new Bill_Details(bill_id,id,uc.product_id,qty,amt);
        
        dbp.open();
        int resulttemp= dbp.insert_bill_details(bd);
        dbp.close();
        out.println(resulttemp +">>"+bd.toString()+"<br>");
        dbp.open();
        dbp.delete_user_cart(uc.id);
        dbp.close();
    }
    %>
    Record Added
    </center>
</body>
</html>
