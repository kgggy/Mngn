<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- Head -->

<head>
<title>사용자 목록</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="keywords"
	content="Bootstrap Theme, Freebies, Dashboard, MIT license">
<meta name="description" content="Stream - Dashboard UI Kit">
<meta name="author" content="htmlstream.com">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

<!-- Web Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Cabin:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&family=Open+Sans&display=swap"
	rel="stylesheet">

<!-- Components Vendor Styles -->
<link rel="stylesheet" href="assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet"
	href="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

<!-- Theme Styles -->
<link rel="stylesheet" href="assets/css/theme.css">
<link rel="stylesheet" href="assets/css/style.css">

<!-- Custom Charts -->
<style>
.js-doughnut-chart {
	width: 70px !important;
	height: 70px !important;
}
</style>
<!-- Global Vendor -->
<script src="assets/vendor/jquery/dist/jquery.min.js"></script>
<script src="assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
<script src="assets/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="assets/vendor/bootstrap/bootstrap.min.js"></script>

<!-- Plugins -->
<script
	src="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/vendor/chart.js/dist/Chart.min.js"></script>

<!-- Initialization  -->
<script src="assets/js/sidebar-nav.js"></script>
<script src="assets/js/dashboard-page-scripts.js"></script>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    
<!-- Excel download  -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="assets/js/jquery.table2excel.min.js"></script>

<script>
	$(document).ready(function() {
		$('#exampleModalCenter').on('show.bs.modal', function(event) {
			var tr = $(event.relatedTarget).closest('tr')
			var data0 = tr.find('td:eq(0)').html() //훈련사ID
			var data1 = tr.find('td:eq(1)').html() //훈련사 이름
			var data2 = tr.find('td:eq(2)').html() //훈련사 전화번호
			var data3 = tr.find('td:eq(3)').html() //훈련사 가입날짜
			var data5 = tr.find('td:eq(5)').html() //훈련사 주소1
			var data6 = tr.find('td:eq(6)').html() //훈련사 주소2
			var data7 = tr.find('td:eq(7)').html() //훈련사 생일
			var data8 = tr.find('td:eq(8)').html() //훈련사 근무지1
			var data9 = tr.find('td:eq(9)').html() //훈련사 근무지2
			//var data10 = tr.find('td:eq(10)').html() //훈련사 근무시간
			var data11 = tr.find('td:eq(11)').html() //훈련사 별점평균
			var data12 = tr.find('td:eq(12)').html() //훈련사 별점평균

			$(this).find('.modal-body #trnId').val(data0)
			$(this).find('.modal-body #trnName').val(data1)
			$(this).find('.modal-body #trnPhone').val(data2)
			$(this).find('.modal-body #trnJdate').val(data3)
			$(this).find('.modal-body #trnAdres1').val(data5)
			$(this).find('.modal-body #trnAdres2').val(data6)
			$(this).find('.modal-body #trnBdate').val(data7)
			$(this).find('.modal-body #trnLoc1').val(data8)
			$(this).find('.modal-body #trnLoc2').val(data9)
			//$(this).find('.modal-body #').val(data10)
			$(this).find('.modal-body #trnStar').val(data11)
			$(this).find('.modal-body #trnEmail').val(data12)

		})
	});
</script>
</head>
<!-- End Head -->

