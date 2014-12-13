package action;
import java.util.ArrayList;







import java.util.List;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.io.*;

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
				record.setSix(rs.getString("six"));
				record.setSeven(rs.getString("seven"));
				record.setEight(rs.getString("eight"));
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
	public static ArrayList<record_y> showAllInfo_y(){	
	ArrayList<record_y> record_yinfo = new ArrayList<record_y>();
	try{
		con=DBConnection.getConnection();
		stmt=con.prepareStatement("select * from record_y order by one asc ");
		rs=stmt.executeQuery();
		while(rs.next()){
			record_y record_y = new record_y();
			record_y.setOne(rs.getString("one"));
			record_y.setTwo(rs.getString("two"));
			record_y.setThree(rs.getString("three"));
			record_yinfo.add(record_y);
		}
	}catch(SQLException e){
		record_yinfo=null;
	}if(rs!=null){
		try{
			rs.close();
			}catch(SQLException e){}
	}
	DBConnection.Close(con, stmt);
	return record_yinfo;
}
	
	public static ArrayList<result> showAllInfo1(){
		
		ArrayList<result> resultinfo = new ArrayList<result>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from result order by two desc");//由大到下； asc 由小到大 
			rs=stmt.executeQuery();
			while(rs.next()){
				result result = new result();
				result.setOne(rs.getString("one"));
				result.setTwo(rs.getString("two"));
				result.setThree(rs.getString("three"));
				resultinfo.add(result);
			}
		}catch(SQLException e){
			resultinfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return resultinfo;
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
				aplan.setFive(rs.getString("five"));
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
	public static ArrayList<bplan> showAllInfob(){
		
		ArrayList<bplan> bplaninfo = new ArrayList<bplan>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from bplan ");
			rs=stmt.executeQuery();
			while(rs.next()){
				bplan bplan = new bplan();
				bplan.setOne(rs.getString("one"));
				bplan.setTwo(rs.getString("two"));
				bplan.setThree(rs.getString("three"));
				bplan.setFour(rs.getString("four"));
				bplaninfo.add(bplan);
			}
		}catch(SQLException e){
			bplaninfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return bplaninfo;
	}
	public static ArrayList<cplan> showAllInfoc(){
		
		ArrayList<cplan> cplaninfo = new ArrayList<cplan>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from bplan ");
			rs=stmt.executeQuery();
			while(rs.next()){
				cplan cplan = new cplan();
				cplan.setOne(rs.getString("one"));
				cplan.setTwo(rs.getString("two"));
				cplan.setThree(rs.getString("three"));
				cplan.setFour(rs.getString("four"));
				cplaninfo.add(cplan);
			}
		}catch(SQLException e){
			cplaninfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return cplaninfo;
	}
	public static ArrayList<dplan> showAllInfod(){
		
		ArrayList<dplan> dplaninfo = new ArrayList<dplan>();
		try{
			con=DBConnection.getConnection();
			stmt=con.prepareStatement("select * from dplan ");
			rs=stmt.executeQuery();
			while(rs.next()){
				dplan dplan = new dplan();
				dplan.setOne(rs.getString("one"));
				dplan.setTwo(rs.getString("two"));
				dplan.setThree(rs.getString("three"));
				dplan.setFour(rs.getString("four"));
				dplaninfo.add(dplan);
			}
		}catch(SQLException e){
			dplaninfo=null;
		}if(rs!=null){
			try{
    			rs.close();
    			}catch(SQLException e){}
		}
		DBConnection.Close(con, stmt);
		return dplaninfo;
	}
public static ArrayList<baoming> showAllInfo2(){
	
	ArrayList<baoming> bminfo = new ArrayList<baoming>();
	try{
		con=DBConnection.getConnection();
		stmt=con.prepareStatement("select * from baoming order by four asc");
		rs=stmt.executeQuery();
		while(rs.next()){
			baoming baoming = new baoming();
			baoming.setOne(rs.getString("one"));
			baoming.setTwo(rs.getString("two"));
			baoming.setThree(rs.getString("three"));
			baoming.setFour(rs.getString("four"));
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

public static ArrayList<baoming_m> showAllInfo2_m(){
	
	ArrayList<baoming_m> bm_minfo = new ArrayList<baoming_m>();
	try{
		con=DBConnection.getConnection();
		stmt=con.prepareStatement("select * from baoming_m order by one asc");
		rs=stmt.executeQuery();
		while(rs.next()){
			baoming_m baoming_m = new baoming_m();
			baoming_m.setOne(rs.getString("one"));
			baoming_m.setTwo(rs.getString("two"));
			baoming_m.setThree(rs.getString("three"));
			baoming_m.setFour(rs.getString("four"));
			baoming_m.setFive(rs.getString("five"));
			baoming_m.setSix(rs.getString("six"));
			baoming_m.setSeven(rs.getString("seven"));
			baoming_m.setEight(rs.getString("eight"));
			baoming_m.setNine(rs.getString("nine"));
			baoming_m.setTen(rs.getString("ten"));
			bm_minfo.add(baoming_m);
		}
	}catch(SQLException e){
		bm_minfo=null;
	}if(rs!=null){
		try{
			rs.close();
			}catch(SQLException e){}
	}
	DBConnection.Close(con, stmt);
	return bm_minfo;
}



public static boolean addInfo(baoming baoming){	
	    boolean flag=false;
	    try{
	    	con=DBConnection.getConnection();
			stmt=con.prepareStatement("insert into baoming "+"values(?,?,?,?)");
			stmt.setString(1,baoming.getOne());
			stmt.setString(2,baoming.getTwo());
			stmt.setString(3,baoming.getThree());
			stmt.setString(4,baoming.getFour());
            if(stmt.executeUpdate()==1)flag=true;
		}catch(SQLException e){
			System.out.println(e.getMessage());
		}
		DBConnection.Close(con, stmt);
		return flag;
    }



public static boolean addInfo_m(baoming_m baoming_m){	
    boolean flag=false;
    try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("insert into baoming_m "+"values(?,?,?,?,?,?,?,?,?,?)");
		stmt.setString(1,baoming_m.getOne());
		stmt.setString(2,baoming_m.getTwo());
		stmt.setString(3,baoming_m.getThree());
		stmt.setString(4,baoming_m.getFour());
		stmt.setString(5,baoming_m.getFive());
		stmt.setString(6,baoming_m.getSix());
		stmt.setString(7,baoming_m.getSeven());
		stmt.setString(8,baoming_m.getEight());
		stmt.setString(9,baoming_m.getNine());
		stmt.setString(10,baoming_m.getTen());
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
		stmt=con.prepareStatement("insert into record "+"values(?,?,?,?,?,?,?,?)");
		stmt.setString(1,record.getOne());
		stmt.setString(2,record.getTwo());
		stmt.setString(3,record.getThree());
		stmt.setString(4,record.getFour());
		stmt.setString(5,record.getFive());
		stmt.setString(6,record.getSix());
		stmt.setString(7,record.getSeven());
		stmt.setString(8,record.getEight());
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}	

public static boolean addInfo1_y(record_y record_y){	
    boolean flag=false;
    try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("insert into record_y "+"values(?,?,?)");
		stmt.setString(1,record_y.getOne());
		stmt.setString(2,record_y.getTwo());
		stmt.setString(3,record_y.getThree());
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
		stmt=con.prepareStatement("insert into aplan "+"values(?,?,?,?,?)");
		stmt.setString(1,aplan.getOne());
		stmt.setString(2,aplan.getTwo());
		stmt.setString(3,aplan.getThree());
		stmt.setString(4,aplan.getFour());
		stmt.setString(5,aplan.getFive());
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
/*public static boolean addbpaln(bplan bplan){	
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

*/



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
			number.setPassword(rs.getString("password"));
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
public static boolean deleteInfo(String eight){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from baoming where eight ='"+eight+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}

public static boolean deleteInfo_m(String eight){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from baoming_m where eight ='"+eight+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}

public static boolean deleteInfo_w(String three){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from baoming_w where three ='"+three+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}



public static boolean deleteRecord(String one){
	boolean flag=false;
	try{
    	con=DBConnection.getConnection();
		stmt=con.prepareStatement("delete from record where one ='"+one+"'");
        if(stmt.executeUpdate()==1)flag=true;
	}catch(SQLException e){
		System.out.println(e.getMessage());
	}
	DBConnection.Close(con, stmt);
	return flag;
}
public static tongzhi QueryTZ(String one){
	tongzhi tongzhi = new tongzhi();
    ResultSet rs=null;
    try{
		con=DBConnection.getConnection();
		stmt=con.prepareStatement("select * from book where one= '"+one+"'");
		rs=stmt.executeQuery();
		while(rs.next()){
			tongzhi.setOne(rs.getString("one"));
			tongzhi.setTwo(rs.getString("two"));
		}
	}catch(SQLException e){
		tongzhi=null;
	}if(rs!=null){
		try{
			rs.close();
			}catch(SQLException e){}
	}
	DBConnection.Close(con, stmt);
	return tongzhi;
}




public boolean employeeAdd(String employeeName,String age,String pic){
	  PreparedStatement pstmt = null;
	  try{
		   File file = new File(pic);
		   FileInputStream fis = new FileInputStream(file);
	   if(fis == null)
		   System.out.print("-----");
	   else
		  System.out.print("+++");
	   con=DBConnection.getConnection();
	   String strSQL="INSERT INTO photo VALUES(?,?,?)";
	   pstmt=con.prepareStatement(strSQL);
	   pstmt.setString(1, employeeName);
	   pstmt.setString(2, age);
	   pstmt.setBinaryStream(3, fis,file.length());
	   if(pstmt.executeUpdate()>0)
	    return true;
	   else
	    return false;
	  }catch(SQLException ex){
	   ex.printStackTrace();
	   return false;
	  }catch(IOException ex){
	   ex.printStackTrace();
	   return false;
	  }finally{
	   try{
	    pstmt.close();
	    con.close();
	   }catch(Exception ex){
	    
	   }
	  }
	 }
}