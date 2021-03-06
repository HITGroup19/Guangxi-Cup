package action;

import java.io.IOException;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import po.outsider;

public class Showoutsider extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	private static final long serialVersionUID = 1L;
	/*public QueryBook() {
		super();
	}
		
	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url="outsider.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		outsider outsider = new outsider();
		String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
		String rank = new String(request.getParameter("rank").getBytes("ISO-8859-1"),"UTF-8");
		if(name!=null){
			outsider = Actionbase.QueryOut(name);
			if(outsider.getName()!=null){
				request.setAttribute("name", outsider.getName());
				request.setAttribute("win", outsider.getWin());
				request.setAttribute("lose", outsider.getLose());
				request.setAttribute("lose", outsider.getRank());
			}
		}
		
	    RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
		return;
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
