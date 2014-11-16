package action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Dactor_w extends HttpServlet {

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

		String url = "success2.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		String three= new String(request.getParameter("three").getBytes("ISO-8859-1"),"UTF-8");
		if(Actionbase.deleteInfo_w(three)){
			System.out.print("--");
			request.setAttribute("message","����Ϊ"+three+"ͼ����Ϣɾ��ɹ���");	
		}
		else{
			request.setAttribute("message", "ɾ��ͼ����Ϣ���?");
			url = "error5.jsp";
			System.out.print("++");
		}
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
		return;
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}