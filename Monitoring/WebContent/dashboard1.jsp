<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="main.LoginGet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dash Board</title>
<script language="javascript" src="js/jquery-2.1.3.min.js"></script>
<script language="javascript" src="js/monitormask.js"></script>
<link href="css/http.css" rel="stylesheet" type="text/css" />
<link href="css/dshcss.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<header> <img src="images/images1.jpg" height="120px" /> </header>
		<div class="space">

			<a href="#"
				style="margin: 60px 15px 0px 220px; font-size: 18px; color: #A0A0A0; text-decoration: none; font-style: italic;"
				id="DashBoard">DashBoard</a> <a href="#"
				style="margin: 60px 15px 0px 60px; font-size: 18px; color: #A0A0A0; text-decoration: none; font-style: italic;"
				id="MySetting">MySetting</a>



		</div>
		<div class="logout">
			<ul>
				<li style="background: #009100">
					<div>
						<img src="images/images.jpg" height="22px" width="22px"
							style="float: left; margin-top: 5px" />
					</div> <a href="#" style="color: #FFFFFF; font-style: italic;"
					id="signup s "> Vyom</a>
				</li>

				<li style="background: #009100;">
					<div>
						<img src="images/download1.jpg" height="22px" width="22px"
							style="float: left; margin-top: 5px" />
					</div> <a href="#"
					style="color: #FFFFFF; text-align: center; font-style: italic;" "/>Log
					Out</a>
				</li>

			</ul>
		</div>

	</div>

	<main>
	<div class="addmonitor">

		<div class="moniter_button" style="background-color: #242424;">


			<input type="submit" value="+ Add Monitor" style="color: #FFFFFF"
				id="addMonitor" />

		</div>
		<div class="moniter_button" style="background-color: #242424;" />
		<input type="search" placeholder="search"
			style="margin: 30px 0px 0px 10px; background-color: #000000; color: #999999;" />
	</div>

	<div class="dynamicpage">
		<div class="mons" id="monitorsList">
			<div class="results">
				<div
					style="border-bottom: medium; border-bottom-color: blue; border-bottom-style: solid;">
					<center>
						<a href="#" onclick="javascript:getMon()">Monitors</a>
					</center>
				</div>
				<div id="allMonitors"></div>
			</div>
			<div class="results">
				<div
					style="border-bottom: medium; border-bottom-color: blue; border-bottom-style: solid;">
					<center>Status</center>
				</div>
				<div id="monStatus"></div>
			</div>
		</div>
	</div>

	</main>
</body>
<!--button mask code -->
<div id="mask1"></div>
<div id="addMonitorForm1">
	<div id="container1">
		<div class="monitortype1">
			<div style="padding: 10px;">
				<form id="form">
					<div
						style="font-size: 40px; border-bottom: medium; border-bottom-color: blue; border-bottom-style: solid;"
						align="center">New Monitor</div>
					<div>Monitor Information</div>
					<div>
						<table>
							<tr>
								<td>Monitor Type</td>
								<td><select id="select" onchange="javascript:getRes()">
										<option value="Please Select">Please Select</option>
										<option value="http">http</option>
										<option value="keyword">keyword</option>
										<option value="ping">ping</option>
								</select></td>
							</tr>
							<tr>
								<td id="fillresults" colspan="2"></td>
							</tr>
						</table>
					</div>
				</form>
			</div>
		</div>

	</div>
</html>