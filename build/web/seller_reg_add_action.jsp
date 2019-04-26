

<%@page import="db.tables.Seller_Profile"%>
<%@page import="db.tables.User_Login"%>

<%@page import="util.DateTime"%>

<%@page import="db.DBProcess"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Registration Action</title>
    </head>
    <!--<h1>Add Customer</h1>-->
    <%@include file="seller_menu.jsp" %>
    <%

        
        String seller_name = request.getParameter("seller_name");
        String seller_desc = request.getParameter("seller_desc");
        String addr1 = request.getParameter("addr1");
        String addr2 = request.getParameter("addr2");
        String addr3 = request.getParameter("addr3");

        String pin = request.getParameter("pin");
        String url = request.getParameter("url");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String date = DateTime.getDate();
        String time = DateTime.getTime();
        String status = "active";
        DBProcess dbp = new DBProcess();
        dbp.open();
        int id = dbp.getMaxID_seller_profile() + 1;
        dbp.close();
        Seller_Profile obj = new Seller_Profile(id, seller_name, seller_desc, addr1, addr2, addr3, pin, url, email, contact, date, time, status);
        dbp.open();
        int result = dbp.insert_seller_profile(obj);
        dbp.close();
        out.println(result + ">>" + obj.toString() + "<br>");
        dbp.close();
        int user_id = id;
        String uname = email;
        String passwd = "1234";
        String u_type = "seller";

        dbp.open();
        int uid = dbp.getMaxID_user_login() + 1;
        dbp.close();
        User_Login ul = new User_Login(uid, user_id, uname, passwd, u_type, status);
        dbp.open();
        dbp.insert_user_login(ul);
        dbp.close();
    %>
    User Added   
</html>
