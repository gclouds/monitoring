package main;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public class Monitor {
	Statement createStatement=null;
	static Connection con = null;
	String userId=null;
	String monId=null;

	public Monitor(String userId,String monId){
		this.userId=userId;
		this.monId=monId;
		DBConnection db = new DBConnection();
		con=db.getConnection();
	}
	public Monitor(String userId){
		this.userId=userId;
		DBConnection db = new DBConnection();
		con=db.getConnection();
	}
	
	
	public void addRecord(){
		try {
			Statement createStatement = con.createStatement();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void addMonitor(String userId, String url,String fname, String monType, String keyword, String timeSpanMS){
		if(keyword==null){
			keyword="NA";
		}
		try {
			String sql="INSERT INTO compte (userId, url,fname, monType,keyWord, timeSpanMS) "
                            + " VALUES(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,userId);
			ps.setString(2,url);
			ps.setString(3,fname);
			ps.setString(4,monType);
			ps.setString(5,keyword);
			ps.setString(6,timeSpanMS);
			ps.execute(sql, Statement.RETURN_GENERATED_KEYS);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			DBConnection.close(null, null, null, null);
		}
	}
	public String getUpTime(){
		return "4324";
		
	}
	public String getDownTime(){
		return "2687";
		
	}
	public String getLowResTime(){
		return "20";
		
	}

}
