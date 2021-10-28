<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


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
</head>
<!-- End Head -->

<body>
	<!-- Header (Topbar) -->
	<header class="astino-header u-header">
		<div class="u-header-left">
			<a class="u-header-logo" href="mngMain.do"> <img
				src="assets/logo.png" width="160"> <img
				class="img-fluid u-logo-mobile" src="assets/img/logo-mobile.png"
				width="50" alt="Stream Dashboard">
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
				<!-- Doughnut Chart -->
				<div class="row">
					<div class="col-sm-6 col-xl-3 mb-4">
						<div class="card">
							<div class="card-body media align-items-center px-xl-3">
								<div class="u-doughnut u-doughnut--70 mr-3 mr-xl-2">
									<canvas class="js-doughnut-chart" width="70" height="70"
										data-set="[65, 35]" data-colors='["#2972fa","#f6f9fc"]'>
                                    </canvas>
									<div class="u-doughnut__label text-info">65</div>
								</div>

								<div class="media-body">
									<h5 class="h6 text-muted text-uppercase mb-2">
										Total Sales <i class="fa fa-arrow-up text-success ml-1"></i>
									</h5>
									<span class="h2 mb-0">$56,400</span>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-xl-3 mb-4">
						<div class="card">
							<div class="card-body media align-items-center px-xl-3">
								<div class="u-doughnut u-doughnut--70 mr-3 mr-xl-2">
									<canvas class="js-doughnut-chart" width="70" height="70"
										data-set="[35, 65]" data-colors='["#fab633","#f6f9fc"]'>
                                    </canvas>

									<div class="u-doughnut__label text-warning">35</div>
								</div>

								<div class="media-body">
									<h5 class="h6 text-muted text-uppercase mb-2">
										Spendings <i class="fa fa-arrow-down text-danger ml-1"></i>
									</h5>
									<span class="h2 mb-0">$6,700</span>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-xl-3 mb-4">
						<div class="card">
							<div class="card-body media align-items-center px-xl-3">
								<div class="u-doughnut u-doughnut--70 mr-3 mr-xl-2">
									<canvas class="js-doughnut-chart" width="70" height="70"
										data-set="[60, 40]" data-colors='["#0dd157","#f6f9fc"]'>
                                    </canvas>

									<div class="u-doughnut__label text-success">60</div>
								</div>

								<div class="media-body">
									<h5 class="h6 text-muted text-uppercase mb-2">
										Income <i class="fa fa-arrow-up text-success ml-1"></i>
									</h5>
									<span class="h2 mb-0">$38,200</span>
								</div>
							</div>
						</div>
					</div>

					<div class="col-sm-6 col-xl-3 mb-4">
						<div class="card">
							<div class="card-body media align-items-center px-xl-3">
								<div class="u-doughnut u-doughnut--70 mr-3 mr-xl-2">
									<canvas class="js-doughnut-chart" width="70" height="70"
										data-set="[25, 85]" data-colors='["#fb4143","#f6f9fc"]'>
                                    </canvas>

									<div class="u-doughnut__label text-danger">25</div>
								</div>

								<div class="media-body">
									<h5 class="h6 text-muted text-uppercase mb-2">
										Cancels <i class="fa fa-arrow-up text-danger ml-1"></i>
									</h5>
									<span class="h2 mb-0">$3,400</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- End Doughnut Chart -->

				<!-- Overall Income -->
				<div class="card mb-4">
					<!-- Card Header -->
					<header class="card-header d-md-flex align-items-center">
						<h2 class="h3 card-header-title">Overall Income</h2>

						<!-- Nav Tabs -->
						<ul id="overallIncomeTabsControl"
							class="nav nav-tabs card-header-tabs ml-md-auto mt-3 mt-md-0">
							<li class="nav-item mr-4"><a class="nav-link active"
								href="#overallIncomeTab1" role="tab" aria-selected="true"
								data-toggle="tab"> <span class="d-none d-md-inline">Last</span>
									7 days
							</a></li>
							<li class="nav-item mr-4"><a class="nav-link"
								href="#overallIncomeTab2" role="tab" aria-selected="false"
								data-toggle="tab"> <span class="d-none d-md-inline">Last</span>
									30 days
							</a></li>
							<li class="nav-item"><a class="nav-link"
								href="#overallIncomeTab3" role="tab" aria-selected="false"
								data-toggle="tab"> <span class="d-none d-md-inline">Last</span>
									90 days
							</a></li>
						</ul>
						<!-- End Nav Tabs -->
					</header>
					<!-- End Card Header -->

					<!-- Card Body -->
					<div class="card-body">
						<div class="tab-content" id="overallIncomeTabs">
							<!-- Tab Content -->
							<div class="tab-pane fade show active" id="overallIncomeTab1"
								role="tabpanel">
								<div class="row">
									<!-- Chart -->
									<div class="col-md-9 mb-4 mb-md-0" style="min-height: 300px;">
										<canvas class="js-overall-income-chart" width="1000"
											height="300"></canvas>
									</div>
									<!-- End Chart -->

									<div class="col-md-3">
										<!-- Total Income -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span class="u-indicator u-indicator--xxs bg-primary mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Total
														Income</h5>
												</div>

												<div class="d-flex align-items-center h4 text-success">
													<span>+9.5%</span> <span class="small"> <i
														class="fa fa-arrow-up ml-2"></i>
													</span>
												</div>
											</div>
											<span class="h3 mb-0">$6,400</span>
										</div>
										<!-- End Total Income -->

										<hr>

										<!-- Total Installs -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span
														class="u-indicator u-indicator--xxs bg-secondary mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Total
														Installs</h5>
												</div>

												<div class="d-flex align-items-center h4 text-success">
													<span>+7.5%</span> <span class="small"> <i
														class="fa fa-arrow-up ml-2"></i>
													</span>
												</div>
											</div>

											<span class="h3 mb-0">1,346,600</span>
										</div>
										<!-- End Total Installs -->

										<hr>

										<!-- Active Users -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span class="u-indicator u-indicator--xxs bg-info mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Active
														Users</h5>
												</div>

												<div class="d-flex align-items-center h4 text-danger">
													<span>-3.5%</span> <span class="small"> <i
														class="fa fa-arrow-down ml-2"></i>
													</span>
												</div>
											</div>

											<span class="h3 mb-0">896,200</span>
										</div>
										<!-- End Active Users -->

										<hr>

										<a class="btn btn-block btn-outline-danger" href="#">Learn
											More</a>
									</div>
								</div>
							</div>
							<!-- End Tab Content -->

							<!-- Tab Content -->
							<div class="tab-pane fade" id="overallIncomeTab2" role="tabpanel">
								<div class="row">
									<!-- Chart -->
									<div class="col-md-9 mb-4 mb-md-0" style="min-height: 300px;">
										<canvas class="js-overall-income-chart" width="1000"
											height="300"></canvas>
									</div>
									<!-- End Chart -->

									<div class="col-md-3">
										<!-- Total Income -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span class="u-indicator u-indicator--xxs bg-primary mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Total
														Income</h5>
												</div>

												<div class="d-flex align-items-center h4 text-success">
													<span>+10.4%</span> <span class="small"> <i
														class="fa fa-arrow-up ml-2"></i>
													</span>
												</div>
											</div>
											<span class="h3 mb-0">$48,650</span>
										</div>
										<!-- End Total Income -->

										<hr>

										<!-- Total Installs -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span
														class="u-indicator u-indicator--xxs bg-secondary mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Total
														Installs</h5>
												</div>

												<div class="d-flex align-items-center h4 text-success">
													<span>+7.9%</span> <span class="small"> <i
														class="fa fa-arrow-up ml-2"></i>
													</span>
												</div>
											</div>

											<span class="h3 mb-0">5,169,854</span>
										</div>
										<!-- End Total Installs -->

										<hr>

										<!-- Active Users -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span class="u-indicator u-indicator--xxs bg-info mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Active
														Users</h5>
												</div>

												<div class="d-flex align-items-center h4 text-danger">
													<span>-2.5%</span> <span class="small"> <i
														class="fa fa-arrow-down ml-2"></i>
													</span>
												</div>
											</div>

											<span class="h3 mb-0">389,545</span>
										</div>
										<!-- End Active Users -->

										<hr>

										<a class="btn btn-block btn-outline-primary" href="#">Learn
											More</a>
									</div>
								</div>
							</div>
							<!-- End Tab Content -->

							<!-- Tab Content -->
							<div class="tab-pane fade" id="overallIncomeTab3" role="tabpanel">
								<div class="row">
									<!-- Chart -->
									<div class="col-md-9 mb-4 mb-md-0" style="min-height: 300px;">
										<canvas class="js-overall-income-chart" width="1000"
											height="300"></canvas>
									</div>
									<!-- End Chart -->

									<div class="col-md-3">
										<!-- Total Income -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span class="u-indicator u-indicator--xxs bg-primary mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Total
														Income</h5>
												</div>

												<div class="d-flex align-items-center h4 text-success">
													<span>+12.8%</span> <span class="small"> <i
														class="fa fa-arrow-up ml-2"></i>
													</span>
												</div>
											</div>
											<span class="h3 mb-0">$112,800</span>
										</div>
										<!-- End Total Income -->

										<hr>

										<!-- Total Installs -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span
														class="u-indicator u-indicator--xxs bg-secondary mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Total
														Installs</h5>
												</div>

												<div class="d-flex align-items-center h4 text-success">
													<span>+8.1%</span> <span class="small"> <i
														class="fa fa-arrow-up ml-2"></i>
													</span>
												</div>
											</div>

											<span class="h3 mb-0">9,151,304</span>
										</div>
										<!-- End Total Installs -->

										<hr>

										<!-- Active Users -->
										<div>
											<div class="media align-items-center">
												<div class="media-body d-flex align-items-baseline">
													<span class="u-indicator u-indicator--xxs bg-info mr-2"></span>
													<h5 class="h6 text-muted text-uppercase mb-1">Active
														Users</h5>
												</div>

												<div class="d-flex align-items-center h4 text-danger">
													<span>-1.5%</span> <span class="small"> <i
														class="fa fa-arrow-down ml-2"></i>
													</span>
												</div>
											</div>

											<span class="h3 mb-0">3252,191</span>
										</div>
										<!-- End Active Users -->

										<hr>

										<a class="btn btn-block btn-outline-primary" href="#">Learn
											More</a>
									</div>
								</div>
							</div>
							<!-- End Tab Content -->
						</div>
					</div>
					<!-- End Card Body -->
				</div>
				<!-- End Overall Income -->
			</div>

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
</body>

</html>
