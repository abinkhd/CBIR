<%-- 
    Document   : uploadfile
    Created on : 17 Jan, 2017, 12:43:45 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>File Upload</h1>
        <form action="FetchDataAndFile.jsp" enctype="multipart/form-data" 
              name="form1" id="form1" method="post">

            First Text:<input type="text" name="firsttext"><br>
            Second Text:<input type="text" name="secondtext"><br>
            First Image:<input type="file" name="img1"><br>
            Second Image:<input type="file" name="img2"><br>
            Third Text:<input type="text" name="thirdtext"><br>
            <input type="submit" name="submit" value="Submit Product">
        </form>
    </body>
</html>
