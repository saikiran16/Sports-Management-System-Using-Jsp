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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Saikiran
 */
public class DeletePlayer extends HttpServlet {

     String name , email , gender , address , city , district , sport,branch;
     int id , year , contact , pincode ; 
     
    public void service(HttpServletRequest req , HttpServletResponse res) throws IOException
    {
         String sqlTable = null ; 
        PrintWriter out = res.getWriter();
        if((this.sport).equalsIgnoreCase("volleyball"))
        {
            sqlTable = "VOLLEYBALLPLAYERSDETAILS";
        }
        else if((this.sport).equalsIgnoreCase("cricket"))
        {
            sqlTable = "CRICKETPLAYERSDETAILS";
        }
        else if ((this.sport).equalsIgnoreCase("badmintion"))
        {
            sqlTable = "BADMINTIONPLAYERSDETAILS";
        }
        else if ((this.sport).equalsIgnoreCase("hockey"))
        {
            sqlTable = "HOCKEYPLAYERSDETAILS";
        }
       int id = Integer.parseInt(req.getParameter("id"));
        Connection conn ; 
        ConnectToDatabase db = new ConnectToDatabase() ; 
        try {
            conn = db.getConnection();
             PreparedStatement stmt = conn.prepareStatement("delete from ? where id = ?");
             stmt.setString(1 , sqlTable);
             stmt.setInt(2, id);
             stmt.executeUpdate();
        }
        catch(Exception e)
        {
            out.println("An Error Orccured......! Try Again");
        }
            
    }
}
