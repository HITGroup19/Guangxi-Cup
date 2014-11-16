package action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Drecord extends HttpServlet {

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

		String url = "record1.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		String one= new String(request.getParameter("one").getBytes("ISO-8859-1"),"UTF-8");
		if(Actionbase.deleteRecord(one)){
			System.out.print("--");
			request.setAttribute("message","����Ϊ"+one+"ͼ����Ϣɾ��ɹ���");	
		}
		else{
			request.setAttribute("message", "ɾ��ͼ����Ϣ���?");
			url = "error4.jsp";
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