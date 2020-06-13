/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sports_management.validations;

import static com.sun.xml.bind.util.CalendarConv.formatter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Saikiran
 */
public class AddAnnouncementsToDatabase extends HttpServlet {
    
    public void service(HttpServletRequest req , HttpServletResponse res) throws IOException
    {
        PrintWriter out = res.getWriter();
        String matter = req.getParameter("matter");
        String d = req.getParameter("dateOfAdd");
        
        HttpSession session = req.getSession();
        
        Connection conn;
        ConnectToDatabase db = new ConnectToDatabase() ; 
        try {
                conn = db.getConnection();
                PreparedStatement stmt = conn.prepareStatement("insert into announcements values (? , ?)" );
                stmt.setString(1,  d);
                stmt.setString(2, matter);
                stmt.executeUpdate();
                session.setAttribute("message","Annoucement added succesfully");
                res.setHeader("Refresh", "2; URL=AddAnnouncements.jsp");
                //out.println(d  + " " + matter);
                return; 
                
        }
        catch(Exception e)
        {
            session.setAttribute("message","Annoucement added succesfully");
          //out.println(e);
           res.setHeader("Refresh", "5; URL=AddAnnouncements.jsp");
        }
        
    }
}
