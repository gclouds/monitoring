// JavaScript Document
function getRes() {

	var input=$("#select option:selected").text();//alert(input);
	$("#fillresults").html("Loading...");
	var data = "";
	if(input=="http")
	{
		data="<table><tr><td>Friendly Name*</td><td> <input /> </td></tr><tr><td>Url( or IP )*</td><td><input></td></tr></table>";
	}
	if(input=="keyword")
	{
		data="<table><tr><td><label>Friendly Name*</label></td><td> <input /> </td></tr><tr><td><label>Url(or IP)* </label></td><td><input></td></tr><tr><td><label>Keyword*</label></td><td><input></td></tr></table>";
	}
        if(input=="ping")
	{
		data="<table><tr><td><label>Friendly Name*</label></td><td> <input /> </td></tr><tr><td><label>Url( or IP )* </label></td><td><input></td></tr></table>";

	}
        data=data+"<button id='btn1'>Create Monitor</button><button id='btn2'>Close</button>";
    	$("#fillresults").html(data);
}

$(document).ready(function(){
	
	$("#addMonitor").click(function(){
		  $("#mask1").show();
		  $("#addMonitorForm1").slideDown();
		});
		
		$("#close").click(function(){
		  $("#addMonitorForm1").slideUp();
		  $("#mask1").hide();
		});
	 });