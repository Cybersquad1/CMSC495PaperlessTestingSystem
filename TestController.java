/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.paperless.paperlesstestingsystem;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/testcreation","/questionsqty","/truefalse","/singlechoice"})

public class TestController extends HttpServlet {

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

    public void process(HttpServletRequest request,
            HttpServletResponse response)
            throws IOException, ServletException {
         String applicationContextPath = request.getContextPath();
        if (request.getRequestURI().equals(applicationContextPath + "/testcreation")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/professor-questionstypepg.jsp");
            dispatcher.forward(request, response);

        }  else if (request.getRequestURI().equals(applicationContextPath + "/truefalse")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/truefalse-form.jsp");
            dispatcher.forward(request, response);

        } else if (request.getRequestURI().equals(applicationContextPath + "/singlechoice")) {
            RequestDispatcher dispatcher = request
                    .getRequestDispatcher("jsp/singlechoice-form.jsp");
            dispatcher.forward(request, response);

        } 
        
        
        String uri = request.getRequestURI();
        int lastIndex = uri.lastIndexOf("/");
        String action = uri.substring(lastIndex + 1);
        
        // execute an action
        String dispatchUrl = null;
        if ("truefalse".equals(action)) { 
            int qty = Integer.parseInt(request.getParameter("questionsqty"));
            
        } 

    }
}
