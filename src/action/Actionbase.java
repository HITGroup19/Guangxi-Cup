package action;
import java.util.ArrayList;





import java.util.List;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import opendb.DBConnection;
import po.*;


public class Actionbase {
	private static Connection con; 
	private static PreparedStatement stmt;
	private static ResultSet rs;
	
	
	public static ArrayList<record> showAllInfo(){
		
		ArrayList<record> recordinfo = new ArrayList<record>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from record ");
			rs=stmt.executeQuery();
			while(rs.next()){
				record record = new record();
				record.setOne(rs.getString("one"));
				record.setTwo(rs.getString("two"));
				record.setThree(rs.getString("three"));
				record.setFour(rs.getString("four"));
				record.setFive(rs.getString("five"));
				recordinfo.add(record);
			}
		}catch(SQLException e){
			recordinfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return recordinfo;
	}
	public static ArrayList<aplan> showAllInfoa(){
		
		ArrayList<aplan> aplaninfo = new ArrayList<aplan>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from aplan ");
			rs=stmt.executeQuery();
			while(rs.next()){
				aplan aplan = new aplan();
				aplan.setOne(rs.getString("one"));
				aplan.setTwo(rs.getString("two"));
				aplan.setThree(rs.getString("three"));
				aplan.setFour(rs.getString("four"));
				aplaninfo.add(aplan);
			}
		}catch(SQLException e){
			aplaninfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return aplaninfo;
	}
public static ArrayList<baoming> showAllInfo2(String three){
	
	ArrayList<baoming> bminfo = new ArrayList<baoming>();
	try{
		con=DBConnection.getConnection();
		stmt=con.prepareStatement("select * from baoming where three = '"+three+"'");
		rs=stmt.executeQuery();
		while(rs.next()){
			baoming baoming = new baoming();
			baoming.setOne(rs.getString("one"));
			baoming.setTwo(rs.getString("two"));
			baoming.setThree(rs.getString("three"));
			baoming.setFour(rs.getString("four"));
			baoming.setFive(rs.getString("five"));
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
			stmt=con.prepareStatement("insert into baoming "+"values(?,?,?,?,?)");
			stmt.setString(1,baoming.getOne());
			stmt.setString(2,baoming.getTwo());
			stmt.setString(3,baoming.getThree());
			stmt.setString(4,baoming.getFour());
			stmt.setString(5,baoming.getFive());
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
		stmt=con.prepareStatement("insert into record "+"values(?,?,?,?,?)");
		stmt.setString(1,record.getOne());
		stmt.setString(2,record.getTwo());
		stmt.setString(3,record.getThree());
		stmt.setString(4,record.getFour());
		stmt.setString(5,record.getFive());
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}	
public static boolean addaplan(aplan aplan){	
    boolean flag=false;
    try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("insert into aplan "+"values(?,?,?,?)");
		stmt.setString(1,aplan.getOne());
		stmt.setString(2,aplan.getTwo());
		stmt.setString(3,aplan.getThree());
		stmt.setString(4,aplan.getFour());
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
public static boolean deleteaplan(String one){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from aplan where one ='"+one+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
public static boolean addbpaln(bplan bplan){	
    boolean flag=false;
    try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("insert into bplan "+"values(?,?,?,?)");
		stmt.setString(1,bplan.getOne());
		stmt.setString(2,bplan.getTwo());
		stmt.setString(3,bplan.getThree());
		stmt.setString(4,bplan.getFour());
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
public static boolean deletebplan(String one){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from bplan where one ='"+one+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
public static boolean addcplan(cplan cplan){	
    boolean flag=false;
    try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("insert into cplan "+"values(?,?,?,?)");
		stmt.setString(1,cplan.getOne());
		stmt.setString(2,cplan.getTwo());
		stmt.setString(3,cplan.getThree());
		stmt.setString(4,cplan.getFour());
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
public static boolean deletecplan(String one){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from cplan where one ='"+one+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
public static boolean adddplan(dplan dplan){	
    boolean flag=false;
    try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("insert into dplan "+"values(?,?,?,?)");
		stmt.setString(1,dplan.getOne());
		stmt.setString(2,dplan.getTwo());
		stmt.setString(3,dplan.getThree());
		stmt.setString(4,dplan.getFour());
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
public static boolean deletedplan(String one){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from dplan where one ='"+one+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}	
	public static baoming Query0(String three){
		baoming baoming = new baoming();
	    ResultSet rs=null;
	    try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from baoming where three = '"+three+"'");
			rs=stmt.executeQuery();
			while(rs.next()){
				baoming.setOne(rs.getString("one"));
				baoming.setTwo(rs.getString("two"));
				baoming.setThree(rs.getString("three"));
				baoming.setFour(rs.getString("four"));
				baoming.setFive(rs.getString("five"));
			}
		}catch(SQLException e){
			baoming=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return baoming;
	}

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
*/
public static ArrayList<admin> showAlladmin(){
		
		ArrayList<admin> admininfo = new ArrayList<admin>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from admin ");
			rs=stmt.executeQuery();
			while(rs.next()){
				admin admin = new admin();
				admin.setUsername(rs.getString("username"));
				admin.setPassword(rs.getString("password"));
				admininfo.add(admin);
			}
		}catch(SQLException e){
			admininfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return admininfo;
	}
public static ArrayList<jifen> showAlljifen(){
	
	ArrayList<jifen> jifeninfo = new ArrayList<jifen>();
	try{
		con=DBConnection.getConnection();
		stmt=con.prepareStatement("select * from jifenyuan ");
		rs=stmt.executeQuery();
		while(rs.next()){
			jifen jifen = new jifen();
			jifen.setUsername(rs.getString("username"));
			jifen.setPassword(rs.getString("password"));
			jifeninfo.add(jifen);
		}
	}catch(SQLException e){
		jifeninfo=null;
	}if(rs!=null){
		try{
			rs.close();
			}catch(SQLException e){}
	}
	DBConnection.Close(con, stmt);
	return jifeninfo;
}
public static ArrayList<number> showAllnumber(){
	
	ArrayList<number> numberinfo = new ArrayList<number>();
	try{
		con=DBConnection.getConnection();
		stmt=con.prepareStatement("select * from number ");
		rs=stmt.executeQuery();
		while(rs.next()){
			number number = new number();
			number.setNumber(rs.getString("number"));
			numberinfo.add(number);
		}
	}catch(SQLException e){
		numberinfo=null;
	}if(rs!=null){
		try{
			rs.close();
			}catch(SQLException e){}
	}
	DBConnection.Close(con, stmt);
	return numberinfo;
	}
public static boolean deleteInfo(String three){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from baoming where three ='"+three+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
/*public static boolean updateInfo(String three){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("update baoming set where three ='"+three+"' "+"values(?,?,?,?,?)" );
		baoming baoming= new baoming;
		stmt.setString(1,baoming.getOne());
		stmt.setString(2,baoming.getTwo());
		stmt.setString(3,baoming.getThree());
		stmt.setString(4,baoming.getFour());
		stmt.setString(5,baoming.getFive());
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}*/
}