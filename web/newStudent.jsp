<%-- 
    Document   : newStudent
    Created on : 31 May, 2020, 8:53:38 AM
    Author     : Saikiran
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.sports_management.validations.ConnectToDatabase"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Entry</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
            String  name , email , gender , address , city , district , sport,branch;
             long id , year , contact , pincode ; 
             String sqlTable = null ; 
             
                name = (String)session.getAttribute("Playername" );
                id =   (Long)session.getAttribute("Playerid" );
                email  = (String) session.getAttribute("Playeremail" );
                gender = (String) session.getAttribute("Playergender" );
                year   = (Long) session.getAttribute("Playeryear" );
                contact= (Long) session.getAttribute("Playercontact");
                address= (String) session.getAttribute("Playeraddress" );
                city   = (String) session.getAttribute("Playercity");
                district=(String) session.getAttribute("Playerdistrict");
                sport  = (String) session.getAttribute("Playersport" );
                pincode =(Long)session.getAttribute("Playerpincode");
                branch =  (String)session.getAttribute("Playerbranch");
                
                try{
        
            if((sport).equalsIgnoreCase("volleyball"))
           {
               sqlTable = "volleyballplayersdetails";
            }
            else if((sport).equalsIgnoreCase("cricket"))
        {
            sqlTable = "cricketplayersdetails";
        }
        else if ((sport).equalsIgnoreCase("badmintion"))
        {
            sqlTable = "badmintionplayersdetails";
        }
        else if ((sport).equalsIgnoreCase("hockey"))
        {
          
            sqlTable = "hockeyplayersdetails";
        }
        String query = "insert into " + sqlTable +  " values (? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ?)" ;
        
              RequestDispatcher dispatcher = null;
        Connection conn ; 
        ConnectToDatabase db = new ConnectToDatabase() ; 
        
            
               conn = db.getConnection();
                if(conn == null){
                    //response.sendRedirect("SearchPlayer.jsp");
                    //return ;
                }
            PreparedStatement stmt = conn.prepareStatement(query);
          //  stmt.setString(1, sqlTable);
            stmt.setString(1,name);
            stmt.setLong(2,id);
            stmt.setString(3, email);
            stmt.setString(4 ,gender );
            stmt.setLong(5,year);
            stmt.setLong(6, contact);
            stmt.setString(7,address);
            stmt.setString(8, city);
            stmt.setString(9 ,district);
            stmt.setLong(10, pincode);
            stmt.setString(11,sport);
            stmt.setString(12,branch);
            
            Statement s = conn.createStatement();
            int i = stmt.executeUpdate();
            conn.close();
            stmt.close();
            
          
           
           session.setAttribute("Playername" , name);
           session.setAttribute("Playerid" , id);
           session.setAttribute("Playeremail" , email);
           session.setAttribute("Playergender" , gender);
           session.setAttribute("Playeryear" , year);
           session.setAttribute("Playercontact" , contact);
           session.setAttribute("Playeraddress" , address);
           session.setAttribute("Playercity" , city);
           session.setAttribute("Playerdistrict" ,district);
           session.setAttribute("Playersport" , sport);
           session.setAttribute("Playerpincode" , pincode);
           session.setAttribute("Playerbranch" , branch);
           session.setAttribute("successMessage" , "Details added successfully");
           response.sendRedirect("windowalert.jsp");
            return ;         
                 
        } catch (Exception ex) {
             // session.setAttribute("errorMessage", "Failed in adding new Player . Please try again");
             //out.println(ex + " --------->");  
           // response.sendRedirect("errorInAddingPlayer.jsp");
        
        
        }
      
        %>
    </body>
</html>
