<%-- 
    Document   : ErrorPage
    Created on : 30 May, 2020, 11:35:58 PM
    Author     : Saikiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <h1>Something went wrong</h1>
        <%
            
          session.setAttribute("valid", 0);
          response.setHeader("Refresh", "5; URL=index.html");
        
        
        %>
    </body>
</html>
