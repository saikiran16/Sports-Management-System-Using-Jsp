

<%-- 
    Document   : errorInAddingPlayer
    Created on : 3 May, 2020, 11:17:00 AM
    Author     : Saikiran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page errorPage="errorInAddingPlayer.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Player Details</title>
	<meta name="description" content="A free responsive website template made exclusively for Frittt by Themesforce and Sarfraz Shaukat">
	<meta name="keywords" content="website template, css3, one page, bootstrap, app template, web app, start-up">
	<meta name="author" content="Themesforce and Sarfraz Shaukat for Frittt">
	<link rel="icon" type="image/png" href="favicons/favicon-16x16.png" sizes="16x16">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheets" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/all.css">
        <link rel="stylesheet" href="css/addPlayer.css">
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
        <%! 
                
        String name , email , gender , address , city , district , sport,branch ,id , year , contact , pincode ;  
        
        %>
        <%
             session = request.getSession();
            name = session.getAttribute("Playername").toString();
            email = session.getAttribute("Playeremail").toString();
            gender = session.getAttribute("Playergender").toString();
            address = session.getAttribute("Playeraddress").toString();
            city = session.getAttribute("Playercity").toString();
            district = session.getAttribute("Playerdistrict").toString();
            sport = session.getAttribute("Playersport").toString();
            branch = session.getAttribute("Playerbranch").toString();
            id = session.getAttribute("Playerid").toString();
            year = session.getAttribute("Playeryear").toString();
            contact = session.getAttribute("Playercontact").toString();
            pincode = session.getAttribute("Playerpincode").toString();
            
        %>
        
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
            <h1 class="opener-holder" style="color: darkorange"><%=session.getAttribute("successMessage") %></h1>
 &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp; <h3 class="opener-holder" style="color:darkcyan">Redirecting automatically in 15 seconds</h3>
            
            <div class = "table-successfull">
            <table >
                <tr>
                    <td>NAME</td> 
                    <td><%=  name %></td> 
                </tr>
                
                <tr>
                    <td>REGISTRATION NUMBER</td>
                    <td><%= id  %></td>
                </tr>
                <tr>
                    <td>BRANCH</td>
                    <td><%= branch  %></td>
                </tr>
                <tr>
                    <td>EMAIL</td> 
                    <td><%= email    %></td>
                </tr>
                
                <tr>
                    <td>GENDER</td>
                    <td><%= gender  %></td>
                </tr>
                <tr>
                    <td>YEAR OF STUDY</td> 
                    <td><%= year %></td>
                </tr>
                <tr>
                    <td>CONTACT NUMBER</td> 
                    <td><%= contact    %></td>
                </tr> 
                <tr>
                    <td>SPORT</td>
                    <td><%= sport    %></td>
                </tr>
                <tr>
                    <td>ADDRESS</td> 
                    <td><%= address   %></td>
                </tr>
                <tr>
                    <td>CITY</td>
                    <td><%= city    %></td>
                </tr>
                <tr>
                    <td>DISTRICT</td> 
                    <td><%= district    %></td>
                </tr>
                <tr>
                    <td>PIN CODE</td>
                    <td><%= pincode    %></td>
                </tr>
                                
            </table>
            </div>
            
            
        
        
    </body>
    
    
</html>
<% 
    session.removeAttribute("Playername");
    session.removeAttribute("Playeremail");
    session.removeAttribute("Playergender");
    session.removeAttribute("Playeraddress");
    session.removeAttribute("Playercity");
    session.removeAttribute("Playerdistri");
    session.removeAttribute("Playersport");
    session.removeAttribute("Playerbranch");
    session.removeAttribute("Playerid");
    session.removeAttribute("Playeryear");
    session.removeAttribute("Playercontact");
    session.removeAttribute("Playerpincode");
    session.removeAttribute("successMessage");
response.setHeader("Refresh", "20; URL=Choice.jsp");
%>