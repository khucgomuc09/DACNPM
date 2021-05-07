<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Room</title>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<form class="form-horizontal" action="roompost" method="post">
		<fieldset>

			<!-- Form Name -->
			<legend>ROOMS</legend>


			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name">TÊN
					NHÀ TRỌ</label>
				<div class="col-md-4">
					<input id="product_name" name="title" placeholder="TÊN NHÀ TRỌ"
						class="form-control input-md" required="" type="text">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name_fr">ĐỊA
					CHỈ</label>
				<div class="col-md-4">
					<input id="product_name_fr" name="address" placeholder="ĐỊA CHỈ"
						class="form-control input-md" required="" type="text">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name_fr">DIỆN
					TÍCH</label>
				<div class="col-md-4">
					<input id="product_name_fr" name="area" placeholder="DIỆN TÍCH"
						class="form-control input-md" required="" type="text">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name_fr">GIÁ</label>
				<div class="col-md-4">
					<input id="product_name_fr" name="price" placeholder="GIÁ"
						class="form-control input-md" required="" type="text">

				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label" for="product_name_fr">LIÊN
					HỆ</label>
				<div class="col-md-4">
					<input id="product_name_fr" name="contact" placeholder="LIÊN HỆ"
						class="form-control input-md" required="" type="text">

				</div>
			</div>

			<!-- Select Basic -->
			<!--        <div class="form-group">-->
			<!--            <label class="col-md-4 control-label" for="product_categorie">DIỆN TÍCH</label>-->
			<!--            <div class="col-md-4">-->
			<!--                <select id="product_categorie" name="product_categorie" class="form-control">-->
			<!--                </select>-->
			<!--            </div>-->
			<!--        </div>-->




			<!-- Textarea -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="product_description">MÔ
					TẢ</label>
				<div class="col-md-4">
					<textarea class="form-control" id="product_description"
						name="detailed_description"></textarea>
				</div>
			</div>




			<!-- Number input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="online_date">SỐ
					LƯỢNG PHÒNG NGỦ</label>
				<div class="col-md-4">
					<input id="online_date" name="number_bedroom"
						placeholder="SỐ LƯỢNG PHÒNG NGỦ" class="form-control input-md"
						required="" type="number">

				</div>
			</div>

			<!-- Number input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="online_date">SỐ
					LƯỢNG PHÒNG TẮM</label>
				<div class="col-md-4">
					<input id="online_date" name="number_bathroom"
						placeholder="SỐ LƯỢNG PHÒNG TẮM" class="form-control input-md"
						required="" type="number">

				</div>
			</div>

			<!--        &lt;!&ndash; Text input&ndash;&gt;-->
			<!--        <div class="form-group">-->
			<!--            <label class="col-md-4 control-label" for="enable_display">ENABLE DISPLAY</label>-->
			<!--            <div class="col-md-4">-->
			<!--                <input id="enable_display" name="enable_display" placeholder="ENABLE DISPLAY" class="form-control input-md" required="" type="text">-->

			<!--            </div>-->
			<!--        </div>-->

			<!--        &lt;!&ndash; Text input&ndash;&gt;-->
			<!--        <div class="form-group">-->
			<!--            <label class="col-md-4 control-label" for="comment">COMMENT</label>-->
			<!--            <div class="col-md-4">-->
			<!--                <input id="comment" name="comment" placeholder="COMMENT" class="form-control input-md" required="" type="text">-->

			<!--            </div>-->
			<!--        </div>-->

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="approuved_by">ĐĂNG
					BỞI</label>
				<div class="col-md-4">
					<input id="approuved_by" name="approuved_by" placeholder="ĐĂNG BỞI"
						class="form-control input-md" required="" type="text">

					<!-- File Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="filebutton">main_image</label>
						<div class="col-md-4">
							<input id="filebutton" name="image" class="input-file"
								type="file">
						</div>
					</div>
					<!-- File Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="filebutton">auxiliary_images</label>
						<div class="col-md-4">
							<input id="filebutton" name="filebutton" class="input-file"
								type="file">
						</div>
					</div>

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-4 control-label" for="submit">Save
							changes?</label>
						<div class="col-md-4">
							<button id="submit" name="submit" type="submit"
								class="btn btn-primary">Submit</button>
						</div>
					</div>
				</div>
			</div>

		</fieldset>
	</form>

</body>
</html>