/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sports_management.validations;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Saikiran
 */
public class addPlayerToDatabase extends HttpServlet  {
    
    
     String name , email , gender , address , city , district , sport,branch;
     long id , year , contact , pincode ; 
     
     public void service(HttpServletRequest req , HttpServletResponse res) throws IOException
    {
        PrintWriter out = res.getWriter();
        String query = null;
        String sqlTable = null ; 
        this.name = req.getParameter("studentname");
        this.email = req.getParameter("email");
        this.gender = req.getParameter("gender");
        this.address = req.getParameter("address");
        this.city = req.getParameter("city");
        this.district = req.getParameter("district");
        this.branch = req.getParameter("branch");
        this.sport = req.getParameter("sportname");
        this.id = Long.parseLong(req.getParameter("idnumber"));
        this.year = Long.parseLong(req.getParameter("year"));
        this.contact = Long.parseLong(req.getParameter("contactnumber"));
        this.pincode = Long.parseLong(req.getParameter("pincode"));
        HttpSession session = req.getSession();
        try{
        
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
        query = "insert into " + sqlTable +  " values (? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ?)" ;
        
        
        RequestDispatcher dispatcher = null;
        Connection conn ; 
        ConnectToDatabase db = new ConnectToDatabase() ; 
        
            
               conn = db.getConnection();
                if(conn == null){
                    res.sendRedirect("SearchPlayer.jsp");
                    return ;
                }
            PreparedStatement stmt = conn.prepareStatement(query);
          //  stmt.setString(1, sqlTable);
            stmt.setString(1,this.name);
            stmt.setLong(2,this.id);
            stmt.setString(3, this.email);
            stmt.setString(4 ,this.gender );
            stmt.setLong(5,this.year);
            stmt.setLong(6, this.contact);
            stmt.setString(7, this.address);
            stmt.setString(8, this.city);
            stmt.setString(9 , this.district);
            stmt.setLong(10, this.pincode);
            stmt.setString(11,this.sport);
            stmt.setString(12, this.branch);
            
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
           res.sendRedirect("successfullyAdd_Search_Delete.jsp");
            return ;         
                 
        } catch (Exception ex) {
              session.setAttribute("errorMessage", "Failed in adding new Player . Please try again");
             //out.println(ex + " --------->");  
            res.sendRedirect("errorInAddingPlayer.jsp");
             return;
            
            
            
        
        }
        
        
    }

    @Override
    public String toString() {
        return "addPlayerToDatabase{" + "name=" + name + ", email=" + email + ", gender=" + gender + ", address=" + address + ", city=" + city + ", district=" + district + ", sport=" + sport + ", branch=" + branch + ", id=" + id + ", year=" + year + ", contact=" + contact + ", pincode=" + pincode + '}';
    }
    
    
    
    
    
}