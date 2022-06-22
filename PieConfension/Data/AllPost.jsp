<%-- 
    Document   : AllPost
    Created on : Jun 8, 2022, 7:37:07 PM
    Author     : PC
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Utilities.DatabaseUtilities"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.rmi.ConnectIOException"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="DataBeans.UserPost" isELIgnored="false"%>
<!DOCTYPE html>

<html>
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Post</title>
              
    </head>
    <body>
        <%UserPost posts=(UserPost)request.getAttribute("Posts");
        for(int i=0;i<=posts.getPosts().size()-1;i++){
     %>
     
     <p>CFS: <%=posts.getPosts().get(i) %>
    <%}%>
    <p>size: <%=posts.getPosts().size() %>
    </body>
</html>
