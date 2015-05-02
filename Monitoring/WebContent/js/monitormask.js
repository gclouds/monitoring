// JavaScript Document
function getRes() {

	var input=$("#select option:selected").text();//alert(input);
	$("#fillresults").html("Loading...");
	var data = "";
	if(input=="http")
	{
		data="<table><tr><td><label>Friendly Name*</label></td><td> <input /> </td></tr><tr><td><label>Url( or IP )* </label></td><td><input></td></tr></table>";
	$("#fillresults").html(data);
	}
	if(input=="keyword")
	{
		data="<table><tr><td><label>Friendly Name*</label></td><td> <input /> </td></tr><tr><td><label>Url(or IP)* </label></td><td><input></td></tr><tr><td><label>Keyword*</label></td><td><input></td></tr></table>";
	$("#fillresults").html(data);
	}
        if(input=="ping")
	{
		data="<table><tr><td><label>Friendly Name*</label></td><td> <input /> </td></tr><tr><td><label>Url( or IP )* </label></td><td><input></td></tr></table>";
	$("#fillresults").html(data);
	}
}