<%--
    Document   : valid
    Created on : Jun 22, 2012, 8:54:41 PM
    Author     : Aasiyana
--%>
<%@page import="main.RegistraionBase"%>
<%@page import="main.UserBean"%>
<%@page import="main.AuthCode"%>
<%@page import="main.SuperMail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Validation</title>
<script src="javascript.js">
	
</script>
</head>
<%-- <body onload="setTimeout('redirect()',5000)">--%>
<body>
	<%
		String error = (String) session.getAttribute("error");
		if (error != null) {

			out.println(error);

		}
	%>


	<%
		try {

			UserBean user = new UserBean(request);

			RegistraionBase register = new RegistraionBase(user);
			register.createUser();

			session.setAttribute("Email", user.email);
			session.setAttribute("Auth_code", user.pwd);
			//Sending Mail Work Start--------------------------------------------------------------------------------

			
			out.print("To Login verify yourself.");
			//Sending Mail Work End--------------------------------------------------------------------------------     

			// response.sendRedirect("auth.jsp");

			/*  session.setAttribute("UserName", UserNa);
			   session.setAttribute("email", email);
			    session.setAttribute("mob", mob);
			     session.setAttribute("address", address);
			      session.setAttribute("nation", nation);
			       session.setAttribute("country", country);
			          session.setAttribute("city",city);
			          session.setAttribute("con",con);
			         response.sendRedirect("validation.jsp");*/

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<h3>Your registration is being processed</h3>
</body>
</html>
