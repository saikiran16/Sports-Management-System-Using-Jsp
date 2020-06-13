<%@page  errorPage="ErroPage.jsp" %>

<%-- 
    Document   : DisplayCurrentProfile
    Created on : 30 May, 2020, 10:43:15 PM
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
        <title>My Profile</title>
    </head>
    <body>
        <% 
           String id = (String)session.getAttribute("id" ) /*180040028*/;
            String query = "select * from  (select * from cricketPlayersDetails "
                    + "union " 
                    + "select * from hockeyPlayersDetails "
                    + "union " 
                    + "select * from hockeyPlayersDetails " 
                    + "union " 
                    + "select * from badmintionPlayersDetails ) where id = ?  " ;
            Connection conn;
            ConnectToDatabase db = new ConnectToDatabase() ; 
            try {
                conn = db.getConnection();
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setInt(1,Integer.parseInt(id));
                ResultSet rs = stmt.executeQuery();
                rs.next();  
                session.setAttribute("Playername"    ,rs.getString(1));
                session.setAttribute("Playerid"      ,rs.getString(2));
                session.setAttribute("Playeremail"   ,rs.getString(3));
                session.setAttribute("Playergender"  ,rs.getString(4));
                session.setAttribute("Playeryear"    ,rs.getString(5));
                session.setAttribute("Playercontact" ,rs.getString(6));
                session.setAttribute("Playeraddress" ,rs.getString(7));
                session.setAttribute("Playercity"    ,rs.getString(8));
                session.setAttribute("Playerdistrict",rs.getString(9));
                session.setAttribute("Playersport"   ,rs.getString(10));
                session.setAttribute("Playerpincode" ,rs.getString(11));
                session.setAttribute("Playerbranch"  ,rs.getString(12));
                session.setAttribute("successMessage", "Details Fetched");
                response.sendRedirect("successfullyAdd_Search_Delete.jsp");
                return ;
                
            }
            catch(Exception e)
            {
              response.sendRedirect("ErrorPage.jsp");
            }
                
        
        
        %>
    </body>
</html>
