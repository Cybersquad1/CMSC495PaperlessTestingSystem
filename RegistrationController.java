package con.paperless.testing.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import con.paperless.testing.DBAConnectionFactory;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/checkRegister")
//public class RegistrationController extends HttpServlet 
public class RegistrationController extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String userID=request.getParameter("userID");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userType = request.getParameter("userType");
		
		Connection con = DBAConnectionFactory.createConnection();
		
		try
		{
		 Statement st = con.createStatement();
		 String sql = "INSERT INTO user values ('"+userID+"','"+email+"','"+password+"','"+firstName+"','"+lastName+"','"+userType+"')";
		 		System.out.println(sql);
		 st.executeUpdate(sql);
		}catch(SQLException sqe){
			//System.out.println("Error : While Inserting record in database");}
			RequestDispatcher dispatcherFailure=request.getRequestDispatcher("/WEB-INF/jsp/regFailure.jsp");
			dispatcherFailure.forward(request, response);
		}
		try
		{
		 con.close();	
		}catch(SQLException se){System.out.println("Error : While Closing Connection");}
        request.setAttribute("newUser",userID);
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/jsp/regSuccess.jsp");
		dispatcher.forward(request,  response);		
	}
}

