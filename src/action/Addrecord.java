package action;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import po.record;
public class Addrecord extends HttpServlet {

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
		record record = new record();
		HttpSession session=request.getSession(true);
		String one= new String(request.getParameter("one").getBytes("ISO-8859-1"),"UTF-8");
		session.setAttribute("ff0",one);
		String two = new String(request.getParameter("two").getBytes("ISO-8859-1"),"UTF-8");
		session.setAttribute("ff1",two);
		String three = new String(request.getParameter("three").getBytes("ISO-8859-1"),"UTF-8"); 
		session.setAttribute("ff2",three);
		String four = "0";
		String five = "0";
		String six = "0";
		String seven = "0";
		String eight = "正在进行";
		record.setOne(one);
		record.setTwo(two);
		record.setThree(three);
		record.setFour(four);
		record.setFive(five);
		record.setSix(six);
		record.setSeven(seven);
		record.setEight(eight);
		if(Actionbase.addInfo1(record)){
				System.out.print("11");
			//request.setAttribute("message", "在时间为"+record.getTime()+"的记录上传成功");
		}
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}