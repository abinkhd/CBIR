<%-- 
    Document   : FetchDataAndFile
    Created on : 17 Jan, 2017, 12:44:24 PM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.geekonjava.fileupload.FileUploading"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>File Upload Result</h1>

        <%
            String imagepath = config.getServletContext().getRealPath("/") + "/images/";

            ArrayList<String> imagename = new ArrayList<String>();
            imagename.add("img1");
            imagename.add("img2");

            ArrayList<String> dataname = new ArrayList<String>();
            dataname.add("firsttext");
            dataname.add("secondtext");
            dataname.add("thirdtext");

            HashMap map = FileUploading.UploadFile(imagepath, dataname, imagename, request);
            
            //HashMap map = FileUploading.UploadFile(imagepath, imagename, request);
            
            out.println(map.get("error") + "<br>");
            out.println(map.get("img1") + "<br>");
            out.println(map.get("firsttext") + "<br>");
            out.println(map.get("img2") + "<br>");
            out.println(map.get("secondtext") + "<br>");
            out.println(map.get("thirdtext") + "<br>");

        %>
    </body>
</html>
