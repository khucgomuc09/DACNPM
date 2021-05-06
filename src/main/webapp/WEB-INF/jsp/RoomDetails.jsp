<%@page import="com.example.demo.entities.Room"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="UTF-8" http-equiv="Content-Type" content="text/html" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />

<title>${ room.id}</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet" href="../../css/RoomDetail.css" />
</head>

<body>
	<div class="body_detail">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Home</a></li>
				<li class="breadcrumb-item"><a href="#">Library</a></li>
				<li class="breadcrumb-item active" aria-current="page">Data</li>
			</ol>
		</nav>

		<div class="body_detail_section_1">
			<div id="carouselExampleControls" class="carousel slide"
				data-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100" src="../../img/${room.image }" alt="First slide" />
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="../../img/${room.image }" alt="Second slide" />
					</div>
					<div class="carousel-item">
						<img class="d-block w-100" src="../../img/${room.image }" alt="Third slide" />
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleControls"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleControls"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>

			<div class="body_detail_section_1_right">
				<div class="body_detail_section_1_right_part_1">
					<h4 class="mb-3">ĐẶC ĐIỂM NỔI BẬT</h4>
					<ul class="list-group list-group-hightlight">
						<li class="list-group-item">Giá: ${room.price }</li>
						<li class="list-group-item">Diện tích: ${room.area } m²</li>
						<li class="list-group-item">Phòng ngủ: ${room.number_bedroom }</li>
						<li class="list-group-item">Phòng vệ sinh: ${room.number_bathroom }</li>
					</ul>
				</div>
				<div class="body_detail_section_1_right_part_2">
					<h4 class="mb-3">ĐĂNG KÝ XEM PHÒNG</h4>
					<button type="button" class="btn btn_register btn-outline-info">
						Đặt lịch</button>
					<button type="button" class="btn btn-outline-success" disabled>
						Liên hệ ngay</button>
					<div class="div_contact">
						<button type="button" class="btn btn-outline-secondary">
							<i class="fa fa-mobile" aria-hidden="true"></i> 086888888
						</button>
						<button type="button" class="btn btn-outline-secondary">
							<i class="fa fa-envelope" aria-hidden="true"></i> huy@gmail.com
						</button>
						<button type="button" class="btn btn-outline-secondary">
							<i class="fa fa-facebook-square" aria-hidden="true"></i>
							https://www.facebook.com/phan.huy.12935/
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="body_detail_section_2">
			<div class="body_detail_section_2_left">
				<div>
					<h4 class="mb-3">GIỚI THIỆU</h4>
					<ul class="list-group list-group-flush">
						<li class="list-group-item" style="text-transform: uppercase;">${room.title }</li>
						<li class="list-group-item">${room.address }</li>
						<li class="list-group-item">Giá: ${room.price }
							Triệu/Tháng
						</li>
						<li class="list-group-item">Diện tích: ${room.area } m²</li>
					</ul>
				</div>

				<div>
					<h4 class="mb-3">MÔ TẢ CHI TIẾT</h4>
					<ul class="list-group">
						<li class="list-group-item">${room.detailed_description }
							${room.contact }</li>
					</ul>
				</div>
			</div>
			<div class="body_detail_section_2_right">
				<h4 class="mb-3">NGƯỜI ĐĂNG TIN</h4>
				<ul class="list-group">
					<li class="list-group-item">
						<div class="post_man">
							<img src="./img/zakaria-zayane-7pPyJBKpqzw-unsplash.jpg"
								class="rounded-circle" width="70px" height="70px" />
							<div>
								<h5 class="card-title">Phan Le Huy</h5>
								<p class="card-text">Số bài đăng: 6</p>
							</div>
						</div> <a href="#" class="btn btn-primary"><i class="fa fa-comments"
							aria-hidden="true"></i> Chat với người đăng tin</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>
