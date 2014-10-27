package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import po.baoming;
public class addactor extends HttpServlet {

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

		String url = "success.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		baoming baoming = new baoming();
		String one = new String(request.getParameter("one").getBytes("ISO-8859-1"),"UTF-8");
		String two = new String(request.getParameter("two").getBytes("ISO-8859-1"),"UTF-8");
		String three = new String(request.getParameter("three").getBytes("ISO-8859-1"),"UTF-8");
		String four = new String(request.getParameter("four").getBytes("ISO-8859-1"),"UTF-8");
		String five = new String(request.getParameter("five").getBytes("ISO-8859-1"),"UTF-8");
		String six = new String(request.getParameter("six").getBytes("ISO-8859-1"),"UTF-8");
		String seven = new String(request.getParameter("seven").getBytes("ISO-8859-1"),"UTF-8");
		String eight = new String(request.getParameter("eight").getBytes("ISO-8859-1"),"UTF-8");
		baoming.setOne(one);
		baoming.setTwo(two);
		baoming.setThree(three);
		baoming.setFour(four);
		baoming.setFive(five);
		baoming.setSix(six);
		baoming.setSeven(seven);
		baoming.setEight(eight);
		if(Actionbase.addInfo(baoming)){

			request.setAttribute("message", "队伍名"+baoming.getOne()+"的队伍报名成功");
		}
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}