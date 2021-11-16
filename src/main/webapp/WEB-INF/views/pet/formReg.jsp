<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>프로필 수정</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/a_r_main.css" rel="stylesheet" media="all">
<script>
	function result() {
		$("#petForm").submit();
	}
</script>
</head>
<body>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>고양이 ${pet.name} 프로필등록수정</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END nav -->
	<section>
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5"></div>
			</div>
		</div>
	</section>

	<div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
		<div class="wrapper wrapper--w790">
			<div class="card card-5">
				<div class="card-body">

					<form id="petForm" action="petUpdate.do" method="post">
						<input type="hidden" name="knd" value="2">


						<div class="form-row">
							<div class="picture">냥이사진</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="file" name="picture"
										value="">
								</div>
							</div>
						</div>


						<div class="form-row">
							<div class="breed">냥이 품종</div>
							<div class="value">
								<div class="input-group">
									<div class="rs-select2 js-select-simple select--no-search">
										<select name="species" value="${petForm.species }">


											<option disabled="disabled" selected="selected">Choose
												option</option>
											<optgroup label="고양이">

												<option>코리안숏헤어</option>
												<option>봄베이</option>
												<option>먼치킨</option>
												<option>랙돌</option>
												<option>러시안블루</option>
												<option>폴드</option>
												<option>터키쉬 앙고라</option>
												<option>엑죠틱</option>
												<option>벵갈</option>
												<option>페르시안</option>
												<option>노르웨이숲</option>
												<option>아비시니안</option>
												<option>샴</option>
											</optgroup>

										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
						</div>

						<div class="form-row">

							<div class="name">냥이 이름</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="name"
										placeholder="냥이이름을 입력해주세요." value="${petForm.name }">
								</div>
							</div>
						</div>
						<div class="form-row p-t-20">
							<label class="gender"> 냥이 성별</label>
							<div class="p-t-15">
								<label class="radio-container m-r-55"> 수컷 <input
									type="radio" checked="checked" name="gen" value="${petForm.gen }">
									<span class="checkmark"></span>
								</label> <label class="radio-container"> 암컷 <input type="radio"
									name="gen" value="${petForm.gen }"> <span class="checkmark"></span>
								</label>
							</div>
						</div>

						<div class="form-row">
							<div class="name">나이</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="age"
										placeholder="살" value="${petForm.age }">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="weight">몸무게</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="wgt"
										placeholder="kg" value="${petForm.wgt }">
								</div>
							</div>
						</div>

						<div class="form-row p-t-20">
							<label class="label label--block"> 중성화 여부 </label>
							<div class="p-t-15">
								<label class="radio-container m-r-55"> Y <input
									type="radio" checked="checked" name="oper" value="${petForm.oper }">
									<span class="checkmark"></span>
								</label> <label class="radio-container"> N <input type="radio"
									name="oper" value="${petForm.oper }"> <span
									class="checkmark"></span>
								</label>
							</div>
						</div>



						<div class="form-row p-t-20">
							<label class="label label--block"> 특이사항 </label>
							<div class="value">
								<div class="input-group">
									<textarea rows="5" cols="180" name="memo" value="${petForm.memo }"></textarea>
								</div>
							</div>
						</div>
						<div align="center">
							<button class="btn btn--radius-2 btn--red" type="button"
								onclick="location.href ='aniList.do'">이전</button>
							<button class="btn btn--radius-2 btn--red" type="button"
								onclick="result()">수정</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
