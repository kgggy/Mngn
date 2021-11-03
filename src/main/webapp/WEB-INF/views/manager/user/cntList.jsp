<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script>
	$(document).ready(function() {
		$('#exampleModalCenter').on('show.bs.modal', function(event) {
			var tr = $(event.relatedTarget).closest('tr')
			var data0 = tr.find('td:eq(0)').html()
			var data1 = tr.find('td:eq(1)').html()
			var data2 = tr.find('td:eq(2)').html()
			var data5 = tr.find('td:eq(5)').html()
			var data6 = tr.find('td:eq(6)').html()
			var data7 = tr.find('td:eq(7)').html()
			$(this).find('.modal-body #clientId').val(data0)
			$(this).find('.modal-body #clientName').val(data1)
			$(this).find('.modal-body #clientPhone').val(data2)
			$(this).find('.modal-body #clientAdres').val(data5)
			$(this).find('.modal-body #clientJdate').val(data6)
			$(this).find('.modal-body #clientEmail').val(data7)
		})
	});
</script>
</head>
<!-- End Head -->

<body class="page-customer-info">
	<!-- Header (Topbar) -->
	<header class="astino-header u-header">
		<div class="u-header-left">
			<a class="u-header-logo" href="home.do"> <img
				src="assets/logo.png" width="160">
			</a>
		</div>

		<div class="u-header-middle">
			<a class="js-sidebar-invoker u-sidebar-invoker" href="#!"
				data-is-close-all-except-this="true" data-target="#sidebar"> <i
				class="fa fa-bars u-sidebar-invoker__icon--open"></i> <i
				class="fa fa-times u-sidebar-invoker__icon--close"></i>
			</a>
		</div>

		<!-- User Profile -->
		<div class="astino-user-top-corner dropdown ml-2">
			<a class="link-muted d-flex align-items-center" href="#!"
				role="button" id="dropdownMenuLink" aria-haspopup="true"
				aria-expanded="false" data-toggle="dropdown"> <img
				class="u-avatar--xs img-fluid rounded-circle mr-2"
				src="assets/img/avatars/img.png" alt="User Profile"> <span
				class="d-none d-sm-inline-block"> Criss Donald <small
					class=""></small>
			</span>
			</a>
		</div>
		<!-- End User Profile -->
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
							class="u-sidebar-nav-menu__link" href="boardList.do"> <i
								class="far fa-edit u-sidebar-nav-menu__item-icon"></i> <span
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

						<!-- 서비스 관리-->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="svcList.do"> <i
								class="fas fa-cogs u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">서비스 관리</span>
						</a></li>
						<!-- End 서비스 관리 -->

						<!-- 정산 관리 -->
						<li class="u-sidebar-nav-menu__item clearfix"><a
							class="u-sidebar-nav-menu__link" href="salesList.do"
							data-target="#subMenu2"> <i
								class="fas fa-ticket-alt u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">판매 및 정산 관리</span> <i
								class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i> <span
								class="u-sidebar-nav-menu__indicator"></span>
						</a>

							<ul id="subMenu2"
								class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level"
								style="display: none;">
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="salesList.do"> <span
										class="u-sidebar-nav-menu__item-title">판매 내역</span>
								</a></li>
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="salaryList.do"> <span
										class="u-sidebar-nav-menu__item-title">정산 내역</span>
								</a></li>
							</ul></li>
						<!-- End 정산 관리 -->

					</ul>
				</nav>
			</div>
		</aside>
		<!-- End Sidebar -->

		<div class="u-content">
			<div class="u-body">
				<header class="product-all-content-header d-flex align-items-center">
					<h2 class="h1 card-header-title">사용자 목록</h2>
				</header>
				<div class="row">
					<!-- Current Projects -->
					<div class="col-md-12 mb-4">
						<div class="card h-100">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover">
										<thead>
											<tr>
												<th scope="col" class="text-dark">ID</th>
												<th scope="col" class="text-dark">이 름</th>
												<th scope="col" class="text-dark">전화번호</th>
												<th scope="col" class="text-dark">상 태</th>
												<th scope="col" class="text-dark"></th>
											</tr>
										</thead>

										<tbody>
											<c:forEach var="client" items="${clients}">
												<tr>
													<td>${client.client_id }</td>
													<td>${client.name }</td>
													<td>${client.phone }</td>
													<td class="text-success">활동중</td>
													<td>
														<input type="button"
														class="btn btn-outline-danger" value="상세보기" id="btnSearch"
														data-toggle="modal" data-target="#exampleModalCenter" />
													</td>
													<td style="display: none;">${client.adres1} ${client.adres2}</td>
													<td style="display: none;">${client.join_dt }</td>
													<td style="display: none;">${client.email}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- End Current Projects -->
				</div>
				<div class="row justify-content-between align-items-center mb-4">
					<div class="col-sm">
						<nav aria-label="Bootstrap Pagination Example">
							<ul class="pagination mb-0">
								<li class="page-item"><a class="page-link"
									href="mngMain.do"><span
										class="ml-1 d-none d-xl-inline-block">이전으로</span></a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#"><span
										class="mr-1 d-none d-xl-inline-block">다음으로</span></a></li>
							</ul>
						</nav>
					</div>
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
					<h3 class="modal-title" id="exampleModalLabel">회원 상세정보</h3>
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
											type="text" class="form-control" id="clientId"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput2">이 름</label> <input
											type="text" class="form-control" id="clientName"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput3">주 소</label> <input
											type="text" class="form-control" id="clientAdres"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput3">연락처</label> <input
											type="text" class="form-control" id="clientPhone"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput3">이메일</label> <input
											type="text" class="form-control" id="clientEmail"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput4">가입날짜</label> <input
											type="text" class="form-control" id="clientJdate"
											placeholder="" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput5">특이사항</label>
										<textarea class="form-control" id="formGroupExampleInput5"
											placeholder="특이사항 table에 column 없음 달님(개), 별님(고양이) 돌봄서비스 자주 이용 고객"></textarea>
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
</body>
</html>