$(document)
	.ready(
		function() {
			$("#search").keyup(function() {
				$.ajax({
					url "http://localhost:8080/room/" + $("#search").val(), type: "GET", dataType: "json", success: function(data) {
						$('#listitems').html('s');
						const list = data.map(s  => '<li><a href="/roomdetail/' + s.id + '"/>' + s.title + '</li>');
						$('#listitems').html(list.join(''));

					}
				});
			});

		});
