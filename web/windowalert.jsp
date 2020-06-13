<%-- 
    Document   : windowalert
    Created on : 31 May, 2020, 12:03:45 PM
    Author     : Saikiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Successful</title>
        <script>
            window.alert("Account created");
           </script>
    </head>
    <body>
        <h2>Redirecting to main page</h2>
        <%  
            response.setHeader("Refresh" , "2; URL=index.html");
            %>
    </body>
</html>
