package con.paperless.testing.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import con.paperless.testing.DBAConnectionFactory;
/**
 * Servlet implementation class LoginController
 */
@WebServlet("/checkLogin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userID=request.getParameter("userID");
		String password=request.getParameter("password");				
		Connection con=DBAConnectionFactory.createConnection();		
		ResultSet set=null;
		int i=0;
		try
		{
		 Statement st=con.createStatement();
		 String sql = "Select * from  user where userID='"+userID+"' and password='"+password+"' ";
		 		System.out.println(sql);
		 set=st.executeQuery(sql);
		 while(set.next())
		 {
			 i=1;
		 }
		 if(i!=0)
		 {   HttpSession session=request.getSession();
		     session.setAttribute("user",userID);
			 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsp/home.jsp");
			 rd.forward(request, response);
			 
		 }
		 else
		 {   request.setAttribute("errorMessage","Invalid userID or password");
			 RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/jsp/home.jsp");
			 rd.forward(request, response);
		 }
		}catch(SQLException sqe){System.out.println("Error : While Fetching records from database");}
		try
		{
		 con.close();	
		}catch(SQLException se){System.out.println("Error : While Closing Connection");}
	}
		
		
	

}
