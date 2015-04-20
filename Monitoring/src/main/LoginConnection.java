/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import com.mysql.jdbc.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author vyom
 */
public class LoginConnection {
    Connection con=null;
    String pwd=null;
    String email=null;
    
    public  LoginConnection(HttpServletRequest request) throws SQLException, ClassNotFoundException
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/user";
        String un = "root";
        String pw = "";
        con = (Connection) DriverManager.getConnection(url, un, pw);
        email=request.getParameter("email");
        pwd = AuthCode.getHashCode(request.getParameter("pwd"));
    }
            
    public boolean loginTest()  throws Exception
    {
 
        String sql="select * from user_table where email='"+email+"' ";
        Statement stmt =con.createStatement();
        ResultSet rs=stmt.executeQuery(sql);
       if( rs.next())
       {
       String r_pwd = rs.getString(3);
        int status = rs.getInt(4);
       System.out.println("111111111111111111111111111111");
        if(pwd.equals(r_pwd) && status==1)
        {
            return true;
        }
       else
        {
         return false;
    }
       }
       System.out.println("nhi chalega");
        return false;
       
    
}
}
