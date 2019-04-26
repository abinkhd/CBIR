<%@page import="db.tables.User_Login"%>
<%@page import="util.Variables"%>
<%

Object obj= session.getAttribute("cl");
if(obj==null)response.sendRedirect("customer_login.jsp");
User_Login cl = (User_Login)obj;
%>

<html>
    <title>Student Online</title>
      <!--meta tags -->
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="keywords" content="Toys Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
         Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="static/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all"/>
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="static/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all"/>
      <!-- //font-awesome icons -->
      <!-- For Clients slider -->
      <link rel="stylesheet" href="static/css/flexslider.css" type="text/css" media="all" />
      <!--flexs slider-->
      <link href="static/css/JiSlider.css" rel="stylesheet">
      <!--Shoping cart-->
      <link rel="stylesheet" href="static/css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--stylesheets-->
      <link href="static/css/style.css" rel='stylesheet' type='text/css' media="all"/>
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet"/>
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet"/>
    <body background="static/images/student.jpg" style="background-size: cover; background-repeat: no-repeat;">

    <center>
        <a href="admin_category_add_action.jsp"></a>
        <!--<h1 ><font color="#366092"><%=Variables.prjName%></font></h1>-->
            <%@include file="customer_menu.jsp" %>
         <!--<h2 ><font color="#366092">Welcome Home Customer</font></h2>-->
        <form>
            <!--<img src="img/web.jpg" width="640" height="320">-->
            <% if (cl.passwd.equals("1234"))out.println("Do change your default password");
            %>
        </form>

    </center>    

</body>
</html>
