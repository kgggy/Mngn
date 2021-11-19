<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" class="no-js">


<head>
<title>시작 페이지</title>

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
<link rel="shortcut icon" href="favicon.ico" type="img/x-icon">

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
<script>
	if ('${param.message}' != '')
		alert("관리자님 환영합니다.");
</script>
</head>



<body>
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
				class="fa fa-bars u-sidebar-invoker__icon--open"></i> <i
				class="fa fa-times u-sidebar-invoker__icon--close"></i>
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
							class="u-sidebar-nav-menu__link active" href="mngMain.do"> <i
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
						<li class="u-sidebar-nav-menu__item clearfix"><a
							class="u-sidebar-nav-menu__link" href="cntList.do"
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
									class="u-sidebar-nav-menu__link active" href="cntList.do">
										<span class="u-sidebar-nav-menu__item-title">사용자 관리</span>
								</a></li>
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="trnList.do"> <span
										class="u-sidebar-nav-menu__item-title">훈련사 관리</span>
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
				<div class="container">
					<div class="row">

						<div class="col-12">
							<div class="card">
								<div class="row no-gutters">
									<div class="col-6 col-xl-3 mb-4">
										<div class="tab-content">
											<div class="card-body media align-items-center px-xl">
												<div class="u-doughnut u-doughnut--70 mr-3 mr-xl-2">
													<canvas class="js-doughnut-chart" width="70" height="70"
														id="orderNum" data-set="[70, 30]"
														data-colors='["#2972fa","#f6f9fc"]'>
                                  					</canvas>
													<div class="u-doughnut__label text-info">${reser}</div>
												</div>

												<div class="media-body">
													<h2 class="h3 text-muted text-uppercase mb-2">
														예약 건수 <i class="fa fa-arrow-up text-success ml-1"></i>
													</h2>
												</div>
											</div>
										</div>
									</div>
									<div class="col-8">
										<div class="card-body">
											<p class="card-text">
											<h3>HEYYO</h3>
											<ul class="typing">
												<br>
												<li>&nbsp&nbsp&nbsp총 ${reser}건의 서비스가 예약되었습니다.</li>
											</ul>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br> <br> <br>


						<div class="col-12">
							<div class="card">
								<div class="row no-gutters">
									<div class="col-sm-6 col-xl-3 mb-4">
										<div class="tab-content">
											<div class="card-body media align-items-center px-xl-3">
												<div class="u-doughnut u-doughnut--70 mr-3 mr-xl-2">
													<canvas class="js-doughnut-chart" width="70" height="70"
														data-target="cancleNum" data-set="[60, 40]"
														data-colors='["#fab633","#f6f9fc"]'>
                                    </canvas>

													<div class="u-doughnut__label text-warning">${clientNo}</div>
												</div>

												<div class="media-body">
													<h5 class="h3 text-muted text-uppercase mb-2">
														가입 회원수 <i class="fa fa-arrow-up text-success ml-1"></i>
													</h5>
												</div>
											</div>
										</div>
									</div>
									<div class="col-8">
										<div class="card-body">
											<h3>주간 회원 유입 현황</h3>
											<ul class="typing">
												<br>
												<li>&nbsp&nbsp&nbsp총 ${clientNo}명의 회원이 활동중입니다.</li>
											</ul>

										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="col-12">
							<div class="card">
								<div class="row no-gutters">
									<div class="col-sm-6 col-xl-3 mb-4">
										<div class="tab-content">
											<div class="card-body media align-items-center px-xl-3">
												<div class="u-doughnut u-doughnut--70 mr-3 mr-xl-2">
													<canvas class="js-doughnut-chart" width="70" height="70"
														data-target="#clientNum" data-set="[55, 45]"
														data-colors='["#0dd157","#f6f9fc"]'>
                                    </canvas>

													<div class="u-doughnut__label text-success">${trainerNo}</div>
												</div>

												<div class="media-body">
													<h5 class="h3 text-muted text-uppercase mb-2">
														훈련사 수 <i class="text-success ml-1"></i>
													</h5>
												</div>
											</div>
										</div>
									</div>
									<div class="col-8">
										<div class="card-body">
											<h3>활동 가능 훈련사</h3>
											<ul class="typing">
												<br>
												<li>&nbsp&nbsp&nbsp돌봄, 산책, 훈련 서비스 제공 가능한 훈련사는 총
													${trainerNo}명 입니다.</li>
												<li><a class="btn btn-outline-danger float-right"
													href="https://docs.google.com/forms/d/1JD-xjZs1GrrhWyR2PdfutfdlKbFt7b5TxSrRhmq6-r8/edit?usp=sharing"> <span>지원서 결과 보기</span>
												</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="col-12">
							<div class="card">
								<div class="row no-gutters">
									<div class="col-sm-6 col-xl-3 mb-4">
										<div class="tab-content">
											<div class="card-body media align-items-center px-xl-3">
												<div class="u-doughnut u-doughnut--70 mr-3 mr-xl-2">
													<canvas class="js-doughnut-chart" width="70" height="70"
														data-target="#trainerNum" data-set="[15, 85]"
														data-colors='["#fb4143","#f6f9fc"]'>
                                    </canvas>

													<div class="u-doughnut__label text-danger">${cancelNo}</div>
												</div>

												<div class="media-body">
													<h5 class="h3 text-muted text-uppercase mb-2">
														취소 건수 <i class="fa fa-arrow-down text-danger ml-1"></i>
													</h5>
												</div>
											</div>
										</div>
									</div>
									<div class="col-8">
										<div class="card-body">
											<h3>취소 건수</h3>
											<ul class="typing">
												<br>
												<li>&nbsp&nbsp&nbsp총 ${cancelNo}건의 주문이 취소되었습니다.</li>
											</ul>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- End Doughnut Chart -->




			<!-- Footer -->
			<footer
				class="astino-footer u-footer d-md-flex align-items-md-center text-center text-md-left">
				<p>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This template is made with <i
						class="ti-heart" aria-hidden="true"></i> by <a
						href="https://colorlib.com" target="_blank">Colorlib</a>.Downloaded
					from <a href="https://themeslab.org/" target="_blank">Themeslab</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
			</footer>
			<!-- End Footer -->
		</div>
	</main>

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


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>

</html>
