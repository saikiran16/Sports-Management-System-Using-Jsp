<%@page  errorPage="ErroPage.jsp" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sports_management.validations.ConnectToDatabase"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
           
        </div>
        
        <br><br><br><br>
        <div style="font-family: fantasy ; text-align: center;font-size: 30px;box-shadow: 2px 20px 51px  10px  #00cccc;">Announcements</div>
        <br>
   
    <div >
        <table>
         <%
             int sno = 1;
                    String query = "select  * from announcements   where  rownum <= 10  order by dateOfadd desc ";
                   Connection conn;
                   ConnectToDatabase db = new ConnectToDatabase() ; 
                   try {
                       conn = db.getConnection();
                       PreparedStatement stmt = conn.prepareStatement(query);

                       ResultSet rs = stmt.executeQuery();

                       while(rs.next())
                       {

         %>
                   <tr>
                       <td><%= sno + ")" %></td>
                        <td> <%= rs.getString(1) %></td>
                        <td><%=  rs.getString(2) %></td>
                    </tr>
                    
                    
                    
       <%
                sno++;
                }
            }
            catch(Exception e)
            {
                out.println("<h2>An Error Orccured......! Try Again</h2>");
            out.println("you are redirecting in 5 seconds "+ e);
            response.setHeader("Refresh", "5; URL=Choice.jsp");
            return ;
            }
            %>
        </table>
    </div>
      
    </body>
    
</html>
