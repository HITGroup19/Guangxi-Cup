package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import po.admin;
public class Admin extends HttpServlet {

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

		String url = "error.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		admin admin0 = new admin();
		String username= new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
		String password = new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
		admin0.setUsername(username);
		admin0.setPassword(password);
	  	ArrayList<admin> admininfo = Actionbase.showAlladmin();
	  	if(admininfo!=null&&admininfo.size()>0){
	  	   	for(int i=0;i<admininfo.size();i++){
	  	   		admin admin=(admin)admininfo.get(i);
	  	   		String Username = admin.getUsername();
	  	   		String Password = admin.getPassword();
	  	   		if(username != null&&password != null)
	  	   		{
	  	   			if(username.equals(Username) == true&&password.equals(Password)==true)
	   					{
	   					url = "success4.jsp";
	   					}
	  	   		
	  	   		}
	  	   		else{
	  	   			url = "error1.jsp";
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