/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sports_management.validations;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.exit;
import static java.time.Clock.system;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Saikiran
 */
public class Check_Credentials extends HttpServlet
{
    

        public void service(HttpServletRequest req , HttpServletResponse res) throws ServletException , IOException
        {
            
            HttpSession session = req.getSession();
            Retrive_Credentials rc = new Retrive_Credentials("select * from AdminLoginDetails where username=? and password=?");
            PrintWriter out = res.getWriter();
            int matched=0;
            String str1 = req.getParameter("username");
            String str2 = req.getParameter("password");
            //out.println(str1 + " " + str2);
            try
                {
                    matched = (rc.check_credentials(str1, str2));
                    if (matched==1)
                        {
                            
                            session.setAttribute("valid","1");
                            res.sendRedirect("Choice.jsp");
                        }
                    else
                    {
                       session.setAttribute("message","Incorrect Credentails");
                       res.sendRedirect("adminLogin.jsp");
                       //out.println("Invalid credintials");
                        //rd.include(req, res);
                    }
                    out.println(matched);
                    
               }
        
            catch(Exception e)
            {
                
                //out.println("Failed to go to check crendentials ---> " +e);
                 res.sendRedirect("adminLogin.html");
            }
//           
            
        }


}
