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
public class saveAccountDetailsToDatabase extends HttpServlet {

   public void service(HttpServletRequest req , HttpServletResponse res) throws IOException 
   {
       HttpSession session = req.getSession();
       PrintWriter out = res.getWriter();
       String username = session.getAttribute("Playerid").toString(); 
       String newpassword = req.getParameter("newpassword"); 
       String confirmpassword = req.getParameter("confirmpassword"); 
       if(newpassword.equals(confirmpassword))
       {
           System.out.println("Password Matched");
           Retrive_Credentials rc = new Retrive_Credentials("insert into StudentLoginDetails values( ? , ? )");
           try {
               if(rc.insertCredentails(username, newpassword)!= 0 )
               {
                   //out.println("Account created.Login Here");
                  
                   res.sendRedirect("newStudent.jsp");
               }
               else{
                   out.println("failed");
               }
           } catch (Exception ex) {
               Logger.getLogger(saveAccountDetailsToDatabase.class.getName()).log(Level.SEVERE, null, ex);
           }
           
           
       }
       else{
           
           RequestDispatcher rd = req.getRequestDispatcher("passwordEnter.jsp");
           try {
               rd.include(req,res);
           } catch (ServletException ex) {
               Logger.getLogger(saveAccountDetailsToDatabase.class.getName()).log(Level.SEVERE, null, ex);
           } catch (IOException ex) {
               Logger.getLogger(saveAccountDetailsToDatabase.class.getName()).log(Level.SEVERE, null, ex);
           }
           
           out.println("Failed");
       }
   }
}
