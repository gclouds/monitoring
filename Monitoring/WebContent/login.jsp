<%-- 
    Document   : login
    Created on : Apr 17, 2015, 9:17:58 PM
    Author     : vyom
--%>

<%@page import="main.LoginConnection"%>
<%@page import="main.LoginGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	if (request.getParameter("submit") != null) {
		LoginConnection lgc = new LoginConnection(request);
		boolean chck = lgc.loginTest();
		if (!chck)
			out.print("nhi hio raha");
		else
			response.sendRedirect("dashboard1.jsp");
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link href="css/login 26april.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="main">

		<div class="head">
			<h1
				style="font-size: 30px; margin: 10px 0px 0px 0px; color: #000000;">LOGIN</h1>
		</div>

		<div class="head1">
			<img src="images/m.png" height="25px" width="25px" float="left"
				style="margin: 5px 0px 0px 0px;" /><label
				style="font-size: 18px; margin: 5px 0px 0px 0px; padding: 0px;">So
				Close To The Dashboard...</label>
		</div>
		<hr />

		<div class="space"></div>
          <div>
          <form action="login.jsp" method="post">
		<div class="container_left">
			<img src="images/698630-icon-114-lock-128.png"
				style="float: left; margin-top: 25px;" />
		</div>

		<div class="container_right" style="margin-top: 30px;">
			<input type="text" placeholder="Email" name="email"
				style="margin: 25px 0px 0px 0px; height: 25px; width: 30%;" /> <br />
			<br /> <br /> <input type="password" placeholder="Password" name="pwd"
				style="height: 25px; width: 30%;" />
		</div>
		<br /> <br /> <input type="submit" value="Login" name="submit"
			style="margin: 0px 0px 0px 130px; background-color: #009100; color: #FFFFFF; width: 70px;" />
		<br /> <br /> <a href="#" style="margin-left: 225px;"> Forget
			Password?</a>

	</div>
	</form>
	</div>
</body>
</html>
