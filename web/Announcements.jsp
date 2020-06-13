<%@page  errorPage="ErroPage.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Responsive Bootstrap HTML Template - Sports</title>
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
                                    <a href="Logout.jsp" class="btn btn-primary rounded" style="background-color: pink">Logout</a>
					<div class="nav-drop">
						<ul>
							<li class="active visible-sm visible-xs"><a href="Choice.jsp">Home</a></li>
                                                        <li><a href="Choice.jsp" style="color: darkcyan">Home</a></li>
						</ul>
						<div class="drop-holder visible-sm visible-xs">
							<span>Follow Us</span>
							<ul class="social-networks">
								<li><a class="fa fa-github" href="#"></a></li>
								<li><a class="fa fa-twitter" href="#"></a></li>
								<li><a class="fa fa-facebook" href="#"></a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</header>
            
            <br><br><br>
        </div>
        <section class="main">
		<div class="container">
			
                    <br><br><br><br><br><br><br><br><br>
                    <div id = "cta"><a href="AddAnnouncements.jsp" class="btn btn-primary rounded">Add Announcement</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!--<p>Every day is a challenge, change your life now.</p> -->
                                <br><br><br><br><br><br><br><br><br>
				<a href="DisplayAnnouncements.jsp" class="btn btn-primary rounded">Display all Announcements</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br><br><br>
          
				
			
		</div>
	</section>
    </body>
</html>

