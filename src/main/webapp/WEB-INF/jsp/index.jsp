<%@page import="com.example.demo.entities.Room"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<!-- Font awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<!-- JQuery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--  -->
<title>Hello, world!</title>
<link rel="stylesheet" href="../../css/styleheader.css" />
<link rel="stylesheet" href="../../css/headerfooter.css" />
</head>
<body>
	<!-- HEADER ------------------------------------------------------------------------- -->
	<!-- include header here -->
	<!-- END HEADER -->
	<!-- HOME BODY --------------------------------------------------------------------- -->
	<jsp:include page="header.jsp"></jsp:include>
	<div class="home_body">
		<h3 class="home_body_header">
			<i class="fa fa-list-alt" aria-hidden="true"></i> Danh sách phòng trọ
			đang cho thuê
		</h3>
		<!-- List card view -->
		
		<div class="container_card_view">
			<c:forEach var="room" items="${listRoom}" varStatus="loop">
			<!-- First card -->
			
			<div class="card" style="width: 20rem">
				<img class="card-img-top"
					height="200px"
					src="../../img/${room.image }"
					alt="Card image cap" />
				<div class="card-body">
					<h6 class="card-title">${room.title }</h6>
					<p class="card-text">
						<i class="fa fa-map-marker" aria-hidden="true"></i> ${room.address}
					</p>
				</div>
				<ul class="list-group list-group-card list-group-flush">
					<li class="list-group-item list-group-card-item list-group-item-1">
						${room.price} Triệu/Tháng</li>
					<li class="list-group-item list-group-card-item list-group-item-2">
						${room.area} m²</li>
				</ul>
				<div class="card-body card-body-link">
					<a href="/roomdetail/${room.id}" class="card-link">Liên hệ</a> <a href="/roomdetail/${room.id}"
						class="card-link">Xem chi tiết</a>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- end -->

	<!-- END HOME BODY -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<!-- <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script> -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<!-- AUTO COMPLETE -->
	<script>
		$(function() {
			var availableTags = [ "ActionScript", "AppleScript", "Asp",
					"BASIC", "C", "C++", "Clojure", "COBOL", "ColdFusion",
					"Erlang", "Fortran", "Groovy", "Haskell", "Java",
					"JavaScript", "Lisp", "Perl", "PHP", "Python", "Ruby",
					"Scala", "Scheme", ];
			$("#tags").autocomplete({
				source : availableTags,
			});
		});
	</script>
	<!-- FILTER -->
	<script
		src="https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js"></script>
	<script>
		//<![CDATA[
		if ((address_2 = localStorage.getItem("address_2_saved"))) {
			$('select[name="calc_shipping_district"] option').each(function() {
				if ($(this).text() == address_2) {
					$(this).attr("selected", "");
				}
			});
			$("input.billing_address_2").attr("value", address_2);
		}
		if ((district = localStorage.getItem("district"))) {
			$('select[name="calc_shipping_district"]').html(district);
			$('select[name="calc_shipping_district"]').on(
					"change",
					function() {
						var target = $(this).children("option:selected");
						target.attr("selected", "");
						$('select[name="calc_shipping_district"] option').not(
								target).removeAttr("selected");
						address_2 = target.text();
						$("input.billing_address_2").attr("value", address_2);
						district = $('select[name="calc_shipping_district"]')
								.html();
						localStorage.setItem("district", district);
						localStorage.setItem("address_2_saved", address_2);
					});
		}
		$('select[name="calc_shipping_provinces"]')
				.each(
						function() {
							var $this = $(this), stc = "";
							c
									.forEach(function(i, e) {
										e += +1;
										stc += "<option value=" + e + ">" + i
												+ "</option>";
										$this
												.html('<option value="">Tỉnh / Thành phố</option>'
														+ stc);
										if ((address_1 = localStorage
												.getItem("address_1_saved"))) {
											$(
													'select[name="calc_shipping_provinces"] option')
													.each(
															function() {
																if ($(this)
																		.text() == address_1) {
																	$(this)
																			.attr(
																					"selected",
																					"");
																}
															});
											$("input.billing_address_1").attr(
													"value", address_1);
										}
										$this
												.on(
														"change",
														function(i) {
															i = $this
																	.children(
																			"option:selected")
																	.index() - 1;
															var str = "", r = $this
																	.val();
															if (r != "") {
																arr[i]
																		.forEach(function(
																				el) {
																			str += '<option value="' + el + '">'
																					+ el
																					+ "</option>";
																			$(
																					'select[name="calc_shipping_district"]')
																					.html(
																							'<option value="">Quận / Huyện</option>'
																									+ str);
																		});
																var address_1 = $this
																		.children(
																				"option:selected")
																		.text();
																var district = $(
																		'select[name="calc_shipping_district"]')
																		.html();
																localStorage
																		.setItem(
																				"address_1_saved",
																				address_1);
																localStorage
																		.setItem(
																				"district",
																				district);
																$(
																		'select[name="calc_shipping_district"]')
																		.on(
																				"change",
																				function() {
																					var target = $(
																							this)
																							.children(
																									"option:selected");
																					target
																							.attr(
																									"selected",
																									"");
																					$(
																							'select[name="calc_shipping_district"] option')
																							.not(
																									target)
																							.removeAttr(
																									"selected");
																					var address_2 = target
																							.text();
																					$(
																							"input.billing_address_2")
																							.attr(
																									"value",
																									address_2);
																					district = $(
																							'select[name="calc_shipping_district"]')
																							.html();
																					localStorage
																							.setItem(
																									"district",
																									district);
																					localStorage
																							.setItem(
																									"address_2_saved",
																									address_2);
																				});
															} else {
																$(
																		'select[name="calc_shipping_district"]')
																		.html(
																				'<option value="">Quận / Huyện</option>');
																district = $(
																		'select[name="calc_shipping_district"]')
																		.html();
																localStorage
																		.setItem(
																				"district",
																				district);
																localStorage
																		.removeItem(
																				"address_1_saved",
																				address_1);
															}
														});
									});
						});
		//]]>
	</script>
</body>
</html>
