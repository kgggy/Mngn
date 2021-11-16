<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

					<form name="updateForm" action="petUpdate.do" method="post">
						<input type="hidden" id="pet_id" name="pet_id">
						<div class="form-row">
							<div class="breed">냥이 품종</div>
							<div class="value">
								<div class="input-group">
									<div class="rs-select2 js-select-simple select--no-search">
										<select id="species" name="species">
											<option disabled="disabled">선택</option>
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
										placeholder="냥이이름을 입력해주세요." value="${pet.name }">
								</div>
							</div>
						</div>
						<div class="form-row p-t-20">
							<label class="gender"> 냥이 성별</label>
							<div class="p-t-15">
								
								<label class="radio-container m-r-55"> 수컷 <input
									type="radio" name="gen" value="${pet.gen }" <c:if test="${pet.gen eq 'M'}">checked</c:if>>
									<span class="checkmark"></span>
								</label> <label class="radio-container"> 암컷 <input type="radio"
									name="gen" value="${pet.gen }"<c:if test="${pet.gen eq 'W'}">checked</c:if>> <span class="checkmark"></span>
								</label>
							</div>
						</div>

						<div class="form-row">
							<div class="name">나이</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="age"
										placeholder="살" value="${pet.age }">
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="weight">몸무게</div>
							<div class="value">
								<div class="input-group">
									<input class="input--style-5" type="text" name="wgt"
										placeholder="kg" value="${pet.wgt }">
								</div>
							</div>
						</div>

						<div class="form-row p-t-20">
							<label class="label label--block"> 중성화 여부 </label>
							<div class="p-t-15">
								<label class="radio-container m-r-55"> Y <input
									type="radio" <c:if test="${pet.oper == '1'}">checked</c:if> name="oper" value="${pet.oper }">
									<span class="checkmark"></span>
								</label> <label class="radio-container"> N <input type="radio"
									name="oper" value="${pet.oper }" <c:if test="${pet.oper == '0'}">checked</c:if>> <span
									class="checkmark"></span>
								</label>
							</div>
						</div>



						<div class="form-row p-t-20">
							<label class="label label--block"> 특이사항 </label>
							<div class="value">
								<div class="input-group">
									<textarea rows="5" cols="180" name="memo">${pet.memo }</textarea>
								</div>
							</div>
						</div>
						<div align="center">
							<button class="btn btn--radius-2 btn--red" type="button"
								onclick="location.href ='aniList.do'">이전</button>
							<button class="btn btn--radius-2 btn--red" type="button"
								onclick="result(${pet.pet_id})">등록</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="vendor/a_r_jquery/a_r_jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

	<script>
	function result(pid) {
		if(confirm("수정하시겠습니까?") == true) {
			updateForm.pet_id.value = pid
			updateForm.submit();
			alert("수정되었습니다. ");
		} else {
			alert("다시 시도해주세요.");
			return;
		}
	};

	/* window.onload = function () {
		var option = $('#species').val();
		var spce = $('#spcs').val();
		$('#species').val("먼치킨").prop("selected", true);
	} */
</script>

</body>
</html>
