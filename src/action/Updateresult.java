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
import po.result;

public class Updateresult extends HttpServlet {

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
		String one = new String(request.getParameter("rone").getBytes("ISO-8859-1"),"UTF-8");
		String test = new String(request.getParameter("rtest").getBytes("ISO-8859-1"),"UTF-8");
		String r_test = "1";
		System.out.println(one);
		System.out.println(test);
		System.out.println(r_test);
		try {
			conn=DBConnection.getConnection(); 
			stmt=conn.createStatement();
			if(test.equals(r_test)) {
				stmt.execute("update result set two = two +1 where one = '"+one+"'");
			}
			else {
				System.out.print("---");
				stmt.execute("update result set three = three +1 where one = '"+one+"'");
			}
			//System.out.print("update record set one = '"+one+"',two = '"+two+"',three = '"+three+"',four = '"+four+"',five = '"+five+"' where four = '"+one+"'");
			//RequestDispatcher rd=request.getRequestDispatcher(url);
			//rd.forward(request, response);
			request.getRequestDispatcher("record1.jsp").forward(request, response); 
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