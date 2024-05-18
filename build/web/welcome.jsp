<%-- 
    Document   : welcome
    Created on : May 18, 2024, 6:18:53 PM
    Author     : trant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = (String)request.getAttribute("name");
        %>
                <h2 style="color: red">Hello <%= user %></h2>   
    </body>
</html>