<body class="page-coupon-all">
	<!-- Header (Topbar) -->
	<header class="astino-header u-header">
		<div class="u-header-left">
			<a class="u-header-logo" href="mngMain.do"> <img
				src="assets/logo.png" width="160">
			</a>
		</div>

		<div class="u-header-middle">
			<a class="js-sidebar-invoker u-sidebar-invoker" href="#!"
				data-is-close-all-except-this="true" data-target="#sidebar"> <i
				class="fa fa-bars u-sidebar-invoker__icon--open"></i>
			</a> <span class="js-sidebar-invoker u-sidebar-invoker"> 관리자님
				환영합니다. </span>
		</div>
	</header>
	<!-- End Header (Topbar) -->

	<main class="u-main" role="main">

		<!-- Sidebar -->
		<aside id="sidebar" class="astino-sidebar u-sidebar">
			<div class="u-sidebar-inner">
				<header class="u-sidebar-header">
					<a class="u-sidebar-logo" href="mngMain.do"> <img
						class="img-fluid" src="assets/img/logo.png" width="124"
						alt="Stream Dashboard">
					</a>
				</header>

				<nav class="u-sidebar-nav">
					<ul class="u-sidebar-nav-menu u-sidebar-nav-menu--top-level">
						<!-- 주간 리포트 -->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="mngMain.do"> <i
								class="fas fa-th-large u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">주간 리포트</span>
						</a></li>
						<!-- End 주간 리포트 -->

						<!-- 공지사항 관리 -->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link " href="boardList.do"> <i
								class="far fa-edit u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">공지사항 관리</span>
						</a></li>
						<!-- End 공지사항 관리 -->

						<!-- 회원 관리 -->
						<li class="u-sidebar-nav-menu__item "><a
							class="u-sidebar-nav-menu__link active" href="cntList.do"
							data-target="#subMenu22"> <i
								class="fab fa-product-hunt u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">회원관리</span> <i
								class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i> <span
								class="u-sidebar-nav-menu__indicator"></span>
						</a>

							<ul id="subMenu22"
								class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level text-center"
								style="display: none;">
								<li class="u-sidebar-nav-menu__item "><a
									class="u-sidebar-nav-menu__link" href="cntList.do"> <span
										class="u-sidebar-nav-menu__item-title">사용자 관리</span>
								</a></li>
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="trnList.do"> <span
										class="u-sidebar-nav-menu__item-title">훈련사 관리</span>
								</a></li>
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="outList.do"> <span
										class="u-sidebar-nav-menu__item-title">탈퇴회원 관리</span>
								</a></li>
							</ul></li>
						<!-- End 회원 관리 -->

						<!-- 훈련사 수당 관리-->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="salaryList.do"> <i
								class="fas fa-list-alt u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">훈련사 수당 관리</span>
						</a></li>
						<!-- End 훈련사 수당 관리 -->

						<!-- 관리자 로그아웃-->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="home.do"> <i
								class="fas fa-cogs u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">로그아웃</span>
						</a></li>
						<!-- End 관리자 로그아웃 -->
					</ul>
				</nav>
			</div>
		</aside>
		<!-- End Sidebar -->
		<div class="u-content">
			<div class="u-body">
				<div class="row">
					<!-- 훈련사 목록 -->
					<div class="col-md-12 mb-4">
						<div class="card h-100">
							<header class="card-header d-flex align-items-center">
								<h2 class="h2 card-header-title">훈련사 목록</h2>
							</header>

							<div class="card-body">
								<div class="table-responsive">
									<form>
										<table id="trainerListTable" class="table table-hover">
											<thead>
												<tr>
													<th scope="col" class="text-dark">ID</th>
													<th scope="col" class="text-dark">이 름</th>
													<th scope="col" class="text-dark">전화번호</th>
													<th scope="col" class="text-dark">가입날짜</th>
													<th scope="col" class="text-dark"></th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="trainer" items="${trainers}">
													<tr>
														<td>${trainer.client_id }</td>
														<td>${trainer.name }</td>
														<td>${trainer.phone }</td>
														<td>${trainer.join_dt }</td>
														<td><input type="button"
															class="btn btn-outline-danger" value="상세보기"
															id="btnSearch" data-toggle="modal"
															data-target="#exampleModalCenter" /></td>
														<td style="display: none;">${trainer.adres1}</td>
														<td style="display: none;">${trainer.adres2}</td>
														<td style="display: none;">${trainer.trn_birth_dt}</td>
														<td style="display: none;">${trainer.work_loc1}</td>
														<td style="display: none;">${trainer.work_loc2}</td>
														<td style="display: none;">${trainer.work_time}</td>
														<td style="display: none;">${trainer.trn_avrg}</td>
														<td style="display: none;">${trainer.email}</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
								<button type="button"  id="downloadExcel"  class="btn btn-danger btn-large float-right">Excel Download</button>
									</form>
									<my:paging jsFunc="goList" paging="${paging}" />
								</div>
							</div>
						</div>
					</div>
					<!-- End 훈련사 정보 -->
				</div>
			</div>

			<!-- Footer -->
			<footer
				class="astino-footer u-footer d-md-flex align-items-md-center text-center text-md-left">
				<p class="h5 mb-2 mb-md-0">
					Made with love by <a class="text-danger"
						href="https://themespell.com/" target="_blank">Themespell</a>
				</p>

				<p class="h5 mb-0 ml-auto">
					&copy; 2020 <a class="text-danger" href="https://themespell.com/"
						target="_blank">Themespell</a>. All Rights Reserved.
				</p>
			</footer>
			<!-- End Footer -->
		</div>
	</main>

	<!-- Large Size Modal-->
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">훈련사 상세정보</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- Current Projects -->
					<div class="col-md-12 mb-4">
						<div class="card h-100">
							<div class="astino-pr-form card-body">
								<form>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput">아이디</label> <input
											type="text" class="form-control" id="trnId" readonly>
										<label for="formGroupExampleInput2">이 름</label> <input
											type="text" class="form-control" id="trnName" placeholder=""
											readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput4">서비스평점</label> <input
											type="text" class="form-control" id="trnStar" placeholder=""
											readonly>
										<label for="formGroupExampleInput4">입사날짜</label> <input
											type="text" class="form-control" id="trnJdate" placeholder=""
											readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput4">연락처</label> <input
											type="text" class="form-control" id="trnPhone" placeholder=""
											readonly>
										<label for="formGroupExampleInput4">이메일</label> <input
											type="text" class="form-control" id="trnEmail" placeholder=""
											readonly>
									</div>
									
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput4">근무지역1</label> <input
											type="text" class="form-control" id="trnLoc1" placeholder=""
											readonly>
										<label for="formGroupExampleInput4">근무지역2</label> <input
											type="text" class="form-control" id="trnLoc2" placeholder=""
											readonly>
									</div>
									<!-- <div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput4">휴 무</label> <input
											type="text" class="form-control" id="trnOff" placeholder=""
											readonly>
									</div> -->
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput3">주 소</label> <input
											type="text" class="form-control" id="trnAdres1"
											placeholder="" readonly> <input type="text"
											class="form-control" id="trnAdres2" placeholder="" readonly>
									</div>
								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-outline-danger btn-sm"
									data-dismiss="modal">확인</button>
							</div>
						</div>
					</div>
					<!-- End Current Projects -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Large Size Modal-->
	<script>
		//페이징 처리
		function goList(p) {
			location.href = "trnList.do?page=" + p
		}
		
	</script>	
	<script>
	
	$("#downloadExce").table2csv();

	$("#downloadExce").table2csv('output', {
		  appendTo:'#out'
		});
	
	$("#downloadExce").table2csv({
		  filename:'excel.csv'
		});

	
	$("#downloadExcel").click(function(e){
	    $("#trainerListTable").table2excel({
	        exclude: ".excludeThisClass",
	        name: "Worksheet Name",
	        filename: "SomeFile.xls", // do include extension
	        preserveColors: false // set to true if you want background colors and font colors preserved
	});

	</script>
</body>
</html>