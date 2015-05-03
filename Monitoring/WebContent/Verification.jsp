<%-- 
    Document   : Verification
    Created on : 10 Jan, 2013, 11:41:23 PM
    Author     : Heena
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String paramAuthCode = request.getParameter("Auth_code");
    String email = request.getParameter("Email");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "");
    String getAuthCode = "select authCode from user_auth where email='" + email + "'";
    System.out.println(getAuthCode);
    String verified = "Update user_table set status=1 where email='" + email + "'";
    System.out.println(verified);
    Statement st = con.createStatement();
    System.out.println("#######################################################");
    ResultSet result = st.executeQuery(getAuthCode);
    System.out.println("::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::");
    if (result.next()) {
        System.out.println(":::::::::::::::::::::///////////////////:::::::::::::::::::::::::::::::::::::::::::::");
        int i = 0;
        String actualAuthCode = result.getString("authCode");
        if (actualAuthCode.equals(paramAuthCode)) {
            i = st.executeUpdate(verified);
        }

        if (i == 1) {
            out.print("suceesfuuly verifed..");
        } else {
            out.print("not verifed..");
        }
    } else {
        System.out.println("####################no records found###############################");
    }

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Verification</title>
    </head>
    <body>
        <h1>You are successfully verified. </h1>
        <h3>Now Login and update your profile and enjoy the services..</h3>
        <a href="login.jsp"> Home </a>
    </body>
</html>
