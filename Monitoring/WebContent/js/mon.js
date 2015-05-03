var time = 5000;

$(document).ready(
		function() {
			time = $("#pingTime").val();
			// alert("hi");
			$.get("data/input.csv", function(data) {

				// split into lines
				var rows = data.split("\n");

				// parse lines
				rows.forEach(function getvalues(ourrow) {
					var columns = ourrow.split(",");
					if (columns[0] != '') {// alert(columns[0]);
						$('#selectEnv').append(
								$('<option>').attr('value', columns[0]).html(
										columns[0]));
					}
				});
			});
		});

function getRes() {
	var inputData = "";
	if ($("#isPost").is(':checked')) {
		inputData = $("#data").val();
	}
	$("#fillData").html("Loading...");
	var url = $("#pre").val() + $("#selectEnv").val() + $("#endPoiint").val();
	$.ajax({
		type : "POST",
		url : "web/GetResponse.jsp?url=" + url,
		contentType : "text/xml",
		data : inputData,
		success : function(response) {
			// alert("Server said:\n '" + response + "'");
			$("#fillData").html(response);

		},
		error : function(e) {
			$
			$("#fillData").html(e);
		}
	});
}

function getResMan() {
	$("#fillData").html("Loading...");
	var url = $("#url").val();
	var inputData = "";
	if ($("#isPost").is(':checked')) {
		inputData = $("#data").val();
	}
	$.ajax({
		type : "POST",
		url : "web/GetResponse.jsp?url=" + url,
		contentType : "text/xml",
		data : inputData,
		success : function(response) {
			// alert("Server said:\n '" + response + "'");
			$("#fillData").html(response);

		},
		error : function(e) {
			$
			$("#fillData").html(e);
		}
	});
}

window.setInterval(function() {
	time = $("#pingTime").val();
	if ($("#isStart").is(':checked')) {
		var url = $("#pingUrl").val();
		$("#response").val("Loading...");
		$.ajax({
			type : "GET",
			url : "web/Ping.jsp?url=" + url,
			contentType : "text/xml",
			success : function(response) {
				$("#response").val(response);
				// alert(time);
			},
			error : function(e) {
				$
				$("#response").html(e);
			}
		});

	}

}, time);


