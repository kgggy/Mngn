<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<!-- Head -->
	<head>
		<title>Modals | Stream - Dashboard UI Kit</title>

		<!-- Meta -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="keywords" content="Bootstrap Theme, Freebies, Dashboard, MIT license">
		<meta name="description" content="Stream - Dashboard UI Kit">
		<meta name="author" content="htmlstream.com">

		<!-- Favicon -->
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

    <!-- Web Fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

    <!-- Components Vendor Styles -->
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" href="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

    <!-- Theme Styles -->
    <link rel="stylesheet" href="assets/css/theme.css">
	</head>
	<!-- End Head -->

	<body>
    <!-- Header (Topbar) -->
    <header class="u-header">
      <div class="u-header-left">
        <a class="u-header-logo" href="mHome.do">
					<img class="u-logo-desktop" src="assets/img/logo.png" width="160" alt="Stream Dashboard">
					<img class="img-fluid u-logo-mobile" src="assets/img/logo-mobile.png" width="50" alt="Stream Dashboard">
        </a>
      </div>

      <div class="u-header-middle">
        <a class="js-sidebar-invoker u-sidebar-invoker" href="#!"
           data-is-close-all-except-this="true"
           data-target="#sidebar">
          <i class="fa fa-bars u-sidebar-invoker__icon--open"></i>
          <i class="fa fa-times u-sidebar-invoker__icon--close"></i>
        </a>
      </div> 
	  
        <!-- User Profile -->
        <div class="dropdown ml-2">
          <a class="link-muted d-flex align-items-center" href="#!" role="button" id="dropdownMenuLink" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown">
            <img class="u-avatar--xs img-fluid rounded-circle mr-2" src="assets/img/avatars/img1.jpg" alt="User Profile">
            <span class="text-dark d-none d-sm-inline-block">
              Bruce Goodman <small class=""></small>
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
                    <a class="u-sidebar-logo" href="mHome.do">
                        <img class="img-fluid" src="assets/img/logo.png" width="124" alt="Stream Dashboard">
                    </a>
                </header>

                <nav class="u-sidebar-nav">
                    <ul class="u-sidebar-nav-menu u-sidebar-nav-menu--top-level">
                        <!-- 주간 리포트 -->
                        <li class="u-sidebar-nav-menu__item">
                            <a class="u-sidebar-nav-menu__link" href="mHome.do">
                                <i class="fas fa-th-large u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">주간 리포트</span>
                            </a>
                        </li>
                        <!-- End 주간 리포트 -->

                        <!-- 공지사항 관리 -->
                        <li class="u-sidebar-nav-menu__item clearfix">
                            <a class="u-sidebar-nav-menu__link" href="boardList.do" data-target="#baseUI">
                                <i class="far fa-edit u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">공지사항 관리</span>
                                <i class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i>
                                <span class="u-sidebar-nav-menu__indicator"></span>
                            </a>

                            <ul id="baseUI" class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level text-center" style="display: none;">
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="boardList.do">
                                        <span class="u-sidebar-nav-menu__item-title">공지사항 수정/삭제</span>
                                    </a>
                                </li>
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="boardForm.do">
                                        <span class="u-sidebar-nav-menu__item-title">공지사항 등록</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- End 공지사항 관리 -->

                        <!-- 회원 관리 -->
                        <li class="u-sidebar-nav-menu__item clearfix">
                            <a class="u-sidebar-nav-menu__link active" href="memberList.do" data-target="#subMenu22">
                                <i class="fab fa-product-hunt u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">회원관리</span>
                                <i class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i>
                                <span class="u-sidebar-nav-menu__indicator"></span>
                            </a>

                            <ul id="subMenu22" class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level text-center" style="display: none;">
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="memberList.do">
                                        <span class="u-sidebar-nav-menu__item-title">사용자 관리</span>
                                    </a>
                                </li>
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="trainerList.do">
                                        <span class="u-sidebar-nav-menu__item-title">훈련사 관리</span>
                                    </a>
                                </li>
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="dropMemberList.do">
                                        <span class="u-sidebar-nav-menu__item-title" style=text-align:right>탈퇴회원 관리</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- End 회원 관리 -->

                        <!-- 서비스 관리-->
                        <li class="u-sidebar-nav-menu__item">
                            <a class="u-sidebar-nav-menu__link" href="serviceList.do">
                                <i class="fas fa-cogs u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">서비스 관리</span>
                            </a>
                        </li>
                        <!-- End 서비스 관리 -->

                        <!-- 정산 관리 -->
                        <li class="u-sidebar-nav-menu__item clearfix">
                            <a class="u-sidebar-nav-menu__link" href="salesList.do" data-target="#subMenu2">
                                <i class="fas fa-ticket-alt u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">정산 관리</span>
                                <i class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i>
                                <span class="u-sidebar-nav-menu__indicator"></span>
                            </a>

                            <ul id="subMenu2" class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level" style="display: none;">
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="salesList.do">
                                        <span class="u-sidebar-nav-menu__item-title">판매 정산</span>
                                    </a>
                                </li>
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="salaryList.do">
                                        <span class="u-sidebar-nav-menu__item-title">급여 정산</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- End 정산 관리 -->

                    </ul>
                </nav>
            </div>
        </aside>
        <!-- End Sidebar -->

			<div class="u-content">
				<div class="u-body">
          <!-- End Breadcrumb -->
          <div class="mb-4">
            <nav aria-label="breadcrumb">
              <h1 class="h3">Modals</h1>
              <ol class="breadcrumb bg-transparent small p-0">
                <li class="breadcrumb-item"><a href="./index.html">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">UI Components</li>
              </ol>
            </nav>
          </div>
          <!-- End Breadcrumb -->

					<!-- Modal Types & Positions -->
          <div class="card mb-4">
            <div class="card-header">
              <h2 class="h3 card-header-title">Modal Types &amp; Positions</h2>
            </div>

           
            <div class="card-body">
							<div class="row">
								<div class="col-md-4 mb-3 mb-md-0">
									<a class="link-muted d-block text-center" data-toggle="modal" href="#exampleModal">
										<img class="img-fluid d-block mb-3" src="./assets/img/ui-kit/modals/modal-basic.jpg" alt="Htmlstream">
										<span class="font-weight-semibold">Basic modal</span>
									</a>
								</div>

								<div class="col-md-4 mb-3 mb-md-0">
									<a class="link-muted d-block text-center" data-toggle="modal" href="#exampleModalCenter">
										<img class="img-fluid d-block mb-3" src="./assets/img/ui-kit/modals/modal-vertically-centered.jpg" alt="Htmlstream">
										<span class="font-weight-semibold">Vertically centered modal</span>
									</a>
								</div>

								<div class="col-md-4 mb-3 mb-md-0">
									<a class="link-muted d-block text-center" data-toggle="modal" href="#exampleModalLong">
										<img class="img-fluid d-block mb-3" src="./assets/img/ui-kit/modals/modal-long.jpg" alt="Htmlstream">
										<span class="font-weight-semibold">Scrolling long content</span>
									</a>
								</div>
							</div>
            </div>
          </div>
          <!-- End Modal Types & Positions -->

					<!-- Modal Sizes -->
          <div class="card">
            <div class="card-header">
              <h2 class="h3 card-header-title">Modal Sizes</h2>
            </div>

            <div class="card-body">
							<div class="row">
								<div class="col-md-4 mb-3 mb-md-0">
									<a class="link-muted d-block text-center" data-toggle="modal" href=".bd-example-modal-sm">
										<img class="img-fluid d-block mb-3" src="./assets/img/ui-kit/modals/modal-small.jpg" alt="Htmlstream">
										<span class="font-weight-semibold">Small size</span>
									</a>
								</div>

								<div class="col-md-4">
									<a class="link-muted d-block text-center" data-toggle="modal" href=".bd-example-modal-lg">
										<img class="img-fluid d-block mb-3" src="./assets/img/ui-kit/modals/modal-large.jpg" alt="Htmlstream">
										<span class="font-weight-semibold">Large size</span>
									</a>
								</div>
							</div>
            </div>
          </div>
          <!-- End Modal Sizes -->
				</div>

				<!-- Footer -->
				<footer class="u-footer d-md-flex align-items-md-center text-center text-md-left text-muted">
					<p class="h5 mb-2 mb-md-0">More freebies on <a class="link-muted" href="https://htmlstream.com/" target="_blank">Htmlstream</a></p>

					<p class="h5 mb-0 ml-auto">
						&copy; 2018 <a class="link-muted" href="https://htmlstream.com/" target="_blank">Htmlstream</a>. All Rights Reserved.
					</p>
				</footer>
				<!-- End Footer -->
			</div>
		</main>

		<!-- Basic Modals -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Basic Modals</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						Woohoo, you're reading this text in a modal!
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div>
		<!-- End Basic Modals -->

		<!-- Vertically Centered Modals -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Vertically Centered Modal</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<header class="astino-pr-form-header">
                    <h2 class="h1 card-header-title">사용자 상세 정보</h2>
                </header>
                <div class="row">
                    <!-- Current Projects -->
                    <div class="col-md-12 mb-4">
                        <div class="card h-100">
                            <div class="astino-pr-form card-body">
                                <form>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput">아이디</label>
                                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="heyyolove">
                                    </div>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput2">이  름</label>
                                        <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="고수">
                                    </div>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput3">주  소</label>
                                        <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="대구광역시 동구 안심로">
                                    </div>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput4">가입날짜</label>
                                        <span class="form-icon-wrapper">
                                            <span class="form-icon form-icon--left">
                                                <i class="fa fa-calendar form-icon__item"></i>
                                            </span>
                                            <input id="formGroupExampleInput4" class="form-control exp-date form-icon-input-left datepicker" type="email" placeholder="15 OCT 2021">
                                        </span>
                                    </div>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput5">특이사항</label>
                                        <textarea class="form-control" id="formGroupExampleInput5" placeholder="달님(개), 별님(고양이) 돌봄서비스 자주 이용 고객"></textarea>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
					
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		 </div>
		</div>
		<!-- End Vertically Centered Modals -->

		<!-- Scrolling Long Content -->
		<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>

						<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>

						<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>

						<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>

						<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>

						<p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>

						<p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>

						<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div>
		<!-- End Scrolling Long Content -->

		<!-- Small Size -->
		<div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Small Size</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						...
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div>
		<!-- End Small Size -->

		<!-- Large Size -->
		<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Large Size</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						...
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save changes</button>
					</div>
				</div>
			</div>
		</div>
		<!-- End Large Size -->

    <!-- Global Vendor -->
    <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
    <script src="assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
    <script src="assets/vendor/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/vendor/bootstrap/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>

    <!-- Initialization  -->
    <script src="assets/js/sidebar-nav.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>