package con.paperless.testing;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBAConnectionFactory {
	//private static String dbURL="jdbc:mysql://localhost/test";
	private static String dbURL ="jdbc:mysql://108.48.78.174:3306/holykemh_paperlessDB ";
	private static String dbUser="holykemh";
	private static String dbPassword="AkFso5-5N2Q4r";
	
	public static Connection createConnection()
	{
		 Connection con=null;
		try{
			try {
				   Class.forName("com.mysql.jdbc.Driver");
				}
				catch(ClassNotFoundException ex) {
				   System.out.println("Error: unable to load driver class!");
				   System.exit(1);
				}			
		     con = DriverManager.getConnection(dbURL,dbUser,dbPassword);
		   }
		  catch(SQLException sqe){ 
			  System.out.println("Error: While Creating connection to database");
		      sqe.printStackTrace();
		  }
		return con;
	}
}
