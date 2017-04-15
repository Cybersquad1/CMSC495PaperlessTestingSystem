package con.paperless.testing.controller;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import con.paperless.testing.Test;
import con.paperless.testing.TestQuestions;

/**
 * Servlet implementation class ExamController
 */
@WebServlet("/test")
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub	
		boolean finish=false;	
		HttpSession session=request.getSession();		
		try
		{
			if(session.getAttribute("currentExam")==null)
		  {  session=request.getSession(); 	
		     String selectedTest=(String)request.getSession().getAttribute("test"); 
		     System.out.println("Setting Exam "+selectedTest);
			 Test newTest = new Test(selectedTest);		  
			 session.setAttribute("currentExam",newTest);
			 SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss a");
				Date date = new Date();
				String started=dateFormat.format(date);
			  session.setAttribute("started",started);
		  }
		
		}catch(Exception e){e.printStackTrace();}
		
        Test test = (Test)request.getSession().getAttribute("currentExam");		
        
        if(test.currentQuestion==0){	
        	test.setQuestion(test.currentQuestion);
		    TestQuestions t=test.questionList.get(test.currentQuestion);	
			session.setAttribute("quest",t);
        }
			
        String action=request.getParameter("action");
		
		String radio=request.getParameter("answer");
		int selectedRadio=-1;
		test.selections.put(test.currentQuestion, selectedRadio);
		if("1".equals(radio))
		{
			selectedRadio=1;
			test.selections.put(test.currentQuestion, selectedRadio);
			System.out.println("You selected "+selectedRadio);
		}
		else if("2".equals(radio))
		{
			selectedRadio=2;
			test.selections.put(test.currentQuestion, selectedRadio);
			System.out.println("You selected "+selectedRadio);
		}
		else if("3".equals(radio))
		{
			selectedRadio=3;
			test.selections.put(test.currentQuestion, selectedRadio);
			System.out.println("You selected "+selectedRadio);
		}
		else if("4".equals(radio))
			{
				selectedRadio=4;
				test.selections.put(test.currentQuestion, selectedRadio);
				System.out.println("You selected "+selectedRadio);
			}
			
						
			if("Next".equals(action)){
				test.currentQuestion++;
				test.setQuestion(test.currentQuestion);
			    TestQuestions t = test.questionList.get(test.currentQuestion);	
			  	session.setAttribute("quest",t);
			}
			else if("Previous".equals(action))
			{   System.out.println("You clicked Previous Button");
			test.currentQuestion--;
			test.setQuestion(test.currentQuestion);
			    TestQuestions t = test.questionList.get(test.currentQuestion);	
				session.setAttribute("quest",t);
			}
			else if("Finish Exam".equals(action))
			{   finish=true;
				int result=test.calculateResult(test);				
				request.setAttribute("result",result);
				request.getSession().setAttribute("currentExam",null);
				request.getRequestDispatcher("/WEB-INF/jsp/result.jsp").forward(request,response);
				
			}
						
		if(finish!=true){
		request.getRequestDispatcher("/WEB-INF/jsp/exam.jsp").forward(request,response);
		}
		
	}

}
