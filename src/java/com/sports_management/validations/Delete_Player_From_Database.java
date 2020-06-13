/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sports_management.validations;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Saikiran
 */
public class Delete_Player_From_Database extends HttpServlet {
    
    String name  , sport  ,sqlTable , query1 , query2 ; 
    long id ;
    Connection conn = null ; 
    PreparedStatement stmt1 = null , stmt2 = null;
    PrintWriter out = null;
    ResultSet rs = null;
    HttpSession session = null;
    public void service(HttpServletRequest req , HttpServletResponse res) throws IOException
    {
        session = req.getSession();
        session.setAttribute("errorMessage","No Player Found. Please Try again");
        out = res.getWriter();
        name = req.getParameter("name");
        sport = req.getParameter("sport");
        id = Long.parseLong(req.getParameter("number"));
        
        if((this.sport).equalsIgnoreCase("volleyball"))
        {
            sqlTable = "volleyballplayersdetails";
        }
        else if((this.sport).equalsIgnoreCase("cricket"))
        {
            sqlTable = "cricketplayersdetails";
        }
        else if ((this.sport).equalsIgnoreCase("badmintion"))
        {
            sqlTable = "badmintionplayersdetails";
        }
        else if ((this.sport).equalsIgnoreCase("hockey"))
        {
          
            sqlTable = "hockeyplayersdetails";
        }
        query1 = "delete from " + sqlTable +  " where ID = ?" ;
        query2 = "select * from " + sqlTable + " where ID = ?" ;
        
        
        try{
            
            ConnectToDatabase db = new ConnectToDatabase();
            conn = db.getConnection() ;
            
            // creting Query for deleting details
            stmt1 = conn.prepareStatement(query1) ;
            
            // creatng Query for selecing  details ;
            stmt2 = conn.prepareStatement(query2) ;
   
            // Executing Select Query
            stmt2.setLong(1,id);
            rs = stmt2.executeQuery();
            
            
            // Executing delete Query
            stmt1.setLong(1,id);
            stmt1.executeUpdate();
            
            
            if(rs.next() == false)
            {
                res.sendRedirect("errorInAddingPlayer.jsp");
                return ;
            }
            else
            {
                
             
            
            // Setting Attributes from ResultSet
            
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
            session.setAttribute("successMessage", "Student Found");
            res.sendRedirect("successfullyAdd_Search_Delete.jsp");
            return ;
            }
          }
        catch(Exception e)
        {
            res.sendRedirect("errorInAddingPlayer.jsp");
            return ;
        }
        finally
        {
            
            try{
            conn.close() ;
            stmt1.close() ;
            stmt2.close() ;
            }catch(Exception e){}
        }
    }
}
