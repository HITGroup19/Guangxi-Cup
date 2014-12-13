package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import po.number;

public class Dactor_m extends HttpServlet {

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

		String url = "success2.jsp";
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		String eight= new String(request.getParameter("eight").getBytes("ISO-8859-1"),"UTF-8");
		String password= new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
		ArrayList<number> numberinfo = Actionbase.showAllnumber();
	  	if(numberinfo!=null&&numberinfo.size()>0){
	  	   	for(int i=0;i<numberinfo.size();i++){
	  	   		number number1 =(number)numberinfo.get(i);
	  	   		String Number = number1.getNumber();
	  	   		String Password = number1.getPassword();
	  	   		if(eight.equals(Number) == true&&password.equals(Password)==true)
	  	   		{	
	  	   			if(Actionbase.deleteInfo_m(eight)){
	  	   					System.out.print("--");
	  	   					request.setAttribute("message","����Ϊ"+eight+"ͼ����Ϣɾ��ɹ���");	
	  	   					break;
	  	   				}
	  	   				else{
	  	   					request.setAttribute("message", "ɾ��ͼ����Ϣ���?");
	  	   					System.out.print("++");
	  	   				}
	  	   		}
	  	   		else{
	  	   			url = "error4.jsp";
	  	   		}
	  	   	}
	  	}
		RequestDispatcher rd=request.getRequestDispatcher(url);
		rd.forward(request, response);
		return;
	}
	
	public void init() throws ServletException {
		// Put your code here
	}
}