<%@page import="com.example.demo.entities.Room"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>


<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<meta name="description" content="Free Bootstrap Theme by uicookies.com">
<meta name="keywords"
	content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<link
	href="https://fonts.googleapis.com/css?family=Crimson+Text:300,400,700|Rubik:300,400,700,900"
	rel="stylesheet">
<link rel="stylesheet" href="../../css/styles-merged.css">
<link rel="stylesheet" href="../../css/style.min.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />

<!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<input id="search" list="roor" type="search">
	<datalist id="roor">

	</datalist>
	<section class="probootstrap-section">
		<div class="container">
			<div class="row">
				<!-- items -->
				<c:forEach var="room" items="${listRoom}" varStatus="loop">

					<div class="col-md-4 col-sm-6 col-xs-12" style="height: 495.5px">
						<div class="probootstrap-room">
							<a href="/roomdetail/${room.id}"><img src="${room.image}"
								style="width: 400px; height: 195px; object-fit: cover;"
								alt="Free Bootstrap Template by uicookies.com"
								class="img-responsive"></a>
							<div class="text">
								<h3 style="max-height: 90px; overflow: hidden">${room.title}</h3>
								<p>
									Starting from <strong>${room.price}</strong>
								</p>
								<div class="post-meta mb30">
									<div>address: ${room.address}</div>
									<div>
										area: ${room.area} m<sup>2</sup>
									</div>
								</div>
								<p>
									<a href="#" class="btn btn-primary" role="button">Reserve
										now for ${room.price}</a>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<!-- -->
	</section>
	<div>
		<nav style="margin-left: 450px" aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>

	</div>

	<!-- END: footer -->

	<script src="../../js/scripts.min.js"></script>
	<script src="../../js/main.min.js"></script>
	<script type="text/javascript">
		
	</script>
	<!--  
	<script src="../../js/custom.js"></script>
	  -->


	<!-- JS Files -->
	<script type="../../js/jquery-3.6.0.js"></script>
	<script src="../../js/popper.min.js"></script>
	<script src="../../js/bootstrap.min.js"></script>
	<script src="../../js/plugins.js"></script>
	<script src="../../js/active.js"></script>
</body>
</html>