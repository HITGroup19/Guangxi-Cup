package action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

		String url = "success.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		record record = new record();
		String team= new String(request.getParameter("team").getBytes("ISO-8859-1"),"UTF-8");
		String time = new String(request.getParameter("time").getBytes("ISO-8859-1"),"UTF-8");
		String news = new String(request.getParameter("news").getBytes("ISO-8859-1"),"UTF-8");
		record.setTeam(team);
		record.setTime(time);
		record.setNews(news);
		if(Actionbase.addInfo1(record)){

			request.setAttribute("message", "在时间为"+record.getTime()+"的记录上传成功");
		}
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}