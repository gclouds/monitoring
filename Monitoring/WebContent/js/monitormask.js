// JavaScript Document
function getRes() {

	var input = $("#select option:selected").text();// alert(input);
	$("#fillresults").html("Loading...");
	var data = "";
	if (input == "http") {
		data = "<table><tr><td>Friendly Name*</td><td> <input /> </td></tr><tr><td>Url( or IP )*</td><td><input></td></tr>";
	}
	if (input == "keyword") {
		data = "<table><tr><td>Friendly Name*</td><td> <input /> </td></tr><tr><td>Url(or IP)*</td><td><input></td></tr><tr><td>Keyword*</td><td><input></td></tr>";
	}
	if (input == "ping") {
		data = "<table><tr><td>Friendly Name*</td><td> <input /> </td></tr><tr><td>Url( or IP )* </td><td><input></td></tr>";

	}
	data = data
			+ "<tr><td><button id='btn1'>Create Monitor</button></td><td><button id='btn2'>Close</button></td></tr></table>";
	$("#fillresults").html(data);
}

$(document).ready(function() {

	$("#addMonitor").click(function() {
		$("#mask1").show();
		$("#addMonitorForm1").slideDown();
	});

	$("#close").click(function() {
		$("#addMonitorForm1").slideUp();
		$("#mask1").hide();
	});
});

function getMon() {
	//alert("hiii");
	$("#allMonitors").html("Loading...");
	$.ajax({
		type : "POST",
		url : "web/FetchMonitors.jsp",
		contentType : "text/xml",
		data : "",
		success : function(response) {
			// alert("Server said:\n '" + response + "'");
			$("#allMonitors").html(response);

		},
		error : function(e) {
			$
			$("#allMonitors").html(e);
		}
	});
}
function getMonStatus(url) {
	//alert("hiii");
	$("#monStatus").html("Loading...");
	$.ajax({
		type : "POST",
		url : "web/MonitorResults.jsp?url="+url,
		contentType : "text/xml",
		data : "",
		success : function(response) {
			// alert("Server said:\n '" + response + "'");
			$("#monStatus").html(response);

		},
		error : function(e) {
			$
			$("#monStatus").html(e);
		}
	});
}

