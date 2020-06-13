<%@page  errorPage="ErroPage.jsp" %>

<%-- 
    Document   : GetAllPlayerDetails
    Created on : 28 Apr, 2020, 8:29:31 PM
    Author     : Saikiran
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sports_management.validations.ConnectToDatabase"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="A free responsive website template made exclusively for Frittt by Themesforce and Sarfraz Shaukat">
	<meta name="keywords" content="website template, css3, one page, bootstrap, app template, web app, start-up">
	<meta name="author" content="Themesforce and Sarfraz Shaukat for Frittt">
	<link rel="icon" type="image/png" href="favicons/favicon-16x16.png" sizes="16x16">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="fonts/font-awesome-4.3.0/css/font-awesome.min.css">
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
    <body style="background-color: ">
        <%
            String query = "select * from cricketPlayersDetails "
                    + "union " 
                    + "select * from hockeyPlayersDetails "
                    + "union " 
                    + "select * from hockeyPlayersDetails " 
                    + "union " 
                    + "select * from badmintionPlayersDetails " ;
            Connection conn;
            ConnectToDatabase db = new ConnectToDatabase() ; 
            try {
                conn = db.getConnection();
                PreparedStatement stmt = conn.prepareStatement(query);
                
                ResultSet rs = stmt.executeQuery();
                %>
                <div style="font:cursive;font-size: 50px">Entire Students List</div>
                <div class = "details-table">
                    <table>
                 <%
                while(rs.next())
                {
                    %>
                    
                    <tr>
                        <td> <a href ="search_Player.jsp"><%= rs.getInt("id") %></a></td>
                        <td><%=  rs.getString("name") %></td>
                    </tr>
                    <%
                }
                %>
                    </table>
                <%
            }
            catch(Exception e)
            {
                out.println(e);
                out.println("<h2>An Error Orccured......! Try Again</h2>");
            out.println("you are redirecting in 5 seconds");
            response.setHeader("Refresh", "5; URL=Choice.jsp");
            }
            %>
        
     
    </body>
</html>
