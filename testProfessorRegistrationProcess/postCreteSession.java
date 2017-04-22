/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Brady
 */
@WebServlet(urlPatterns = {"/postCreteSession"})
public class postCreteSession extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Print writer to test values stored in String 
        PrintWriter out = response.getWriter();
        
        // Get Session Creation Variables set up by Professor
        String students = request.getParameter("numStudents");
        String course = request.getParameter("Courses"); 
        String date = request.getParameter("date"); 
        
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/PaperlesstesTingSystem",
		"root","password"); 
            PreparedStatement pst = con.prepareStatement("Insert into CourseTaught (CourseID, date, numberOfStudents) VALUES (?,?,?)");
            pst.setString(1, course);
            pst.setString(2, date);
            pst.setString(3, students);
            pst.executeQuery(); 

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(postCreteSession.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException e) {
            out.println("SQL Exception"); 
        }
                  
        
    }
}
