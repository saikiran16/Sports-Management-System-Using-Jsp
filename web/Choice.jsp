<%@page  errorPage="ErroPage.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Sports portal KLU</title>
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
        String s = " ";
       try{
     s = (String)session.getAttribute("valid");}
       catch(Exception e){}
    if(! s.equals("1"))
    {
        response.sendRedirect("index.jsp");
        return ;
    }

%>
    <body style="background-color:#0074D9">
        <div style="background-color: white;box-shadow:  5px 5px 8px rgba(0, 0, 0, 0.3);
             border-top-right-radius: 40px;
             border-top-left-radius: 40px;
             border-bottom-left-radius: 1px;
             border-bottom-right-radius: 1px;
             
             
             ">
            <br>
            <header id="header">
			<div class="container">
				<nav id="nav">
					
                                   
                                    <div class="nav-drop" style=" padding-right: 50px;">
                                            <ul >
                                                    
                                                        <li><a href="#" style="color: darkcyan; ">Home</a></li>
                                                        <li><a href="Logout.jsp" style="color: darkcyan;background-color: pink;width:170%;border-radius: 20px;text-align: center">Logout</a></li>
						</ul>
						
					</div>
				</nav>
			</div>
		</header>
            <h1><img src="images/welcomeAdmin.png" style="width: 15%; animation: 5.5s"></h1>
           
        </div><br><br><br><br><br>
        <section class="main">
		<div class="container">
			
                    <div id = "cta"><a href="addPlayer.html" class="btn btn-primary rounded">Add a Player</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!--<p>Every day is a challenge, change your life now.</p> -->
			
				<a href="delete_Player.html" class="btn btn-primary rounded">Remove a Player</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br><br><br>
          
				<!--<p>Every day is a challenge, change your life now.</p> -->
                    
                                <a href="search_Player.jsp" class="btn btn-primary rounded" style="background-color: greenyellow">Search a Player</a></div><br><br><br><br>
				<!--<p>Every day is a challenge, change your life now.</p> -->
			
                                <div id = "cta"><a href="GetAllPlayerDetails.jsp" class="btn btn-primary rounded">Get all Player Details</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
                                <a href="events_page.html" class="btn btn-primary rounded">Events</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br><br><br>
                                
          <a href="Announcements.jsp" class="btn btn-primary rounded" style="background-color: greenyellow">Announcements</a></div><br><br><br><br>
                                
          <div id = "cta">          <a href="https://www.kluniversity.in/physics/raco.aspx" class="btn btn-primary rounded">Acheivements</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                
          <a href="https://www.kluniversity.in/sprtfac.aspx" class="btn btn-primary rounded">Faculty</a></div><br>
                                
                                <br><br><br><br>
				<h3>Every day is a challenge, change your life now.<h3>
			
			
		</div>
	</section>
    </body>
</html>
