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
<title> 멍이 프로필 수정</title>

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
						<h3> 강아지 ${pet.name} 프로필등록수정</h3>
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
							<div class="picture">멍이사진</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="file" name="picture"
										value="">
								</div>
							</div>
						</div>


					<div class="form-row">
						<div class="value">멍이 품종 *</div>
						<div class="value">
							<div class="input-group">
								<div class="rs-select2 js-select-simple select--no-search">
									<select name="breed">


										<option disabled="disabled" selected="selected">Choose
											option</option>
										<optgroup label="소형견">
											<option>포메라니안</option>
											<option>비숑프리제</option>
											<option>푸들</option>
											<option>치와와</option>
											<option>닥스훈트</option>
											<option>말티즈</option>
											<option>시츄</option>
											<option>요크셔테리어</option>
										</optgroup>
										<optgroup label="중형견">
											<option>스피치</option>
											<option>시바견</option>
											<option>웰시코기</option>
											<option>프렌치불독</option>
											<option>비글</option>
										</optgroup>
										<optgroup label="대형견">
											<option>골든리트리버</option>
											<option>시베리안 허스키</option>
											<option>보더콜리</option>
											<option>사모예드</option>
											<option>버니즈마운틴</option>
											<option>잉글리쉬 불독</option>
										</optgroup>

									</select>
									<div class="select-dropdown"></div>
								</div>
							</div>
						</div>
					</div>
						<div class="form-row">

							<div class="name">멍이 이름</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="name"
										placeholder="이름을 입력해주세요." value="${petForm.name }">
								</div>
							</div>
						</div>
						<div class="form-row p-t-20">
							<label class="gender"> 멍이 성별</label>
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
