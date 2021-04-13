/**
 * 
 */
function checkEmail() {
	var input = document.getElementById("email").value;

	if (input === "manhmeo1398@gmail.com") {
		alert("email exist!");
	} else {
		input.value = "not blank";
	}

}
function changeByAjax() {
	$.ajax({
		type : 'GET',
		url : 'http://localhost:8080/CDW_2021_T5_t4/NewFile.jsp',
		success : function(rs) {
			console.log(rs);
			$("#title").html("rs");
		},
	});
}

$(document).ready(function() {
	$("#email").blur(function() {
		changeByAjax();
	});
});

// $("#submit").click(changeByAjax());
// $(document).ready(function() {
// });

function notAjax() {
	var title = document.getElementById("title");
	title.innerHTML = "not title";
}