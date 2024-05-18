<%-- 
    Document   : index
    Created on : May 18, 2024, 6:08:20 PM
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
        <form action="servlet" method="post">
                <label>LOGIN FORM</label><br>
                <label>Enter username:</label>
                <input type="text" name="username"><br>
                <label>Enter password:</label>
                <input type="password" name="password"><br>
                <button type="submit" value="login">Login</button>
                <button type="reset" value="login">Reset</button>
        </form>
        
        <%
            String result = (String)request.getAttribute("user");
            if(result != null){
        %>
        <h2 style="color: red"><%= result %></h2>
        <%   } %>        
    </body>
</html>
