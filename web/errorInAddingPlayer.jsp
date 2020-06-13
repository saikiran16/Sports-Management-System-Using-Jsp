<%@page  errorPage="ErroPage.jsp" %>

<%-- 
    Document   : errorInAddingPlayer
    Created on : 3 May, 2020, 11:17:00 AM
    Author     : Saikiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ERROR</title>
	<meta name="description" content="A free responsive website template made exclusively for Frittt by Themesforce and Sarfraz Shaukat">
	<meta name="keywords" content="website template, css3, one page, bootstrap, app template, web app, start-up">
	<meta name="author" content="Themesforce and Sarfraz Shaukat for Frittt">
	<link rel="icon" type="image/png" href="favicons/favicon-16x16.png" sizes="16x16">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheets" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/all.css">
	<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700|Source+Sans+Pro:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    </head>
    <% 
    String s = (String)session.getAttribute("valid");
    if(!s.equals("1"))
    {
        response.sendRedirect("index.jsp");
        return ;
    }

%>
    <body>
        
        <div>
            <header id="header">
			<div class="container">
				<nav id="nav">
					<div class="opener-holder">
						<a href="#" class="nav-opener"><span></span></a>
					</div>
                                    
					
				</nav>
			</div>
		</header>
            <br><br>
            <h1 class="opener-holder" style="color: darkorange"><%= session.getAttribute("errorMessage")%></h1>
            <br><br>
            <br><br>
            <br><br><br><br><br><br>
            <h1 class="opener-holder" style="text-align: center;color: darkcyan">You will be redirecting to Home page in 7 seconds !!!!!</h1>
            <br><br><br>
            
        </div>
            <%session.removeAttribute("errorMessage");
        response.setHeader("Refresh", "7; URL=Choice.jsp");  %>
    </body>
</html>
