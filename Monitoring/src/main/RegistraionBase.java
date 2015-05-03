package main;

import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistraionBase {

 Connection con = null;
    UserBean user = null;

    public RegistraionBase(UserBean user) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/user";
        String un = "root";
        String pw = "";
        con = DriverManager.getConnection(url, un, pw);
        this.user = user;
    }

    public void createUser() throws Exception {
        String query = "insert into user_table(name,email,pwd,status) values(?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(query);

        pstmt.setString(1, user.name);
        System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
        pstmt.setString(2, user.email);
        System.out.println("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
        pstmt.setString(3, user.pwd);
        pstmt.setInt(4, user.status);
        try {
            int i = pstmt.executeUpdate();
        } 
        catch (Exception e) {
            System.out.println("########################exception###############################");
        }
        pstmt = null;
        String verificationCode = AuthCode.generateCode();
        System.out.print("code is" + verificationCode);
        query = "insert into user_auth(email,authCode) values(?,?)";
        pstmt = con.prepareStatement(query);
        pstmt.setString(1, user.email);
        pstmt.setString(2, verificationCode);

        try {
            pstmt.executeUpdate();
        } 
        catch (Exception e) {
            System.out.println("########################exception 2###############################");
        }

        sendMail(verificationCode);

    }

    void sendMail(String verificationCode) throws Exception {
        String subject = "Please activate your <application name> pr0file";
        String body = "Dear "
                + user.name
                + "<br/>Please complete your Profile creation request. "
                + "Activate your account and confirm that this account belongs to you by clicking this link:<br/>"
                + "To verify <a href=\"http://localhost:8080/Web_anlysis/Verification.jsp?Email="
                + user.email + "&Auth_code=" + verificationCode
                + "\">click here</a>";

        SuperMail.sendMail(user.email, subject, body);

    }

}
