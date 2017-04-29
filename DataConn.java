/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.paperless.paperlesstestingsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author georgy
 */
public class DataConn {

    // private  String dbURL = "jdbc:derby://localhost:1527/TestingDB;create=true;user="+"sa"+";password="+"derbyE";
    private static String dbURL = "jdbc:derby://localhost:1527/paperless;create=true;user=georgy;password=georgy";

    // jdbc Connection
    private static Connection conn = null;
    private static Statement stmt = null;

    public static void createConnection() {
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
            //Get a connection
            conn = DriverManager.getConnection(dbURL);
        } catch (Exception except) {
            except.printStackTrace();
        }
    }  // End createConnection()

    public static void enterUsers(String fname, String lname, String email, String password,int type) throws SQLException {
        createConnection();
        String query = "insert into users(fname,lname,email,password,type) values(?,?,?,?,?)";
        PreparedStatement preparedStmt = conn.prepareStatement(query);
        preparedStmt.setString(1, fname);
        preparedStmt.setString(2, lname);
        preparedStmt.setString(3, email);
        preparedStmt.setString(4, password);
        preparedStmt.setInt(5, type);
        // execute the preparedstatement
        preparedStmt.execute();

        conn.close();
    }

    public static Users selectUser(String email) throws SQLException {
        String passwd =  null;
        Users retrievedUser = new Users();
        createConnection();
        String query = "SELECT email,password,type FROM users where email=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            retrievedUser.setPassword(rs.getString(2));
            retrievedUser.setType(rs.getInt(3));
             passwd= rs.getString(2);
            if (rs.getString("email").equals(email)) {
                passwd= rs.getString("password");
                break;
            }

        }
        rs.close();
        ps.close();
        System.out.println();
        return retrievedUser;
    }

    public static void enterData(String statement) {
        createConnection();
        try {
            stmt = conn.createStatement();
            stmt.execute(statement);
            stmt.close();
        } catch (SQLException sqlExcept) {
            sqlExcept.printStackTrace();
        }

    }

    public void test() {
        System.out.println(" derby test!!!!!!!!!!!!!");
    }

    public void createTable(int id, String name) {
        try {
            System.out.println("Create table started!!!!!!!");
            System.out.println(conn);
            stmt = conn.createStatement();
            // stmt.execute("CREATE TABLE FIRSTTABLEE (ID INT PRIMARY KEY, NAME VARCHAR(12))");

            stmt.close();
        } catch (SQLException sqlExcept) {
            sqlExcept.printStackTrace();
        }
    }

    public void shutdown() {
        try {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                DriverManager.getConnection(dbURL + ";shutdown=true");
                conn.close();
            }
        } catch (SQLException sqlExcept) {

        }

    }
}
