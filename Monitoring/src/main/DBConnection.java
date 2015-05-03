package main;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

public class DBConnection {
	static Connection con = null;
	static String un = "root";
	static String pw = "";
	static String url = "jdbc:mysql://localhost:3306/user";

	public DBConnection()  {
		getConnect(url, un, pw);

	}
	public DBConnection(String hostUrl,String userName,String password)  {
		getConnect(hostUrl, userName, password);

	}

	static void getConnect(String hostUrl,String userName,String password) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection(hostUrl, userName, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection(){
		return con;
		
	}
	public static void close(ResultSet rs,Connection con,PreparedStatement pstmt,Statement st){
            try{
                if(rs != null) rs.close();
                if(pstmt != null) pstmt.close();
                if(con != null) con.close();
                if(st != null) st.close();
            } catch(Exception ex){}
        }


}
