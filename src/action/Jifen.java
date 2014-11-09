package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import po.jifen;
public class Jifen extends HttpServlet {

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
		jifen jifen0 = new jifen();
		String username= new String(request.getParameter("username").getBytes("ISO-8859-1"),"UTF-8");
		String password = new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
		jifen0.setUsername(username);
		jifen0.setPassword(password);
	  	ArrayList<jifen> jifeninfo = Actionbase.showAlljifen();
	  	if(jifeninfo!=null&&jifeninfo.size()>0){
	  	   	for(int i=0;i<jifeninfo.size();i++){
	  	   		jifen jifen=(jifen)jifeninfo.get(i);
	  	   		String Username = jifen.getUsername();
	  	   		String Password = jifen.getPassword();
	  	   		if(username != null&&password != null)
	  	   		{
	  	   			if(username.equals(Username) == true&&password.equals(Password)==true)
	   					{
	   					url = "success3.jsp";
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