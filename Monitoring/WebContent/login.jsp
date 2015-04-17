<%-- 
    Document   : login
    Created on : Apr 17, 2015, 9:17:58 PM
    Author     : vyom
--%>

<%@page import="main.LoginConnection"%>
<%@page import="main.LoginGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% if(request.getParameter("submit") != null)
{
    LoginGet lg1=new LoginGet(request);
    LoginConnection lgc=new LoginConnection(lg1);
    boolean chck=lgc.loginTest();
    if(!chck)
    out.print("nhi hio raha");
    else
    response.sendRedirect("dashboard.jsp");
}
    %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="login_form" action="login.jsp" method="post">
   <table>
           <thead> 
           <tr>
               <td colspan="2" align="center"><strong>Login</strong> 
              </td>
           </tr>
           </thead>

           <tbody>
               <tr>
                   <td colspan="2" align="center"><p>Existing User?
                           Just fill in your details below to Login.</p></td>
               </tr><td><label>Email</label></td>
             <td><input type="text" placeholder="Example: example@example.com" name="email" /></td>
           </tr>
           <tr>
               <td><label>Password</label></td>
             <td>
           <input type="password" placeholder="Your password" name="pwd"/></td>
           </tr>
           
           </tbody>
           <tfoot>
               <tr>
             <td colspan="2" align="right">
               
               <input type="submit" name="submit" value="Login"/>
             </td>
           </tr>
           </tfoot>
       </table>
           
           
       </form>
    </body>
</html>
