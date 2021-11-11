<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- Head -->

<head>
<title>탈퇴회원 목록</title>

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
<script>
	$(document).ready(function() {
		$('#exampleModalCenter').on('show.bs.modal', function(event) {
			var tr = $(event.relatedTarget).closest('tr')
			var data1 = tr.find('td:eq(1)').html()
			var data2 = tr.find('td:eq(2)').html()
			var data4 = tr.find('td:eq(4)').html()
			var data5 = tr.find('td:eq(5)').html()
			var data6 = tr.find('td:eq(6)').html()
			$(this).find('.modal-body #qclientId').val(data1)
			$(this).find('.modal-body #qclientName').val(data2)
			$(this).find('.modal-body #qclientJdate').val(data4)
			$(this).find('.modal-body #qclientResn').val(data5)
			$(this).find('.modal-body #qclientEttc').val(data6)
		})
	});
</script>
</head>
<!-- End Head -->

<body class="page-customer-info">
	<!-- Header (Topbar) -->
	<header class="astino-header u-header">
		<div class="u-header-left">
			<a class="u-header-logo" href="mngMain.do"> <img
				src="assets/logo.png" width="160"> 
			</a>
		</div>

		<div class="u-header-middle" >
			<a class="js-sidebar-invoker u-sidebar-invoker" href="#!"
				data-is-close-all-except-this="true" data-target="#sidebar"> <i
				class="fa fa-bars u-sidebar-invoker__icon--open"></i> 
			</a>
				<span class="js-sidebar-invoker u-sidebar-invoker" > 관리자님 환영합니다. </span>
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
							class="u-sidebar-nav-menu__link " href="boardList.do">
								<i class="far fa-edit u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">공지사항 관리</span>
						</a></li>
						<!-- End 공지사항 관리 -->

						<!-- 회원 관리 -->
						<li class="u-sidebar-nav-menu__item clearfix"><a
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
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link " href="cntList.do">
										<span class="u-sidebar-nav-menu__item-title">사용자 관리</span>
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
					<div class="col-md-12 mb-4">
						<div class="card h-100">
				<header class="card-header d-flex align-items-center">
					<h2 class="h2 card-header-title">탈퇴회원 목록</h2>
				</header>
					<!-- 사용자 정보 -->
							<div class="card-body">
								<div class="table-responsive">
								  <form>
									<table class="table table-hover">
										<thead>
											<tr>
												<th scope="col" class="text-dark">일련번호</th>
												<th scope="col" class="text-dark">ID</th>
												<th scope="col" class="text-dark">이 름</th>
												<th scope="col" class="text-dark">상 태</th>
												<th scope="col" class="text-dark">가입날짜</th>
												<th scope="col" class="text-dark"></th>
											</tr>
										</thead>

										<tbody>
											<c:forEach var="qclient" items="${qclients}">
												<tr>
													<td>${qclient.quit_no }</td>
													<td>${qclient.client_id }</td>
													<td>${qclient.name }</td>
													<td class="text-success">탈퇴</td>
													<td>${qclient.join_dt }</td>
													<td>
														<input type="button"
														class="btn btn-outline-danger" value="상세보기" id="btnSearch"
														data-toggle="modal" data-target="#exampleModalCenter" />
													</td>
													<td style="display: none;">${qclient.memo_resn }</td>
													<td style="display: none;">${qclient.memo_ettc }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									</form>
									<my:paging jsFunc="goList" paging="${paging}" />
								</div>
							</div>
						</div>
					</div>
					<!-- End 사용자 정보 -->
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
					<h3 class="modal-title" id="exampleModalLabel">탈퇴회원 상세정보</h3>
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
											type="text" class="form-control" id="qclientId"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput2">이 름</label> <input
											type="text" class="form-control" id="qclientName"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput2">가입날짜</label> <input
											type="text" class="form-control" id="qclientJdate"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput5">탈퇴사유</label>
										<textarea class="form-control" id="qclientResn"
											placeholder="" readonly></textarea>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput5">기 타</label>
										<textarea class="form-control" id="qclientEttc"
											placeholder="" readonly></textarea>
									</div>
								</form>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-outline-danger btn-sm"
								data-dismiss="modal">확인</button>
						</div>
					</div>
					<!-- End Current Projects -->
				</div>
			</div>
		</div>
	</div>
	<!-- Large Size Modal-->
	<script>

		//페이징 처리
		function goList(p) {
			location.href = "outList.do?page=" + p
		}
	</script>
</body>
</html>