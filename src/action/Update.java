package action;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import opendb.DBConnection;
import po.baoming;

public class Update extends HttpServlet {

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
		throws  ServletException, IOException
	{      
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		Connection conn=null;      
		Statement stmt=null;          
		String one = new String(request.getParameter("one").getBytes("ISO-8859-1"),"UTF-8");
		String two = new String(request.getParameter("two").getBytes("ISO-8859-1"),"UTF-8");
		String three = new String(request.getParameter("three").getBytes("ISO-8859-1"),"UTF-8");
		String four = new String(request.getParameter("four").getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(one);
		System.out.println(two);
		System.out.println(three);
		System.out.println(four);
		try {
			conn=DBConnection.getConnection(); 
			stmt=conn.createStatement();
			System.out.print("---");
			stmt.execute("update baoming set one = '"+one+"',two = '"+two+"',four = '"+four+"' where three = '"+three+"'");
			System.out.print("update baoming set one = '"+one+"',two = '"+two+"',four = '"+four+"' where three = '"+three+"'");
			//RequestDispatcher rd=request.getRequestDispatcher(url);
			//rd.forward(request, response);
			request.getRequestDispatcher("success1.jsp").forward(request, response); 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print("+++");
		}
		}      
	public void init() throws ServletException {
		// Put your code here
	}
}