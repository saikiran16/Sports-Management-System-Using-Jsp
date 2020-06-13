<%@page  errorPage="ErroPage.jsp" %>

<%-- 
    Document   : Logout.jsp
    Created on : 30 May, 2020, 2:25:52 PM
    Author     : Saikiran
--%>

<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logging out</title>
    </head>
    <script>
        window.alert("Logged out successfully");
        
    </script>
    <body>
        <% 
        
            session.setAttribute("valid", 0);
            response.setHeader("Cache-Control","no-cache");
            response.setHeader("Cache-Control","no-store");
            response.setHeader("Pragma","no-cache");
            response.setDateHeader ("Expires", 0);
            session.invalidate();
            

        
        response.setHeader("Refresh", "1; URL=index.html");
        
        
        
        
        
        %>
    </body>

