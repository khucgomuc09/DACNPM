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
<link rel="stylesheet" href="css/styles-merged.css">
<link rel="stylesheet" href="css/style.min.css">
<link rel="stylesheet" href="css/custom.css">

<!--[if lt IE 9]>
      <script src="js/vendor/html5shiv.min.js"></script>
      <script src="js/vendor/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<!-- START: header -->

	<header role="banner" class="probootstrap-header">
		<!-- <div class="container"> -->
		<div class="row">
			<a href="index.html" class="probootstrap-logo visible-xs"><img
				src="img/logo_sm.png" class="hires" width="120" height="33"
				alt="Free Bootstrap Template by uicookies.com"></a> <a href="#"
				class="probootstrap-burger-menu visible-xs"><i>Menu</i></a>
			<div class="mobile-menu-overlay"></div>

			<nav role="navigation" class="probootstrap-nav hidden-xs">
				<ul class="probootstrap-main-nav">
					<!--            <li><a href="index.html">Home</a></li>-->
					<li><a href="about.html">About</a></li>
					<li class="active"><a href="rooms.jsp">Our Rooms</a></li>
					<li class="hidden-xs probootstrap-logo-center"><a
						href="index.html"><img src="img/logo_md.png" class="hires"
							width="181" height="50"
							alt="Free Bootstrap Template by uicookies.com"></a></li>
					<li><a href="reservation.html">Reservation</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
				<div class="extra-text visible-xs">
					<a href="#" class="probootstrap-burger-menu"><i>Menu</i></a>
					<h5>Connect With Us</h5>
					<ul class="social-buttons">
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="#"><i class="icon-facebook2"></i></a></li>
						<li><a href="#"><i class="icon-instagram2"></i></a></li>
					</ul>
				</div>
			</nav>
		</div>
		<!-- </div> -->
	</header>
	<!-- END: header -->

	<!--  <section class="probootstrap-slider flexslider probootstrap-inner">-->
	<!--    <ul class="slides">-->
	<!--       <li style="background-image: url(img/slider_1.jpg);" class="overlay">-->
	<!--          <div class="container">-->
	<!--            <div class="row">-->
	<!--              <div class="col-md-10 col-md-offset-1">-->
	<!--                <div class="probootstrap-slider-text text-center">-->
	<!--                  <p><img src="img/curve_white.svg" class="seperator probootstrap-animate" alt="Free HTML5 Bootstrap Template"></p>-->
	<!--                  <h1 class="probootstrap-heading probootstrap-animate">Best Rooms</h1>-->
	<!--                  <div class="probootstrap-animate probootstrap-sub-wrap">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</div>-->
	<!--                </div>-->
	<!--              </div>-->
	<!--            </div>-->
	<!--          </div>-->
	<!--        </li>-->
	<!--    </ul>-->
	<!--  </section>-->

	<section class="probootstrap-section">
		<div class="container">
			<div class="row">
				<!-- items -->
				<c:forEach var="room" items="${listRoom}" varStatus="loop">


					<div class="col-md-4 col-sm-6 col-xs-12" style="height: 495.5px">
						<div class="probootstrap-room">
							<a href="#"><img src="${room.image}"
								style="width: 400px;height: 195px; object-fit: cover;"
								alt="Free Bootstrap Template by uicookies.com"
								class="img-responsive"></a>
							<div class="text">
								<h3>${room.title}</h3>
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

	<div class="row">
		<div class="col-md-12 text-center">
			<h2>Why Choose Us?</h2>
			<p class="mb50">
				<img src="img/curve.svg" class="svg"
					alt="Free HTML5 Bootstrap Template">
			</p>
		</div>
		<div class="col-md-4">
			<div class="service left-icon left-icon-sm probootstrap-animate">
				<div class="icon">
					<i class="icon-check"></i>
				</div>
				<div class="text">
					<h3>1+ Million Hotel Rooms</h3>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.</p>
					<p>
						<a href="#" class="link-with-icon">Learn More <i
							class=" icon-chevron-right"></i></a>
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="service left-icon left-icon-sm probootstrap-animate">
				<div class="icon">
					<i class="icon-check"></i>
				</div>
				<div class="text">
					<h3>Food &amp; Drinks</h3>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.</p>
					<p>
						<a href="#" class="link-with-icon">Learn More <i
							class=" icon-chevron-right"></i></a>
					</p>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="service left-icon left-icon-sm probootstrap-animate">
				<div class="icon">
					<i class="icon-check"></i>
				</div>
				<div class="text">
					<h3>Airport Taxi</h3>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.</p>
					<p>
						<a href="#" class="link-with-icon">Learn More <i
							class=" icon-chevron-right"></i></a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!-- START: footer -->
	<footer role="contentinfo" class="probootstrap-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="probootstrap-footer-widget">
						<p class="mt40">
							<img src="img/logo_sm.png" class="hires" width="120" height="33"
								alt="Free HTML5 Bootstrap Template by uicookies.com">
						</p>
						<p>A small river named Duden flows by their place and supplies
							it with the necessary regelialia. It is a paradisematic country,
							in which roasted parts of sentences fly into your mouth.</p>
						<p>
							<a href="#" class="link-with-icon">Learn More <i
								class=" icon-chevron-right"></i></a>
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="probootstrap-footer-widget">
						<h3>Blog</h3>
						<ul class="probootstrap-blog-list">
							<li><a href="#">
									<figure class="probootstrap-image">
										<img src="img/img_1.jpg"
											alt="Free Bootstrap Template by uicookies.com"
											class="img-responsive">
									</figure>
									<div class="probootstrap-text">
										<h4>River named Duden flows</h4>
										<span class="meta">August 2, 2017</span>
										<p>A small river named Duden flows by their place</p>
									</div>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4">
					<div class="probootstrap-footer-widget">
						<h3>Contact</h3>
						<ul class="probootstrap-contact-info">
							<li><i class="icon-location2"></i> <span>198 West
									21th Street, Suite 721 New York NY 10016</span></li>
							<li><i class="icon-mail"></i><span>info@domain.com</span></li>
							<li><i class="icon-phone2"></i><span>+123 456 7890</span></li>
						</ul>

					</div>
				</div>
			</div>
			<div class="row mt40">
				<div class="col-md-12 text-center">
					<ul class="probootstrap-footer-social">
						<li><a href=""><i class="icon-twitter"></i></a></li>
						<li><a href=""><i class="icon-facebook"></i></a></li>
						<li><a href=""><i class="icon-instagram2"></i></a></li>
					</ul>
					<p>
						<small>&copy; 2017 <a href="https://uicookies.com/"
							target="_blank">uiCookies:Atlantis</a>. All Rights Reserved. <br>
							Designed &amp; Developed by <a href="https://uicookies.com/"
							target="_blank">uicookies.com</a> Demo Images: Unsplash.com &amp;
							Pexels.com
						</small>
					</p>

				</div>
			</div>
		</div>
	</footer>
	<!-- END: footer -->

	<script src="js/scripts.min.js"></script>
	<script src="js/main.min.js"></script>
	<script src="js/custom.js"></script>

	<script>
		$('#demo').pagination({
			// dataSource: [1, 2, 3, 4, 5, 6, 7, ... , 50],
			pageSize : 9,
			pageRange : null,
			showPageNumbers : true,
			callback : function(data, pagination) {
				// template method of yourself
				var html = template(data);
				dataContainer.html(html);
			}
		})
	</script>

</body>
</html>