package main;

import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public class Monitor {
	Statement createStatement=null;
	static Connection con = null;

	public Monitor(String userId,String monId){
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
	public void addMonitor(){
		try {
			String sql="INSERT INTO compte (userId, url, timeSpanMS, monType,keyWord) "
                            + " VALUES(?,?,?,?,?)";
			Statement createStatement = con.prepareStatement(sql);
			createStatement.execute(sql, Statement.RETURN_GENERATED_KEYS);
			
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
