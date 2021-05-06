<!-- HEADER ------------------------------------------------------------------------- -->
<nav class="nav_bar">
	<div>
		<a class="navbar-brand text_logo" href="#"> <img
			src="../../img/ARA.png" width="50"
			height="50" class="rounded-circle logo" /> Akatsuki
		</a>
	</div>

	<div class="header_form_input">
		<!-- FORM SEARCH -->
		<form class="input-group form_search" method="get" action="/">
			<input class="form-control search_bar fixed-top" type="search"
				placeholder="ban can tim gi?" name="keywords" id="tags" />
			<div class="input-group-append">
				<button id="btnSearch" class="btn btn-outline-primary" type="submit">
					<i class="fa fa-search" aria-hidden="true"></i>
				</button>
			</div>
		</form>
	</div>

	<div class="">
		<ul class="nav">
			<li class="nav-item"><a class="nav-link" href="#">Thong bao</a>
			</li>
			<li class="nav-item"><a class="nav-link disabled" href="#">AccountName</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">Dang nhap</a>
			</li>
		</ul>
	</div>
</nav>
<!-- FILTER ----------------------- -->
<nav
	class="sticky-top nav_bar_filter navbar-expand-lg navbar-light bg-light">
	<div class="">
		<ul class="navbar-nav list_filter">
			<li class="nav-item"><a class="filter_label" href="#"> <i
					class="fa fa-filter" aria-hidden="true"></i> Loc theo:
			</a></li>
			<li class="nav-item"><select name="calc_shipping_provinces"
				class="custom-select" required="">
					<option value="">Tinh/ thanh pho</option>
			</select></li>
			<li class="nav-item"><select name="calc_shipping_district"
				class="custom-select" required="">
					<option value="">Quan huyen</option>
			</select></li>
			<li class="nav-item"><select class="custom-select">
					<option selected>Muc Gia</option>
					<option value="1">< 1tr</option>
					<option value="2">< 2tr</option>
					<option value="3">< 3tr</option>
			</select></li>
			<li class="nav-item"><select class="custom-select">
					<option selected>Dien Tich</option>
					<option value="1">One</option>
					<option value="2">Two</option>
					<option value="3">Three</option>
			</select></li>

			<li class="nav-item">
				<button class="btn btn-outline-success" type="submit">Tim
					kiem</button>
			</li>
		</ul>
	</div>
	<div>
		<button type="button" class="btn btn-warning">
			<i class="fa fa-plus" aria-hidden="true"></i> dang tin
		</button>
	</div>
</nav>
<!-- END HEADER -->
<script type="text/javascript">
	$(document).ready(function() {
	$("#btnsearch").click(function(){
		
	})
	});
</script>
