<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,happ.main.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>TGQA</title>
<meta http-equiv="Expires" CONTENT="0">
<meta http-equiv="Cache-Control" CONTENT="no-cache">
<meta http-equiv="Pragma" CONTENT="no-cache">
<script language="javascript" src="js/jquery-2.1.3.min.js"></script>
<script language="javascript" src="js/mon.js"></script>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body><div style="width: 1100px;">
	<div id="header">
		<table>
			<tr>
				<td colspan=3><h2>Monitoring...</h2></td>
				<td rowspan=2>></td>
			</tr>
			<tr>
				<td colspan=3>Contact: <a href="mailto:gaurav.tgqa@gmail.com">Gaurav
						(TGQA)</a>, In case you need any clarifications.
				</td>
			</tr>
			<tr>
				<td colspan=5><br></td>
			</tr>
		</table>
	</div>
	<div id="main">
		<div id="mainCon">
			<table>
				<tr>
					<td>Select an OTA:</td>
					<td><select id="pre">
							<option value="http://">http://</option>
							<option value="https://">https://</option>
					</select></td>
					<td><input name=""/></td>
					<td></td>
					<td><button type="button" onclick="javascript:getRes()">Check</button></td>
				</tr>
				<tr>
					<td>Manual:</td>
					<td>Full URL:</td>
					<td colspan=2><input type="text" name="otaAddr" id="url"></td>
					<td><button type="button" onclick="javascript:getResMan()">Check</button></td>
				</tr>
				<tr>
					<td colspan=5><h3>
							Post Data<input type="checkbox" id="isPost">
						</h3></td>
				</tr>
				<tr>
					<td colspan=5><textarea id="data"></textarea></td>
				</tr>
			</table>
		</div>

		
	</div>
			<div id="sideMon" align="center">
			<div  align="center">Continous Monitoring</div><br>
			<div>URL: <input id="pingUrl" type="text"></div><br>
			<div>Interval(ms): <input id="pingTime" type="text" value="5000"></div><br>
			<div><input id="isStart" type="checkbox">Start</div><br>
			<div>Response Code: <input id="response" type="text" disabled="disabled" ></div>
			</div>
	<div id="footer">
		<h3>Response:</h3>
		<div id="fillData"></div>
	</div>
	</div>
</body>
</html>