/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sports_management.validations;

import java.sql.*;

/**
 *
 * @author Saikiran
 */
public class TestDatabaseConnection {
    public static void main(String[] args) throws Exception {
        
       ConnectToDatabase db = new ConnectToDatabase();
       Connection conn = db.getConnection();
       if(conn == null)
            System.out.println("Failed to connect to database");
       Statement st = conn.createStatement() ; 
       ResultSet rs = st.executeQuery("select * from cricketplayersdetails");
       while(rs.next())
       {
           System.out.println(rs.getString(3));
       }
    }
    
}
