<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    <script type="application/x-javascript">
    addEventListener("load", function() {
	setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
	window.scrollTo(0, 1);
    }
</script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js
"></script>

<!-- Icons font CSS-->
<link rel="stylesheet"
	href="../../css/logincss/vendor/mdi-font/css/material-design-iconic-font.min.css">
<link rel="stylesheet"
	href="../../css/logincss/vendor/font-awesome-4.7/css/font-awesome.min.css">

<!-- Font special for pages-->
<link
	href="http://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link rel="stylesheet"
	href="../../css/logincss/vendor/select2/select2.min.css">
<link rel="stylesheet"
	href="../../css/logincss/vendor/datepicker/daterangepicker.css">

<!-- Main CSS-->
<link rel="stylesheet" href="../../css/logincss/css/main.css">

</head>

<body>
	<div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
		<div class="wrapper wrapper--w780">
			<div class="card card-3">
				<div class="card-body">
					<h2 class="title">Register</h2>
					<form method="POST" action="register">
						<div class="input-group">
							<input class="input--style-3" type="text" placeholder="Name"
								name="name" required="">
						</div>

						<div class="input-group">
							<input class="input--style-3" type="email" placeholder="Email"
								name="email" required="">
						</div>
						<div class="input-group">
							<input class="input--style-3" type="tel" pattern="[0-9]{5,13}"
								placeholder="Phone" name="phone" required="">
						</div>
						<div class="input-group">
							<input class="input--style-3" type="password" id="pwd"
								placeholder="Password" name="password" required="">
						</div>
						<div class="input-group">
							<input class="input--style-3" type="password" id="cpwd"
								placeholder="Confirm Password" name="confirmPassword"
								required="">
						</div>
						<div id="showErrorCpwd"></div>
						<div class="p-t-10">
							<button class="btn btn--pill btn--green" type="submit">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

	<script>
	$(document).ready(function() {
	    $('#cpwd').keyup(function() {
		var pwd = $('#pwd').val();
		var cpwd = $('#cpwd').val();
		if (cpwd != pwd) {
		    $('#showErrorCpwd').html('Password are not matching');
		    $('#showErrorCpwd').css('color', 'red');
		    return false;
		} else {
		    $('#showErrorCpwd').html('');
		    return true;
		}
	    })

	})
    </script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>