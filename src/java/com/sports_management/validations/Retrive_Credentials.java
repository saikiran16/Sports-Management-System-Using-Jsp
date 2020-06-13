
package com.sports_management.validations;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
//import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author Saikiran
 */
 public class Retrive_Credentials {
     
     String query = null ;

    public Retrive_Credentials(String q) {
        this.query = q ; 
    }
     
     
          
     public int  check_credentials(String uname , String pwd)throws Exception
    {
        int d = 0 ;
        ConnectToDatabase c = new ConnectToDatabase();
        Connection conn = c.getConnection();
        if(conn == null)
        {
            System.out.println("Failed to connect");
            
        }
        else
        {
            System.out.println("Connected");
        }
        PreparedStatement stmt = conn.prepareStatement(query);
        System.out.println("username = " + uname + "   password = " + pwd);
        stmt.setString(1,uname);
        stmt.setString(2,pwd);
        ResultSet rs = stmt.executeQuery();
        while(rs.next())
        {
            d++;
        }
        if(conn != null)
            System.out.println("yes");
        System.out.println("d = " + d);
        return d;
        
    }
     public int insertCredentails(String username , String password) throws Exception
     {
         int d = 0;
         ConnectToDatabase db_inserCred = new ConnectToDatabase();
         Connection  conn_insertCred = db_inserCred.getConnection() ; 
         PreparedStatement stmt = conn_insertCred.prepareStatement(query);
         System.out.println("username = " + username + "   password = " + password);
         try {
             stmt.setString(1,username);
         
              stmt.setString(2,password);
             d = stmt.executeUpdate();
         }
         catch (SQLException ex) {
             Logger.getLogger(Retrive_Credentials.class.getName()).log(Level.SEVERE, null, ex);
         }
         return d;
     }
    
}
