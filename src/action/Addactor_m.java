package action;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import po.baoming_m;
public class Addactor_m extends HttpServlet {

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
		baoming_m baoming_m = new baoming_m();
		String one = new String(request.getParameter("one").getBytes("ISO-8859-1"),"UTF-8");
		String two = new String(request.getParameter("two").getBytes("ISO-8859-1"),"UTF-8");
		String three = "00";
		String four = new String(request.getParameter("four").getBytes("ISO-8859-1"),"UTF-8");
		String five = new String(request.getParameter("five").getBytes("ISO-8859-1"),"UTF-8");
		String six = new String(request.getParameter("six").getBytes("ISO-8859-1"),"UTF-8");
		String seven = new String(request.getParameter("seven").getBytes("ISO-8859-1"),"UTF-8");
		String eight = new String(request.getParameter("eight").getBytes("ISO-8859-1"),"UTF-8");
		String nine = new String(request.getParameter("nine").getBytes("ISO-8859-1"),"UTF-8");
		String ten = new String(request.getParameter("ten").getBytes("ISO-8859-1"),"UTF-8");
		baoming_m.setOne(one);
		baoming_m.setTwo(two);
		baoming_m.setThree(three);
		baoming_m.setFour(four);
		baoming_m.setFive(five);
		baoming_m.setSix(six);
		baoming_m.setSeven(seven);
		baoming_m.setEight(eight);
		baoming_m.setNine(nine);
		baoming_m.setTen(ten);
		System.out.print(one+two+three+four+five+six+seven+eight+nine+ten);
		if(Actionbase.addInfo_m(baoming_m)){
			request.setAttribute("message", "队伍名"+baoming_m.getOne()+"的队伍报名成功");
			System.out.print(one+two+three+four+five+six+seven+eight+nine+ten);
		}
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}