package action;
import java.util.ArrayList;


import java.util.List;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import opendb.DBConnection;
import po.tongzhi;
import po.baoming;
import po.outsider;
import po.insider;
import po.record;


public class Actionbase {
	private static Connection con; 
	private static PreparedStatement stmt;
	private static ResultSet rs;
	
public static ArrayList<tongzhi> showAllInfo1(){
		
		ArrayList<tongzhi> tzinfo = new ArrayList<tongzhi>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from tongzhi ");
			rs=stmt.executeQuery();
			while(rs.next()){
				tongzhi tongzhi = new tongzhi();
				tongzhi.setDate(rs.getString("date"));
				tongzhi.setActor(rs.getString("actor"));
				tzinfo.add(tongzhi);
			}
		}catch(SQLException e){
			tzinfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return tzinfo;
	}
public static ArrayList<baoming> showAllInfo2(){
	
	ArrayList<baoming> bminfo = new ArrayList<baoming>();
	try{
		con=DBConnection.getConnection();
		stmt=con.prepareStatement("select * from baoming ");
		rs=stmt.executeQuery();
		while(rs.next()){
			baoming baoming = new baoming();
			baoming.setOne(rs.getString("one"));
			baoming.setTwo(rs.getString("two"));
			baoming.setThree(rs.getString("three"));
			baoming.setFour(rs.getString("four"));
			baoming.setFive(rs.getString("five"));
			baoming.setSix(rs.getString("six"));			
			baoming.setSeven(rs.getString("seven"));
			baoming.setEight(rs.getString("eight"));
			bminfo.add(baoming);
		}
	}catch(SQLException e){
		bminfo=null;
	}if(rs!=null){
		try{
			rs.close();
			}catch(SQLException e){}
	}
	DBConnection.Close(con, stmt);
	return bminfo;
}
	public static boolean addInfo(baoming baoming){	
	    boolean flag=false;
	    try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("insert into baoming "+"values(?,?,?,?,?,?,?,?)");
			stmt.setString(1,baoming.getOne());
			stmt.setString(2,baoming.getTwo());
			stmt.setString(3,baoming.getThree());
			stmt.setString(4,baoming.getFour());
			stmt.setString(5,baoming.getFive());
			stmt.setString(6,baoming.getSix());
			stmt.setString(7,baoming.getSeven());
			stmt.setString(8,baoming.getEight());
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
    }
	
	public static boolean addInfo1(record record){	
	    boolean flag=false;
	    try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("insert into record "+"values(?,?,?)");
			stmt.setString(1,record.getTeam());
			stmt.setString(2,record.getTime());
			stmt.setString(3,record.getNews());
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
    }
	
	public static outsider QueryOut(String name){
		outsider outsider = new outsider();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from outsider where name = '"+name+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				outsider.setName(rs.getString("name"));
				outsider.setWin(rs.getString("win"));
				outsider.setLose(rs.getString("lose"));
			}
		}catch(SQLException e){
			outsider=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return outsider;
	}

	//作者名查询显示书名表过程
	public static List QueryIn(String name){
		List list=new ArrayList();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from insider where name= '"+name+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				insider insider = new insider();
				insider.setName(rs.getString("name"));
				insider.setPname(rs.getString("pname"));
				insider.setDefen(rs.getString("defen"));
				insider.setQiangduan(rs.getString("qiangduan"));
				insider.setLanban(rs.getString("lanban"));
				list.add(insider);
			}
		}catch(SQLException e){
			list=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return list;
	}
/*	
	public static author QueryName(String name){
		author bookname = new author();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from author where name= '"+name+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				bookname.setAuthorid(rs.getString("authorid"));
				bookname.setName(rs.getString("name"));
				bookname.setAge(rs.getString("age"));
				bookname.setCountry(rs.getString("country"));
			}
		}catch(SQLException e){
			bookname=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return bookname;
	}
	//删除图书过程
/*	public static boolean deleteInfo(String title){
		boolean flag=false;
		try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("delete from book where title ='"+title+"'");
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
	}
*/
}