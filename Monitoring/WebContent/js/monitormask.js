// JavaScript Document
function getRes() {

	var input=$("#select option:selected").text();//alert(input);
	$("#fillresults").html("Loading...");
	var data = "";
	if(input=="http")
	{
		data="<table><tr><td><label>Friendly Name</label></td><td><input></td></tr><tr><td><label>name</label></td><td><input></td></tr></table>";
	$("#fillresults").html(data);
	}
}