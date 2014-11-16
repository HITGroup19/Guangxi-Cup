package action;

import java.io.IOException;
import java.sql.SQLException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import po.number;
public class Number_m extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "error2.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		HttpSession session=request.getSession(true);
		number number0 = new number();
		String number= new String(request.getParameter("number").getBytes("ISO-8859-1"),"UTF-8");
		session.setAttribute("hao1",number);
		number0.setNumber(number);
		ArrayList<number> numberinfo = Actionbase.showAllnumber();
		if(numberinfo!=null&&numberinfo.size()>0){
	  	   	for(int i=0;i<numberinfo.size();i++){
	  	   		number number1 =(number)numberinfo.get(i);
	  	   		String Number = number1.getNumber();
	  	   		if(number!= null)
	  	   			{
	  	   			if(number.equals(Number) == true)
	  	   				{
	   				url = "addactor_m.jsp";
	  	   				}	
	  	   			}
	  	   			else{
	  	   			url = "error2.jsp";
	  	   			}
	  	   		}
			}
		
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}