<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.6.0.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/checkEmailExist.js"></script>

<link rel="stylesheet" href="css/mycss.css" />

</head>
<body>
	<form action="#">
		<h2 class="row title">Đăng ký thành viên</h2>
		<div class="row">
			<div class="col-sm-4 label ">*Địa chỉ Email:</div>
			<div class="col-sm-6">
				<input type="email" id="email"> <label id="errorEmail"></label>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 label">*Mật khẩu:</div>
			<div class="col-sm-6">
				<input type="password">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 label">*Họ tên:</div>
			<div class="col-sm-6">
				<input type="text">
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 label">*Ngày sinh:</div>
			<div class="col-sm-6">
				<select>
					<%
					for (int i = 1; i <= 31; i++) {
					%>
					<option>
						<%=i%>
					</option>
					<%
					}
					%>
				</select> - <select>
					<%
					for (int i = 1; i <= 12; i++) {
					%>
					<option>
						<%=i%>
					</option>
					<%
					}
					%>
				</select> - <select>
					<%
					for (int i = 1940; i <= 2000; i++) {
					%>
					<option>
						<%=i%>
					</option>
					<%
					}
					%>
				</select>

			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 label">Giới tính</div>
			<div class="col-sm-6">
				<input type="radio" name="gender" id="nam" value="Nam"><label
					for="nam">Nam</label> <input type="radio" id="nu" name="gender"
					value="Nữ"><label for="nu"> Nữ</label>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 label">Trình độ văn hoá:</div>
			<div class="col-sm-6">
				<select>
					<option>Tốt nghiệp phổ thông</option>
					<option>Cao đẳng</option>
					<option>Đại học</option>
					<option>Thạc sỹ</option>
					<option>Tiến sỹ</option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 label">Địa chỉ:</div>
			<div class="col-sm-6">
				<input>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-4 label">Điện thoại:</div>
			<div class="col-sm-6">
				<input>
			</div>
		</div>
		<div class="row title">
			<input type="submit" value="Submit" id="submit">
		</div>

	</form>
</body>
</html>