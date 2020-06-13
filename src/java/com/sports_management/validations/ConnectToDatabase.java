/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sports_management.validations;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Saikiran
 */
public class ConnectToDatabase {
          
    private Connection newConnection;
     public Connection getConnection()throws Exception
    {
        int d =0;
        String url ;
        url = "jdbc:oracle:thin:@localhost:1521:xe";
        Class.forName("oracle.jdbc.driver.OracleDriver");
        newConnection= DriverManager.getConnection(url,"sportsManagement","saikiran12");
        
        return newConnection;
    }

   
}