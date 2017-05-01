/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.paperless.paperlesstestingsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author georgy
 */
@WebServlet(urlPatterns = {"/styles","/style","/studentlogin2","/studentlogin", "/studentsignup","/sloginaction","/ssignupaction","/professorlogin", "/professorsignup", "/psignupaction","/ploginaction","/login", "/sddfgin", "/takeExam", "/signup"})
public class HomeController extends HttpServlet {

    Users user;

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        process(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        process(request, response);
    }

    private void process(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {

        String applicationContextPath = request.getContextPath();
        if (request.getRequestURI().equals(applicationContextPath + "/studentlogin")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/student-loginpg.jsp");
            dispatcher.forward(request, response);

        } else if (request.getRequestURI().equals(applicationContextPath + "/studentsignup")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/student-signup.jsp");
            dispatcher.forward(request, response);
        } else if (request.getRequestURI().equals(applicationContextPath + "/professorlogin")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/professor-loginpg.jsp");
            dispatcher.forward(request, response);
        } else if (request.getRequestURI().equals(applicationContextPath + "/professorsignup")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/professor-signup.jsp");
            dispatcher.forward(request, response);
        }  else if (request.getRequestURI().equals(applicationContextPath + "/studentlogin2")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/student-loginpg2.jsp");
            dispatcher.forward(request, response);
        } else if (request.getRequestURI().equals(applicationContextPath + "/style")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/style.css");
            dispatcher.forward(request, response);
        } else if (request.getRequestURI().equals(applicationContextPath + "/styles")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/styles.css");
            dispatcher.forward(request, response);
        }


        String uri = request.getRequestURI();
        int lastIndex = uri.lastIndexOf("/");
        String action = uri.substring(lastIndex + 1);

        // execute an action
        String dispatchUrl = null;
        if ("sloginaction".equals(action)) { // LOGIN STUDENT
            String passwd= null;
            int type =3;  // 1 FOR PROFESSOR 0 FOR STUDENT
            user = new Users("", "", request.getParameter("email"), request.getParameter("password"));
            try {
                passwd=DataConn.selectUser(user.getEmail()).getPassword();
                type=DataConn.selectUser(user.getEmail()).getType();
                if(user.getPassword().equals(passwd) && (type == 0)){
                    dispatchUrl = "jsp/student-board.jsp";
                }
                else {
                    String message="Incorrect email or passowrd";
                    dispatchUrl = "jsp/student-loginpg.jsp";
                    request.setAttribute("message", message);
                }
   
            } catch (SQLException ex) {
                Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
            }
  
            

        } else if ("ssignupaction".equals(action)) { // REGISTER STUDENT
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int type = 0;
          

            try {
                DataConn.enterUsers(firstname, lastname, email, password,type);
                RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/student-board.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
            }

        } 
        else if ("ploginaction".equals(action)) { // LOG IN PROFESSOR
            String passwd= null;
            int type = 2;  // 1 FOR PROFESSOR AND 0 FOR STUDENT
            user = new Users("", "", request.getParameter("email"), request.getParameter("password"));
            try {
                passwd=DataConn.selectUser(user.getEmail()).getPassword();
                type = DataConn.selectUser(user.getEmail()).getType();
                if(user.getPassword().equals(passwd) && (type == 1)){
                    dispatchUrl = "jsp/professor-board.jsp";
                }
                else {
                    
                    String message="Incorrect email or passowrd or user type";
                    dispatchUrl = "jsp/professor-loginpg.jsp";
                    request.setAttribute("message", message);
                }
  
            } catch (SQLException ex) {
                Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if ("psignupaction".equals(action)) { // REGISTER PROFESSOR
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int type = 1;
            System.out.println("----------------------" + firstname + "----------------------");

            try {
                DataConn.enterUsers(firstname, lastname, email, password,type);
                RequestDispatcher dispatcher = request.getRequestDispatcher("jsp/professor-board.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (dispatchUrl != null) {
            RequestDispatcher rd = request.getRequestDispatcher(dispatchUrl);
            rd.forward(request, response);
        }

    }



}
