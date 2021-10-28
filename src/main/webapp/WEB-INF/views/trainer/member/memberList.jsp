<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<!-- Head -->
	<head>
		<title>사용자 목록</title>

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
        <div class="astino-user-top-corner dropdown ml-2">
                <a class="link-muted d-flex align-items-center" href="#!" role="button" id="dropdownMenuLink" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown">
                    <img class="u-avatar--xs img-fluid rounded-circle mr-2" src="assets/img/avatars/img.png" alt="User Profile">
                    <span class="d-none d-sm-inline-block">
                        Criss Donald <small class=""></small>
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
			<header class="product-all-content-header d-flex align-items-center">
                    <h2 class="h1 card-header-title">사용자 목록</h2>
            </header>

					<!-- Modal Types & Positions -->
          <div class="card mb-4">
            <div class="card-body">
				<div class="row">
					                    <!-- Current Projects -->
                    <div class="col-md-12 mb-4">
                        <div class="card h-100">
                            

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="text-dark">
                                                    <div class="custom-control custom-checkbox">
                                                        <input id="" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for=""><span class="text-dark"></span></label>
                                                    </div>
                                                </th>
                                                <th scope="col" class="text-dark">ID</th>
                                                <th scope="col" class="text-dark">이  름</th>
                                                <th scope="col" class="text-dark">전화번호</th>
                                                <th colspan="2" scope="col" class="text-dark">주  소</th>
                                                <th scope="col" class="text-dark">상  태</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-1.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heylove</td>
                                                <td>김사랑</td>
                                                <td>010-5394-1787</td>
                                                <td>서울특별시 강남구 서초동 현대아파트 110-1206</td>
                                                <td class="text-success">활동중</td>
                                                <td>
                                                	<button type="button" data-toggle="modal" href="#exampleModalCenter"class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-2.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heyyopeople</td>
                                                <td>최수정</td>
                                                <td>010-1548-6893</td>
                                                <td>서울특별시 강남구 도곡동 대림이편한 101-206</td>
                                                <td class="text-success">활동중</td>
                                                <td>
                                                    <button type="button" onclick="location.href='memberModal.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-3.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heyyopeople</td>
                                                <td>최수정</td>
                                                <td>010-1548-6893</td>
                                                <td>서울특별시 강남구 도곡동 대림이편한 101-206</td>
                                                <td class="text-success">활동중</td>
                                                <td>
                                                    <button type="button" onclick="location.href='memberSelectList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-4.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heyyopeople</td>
                                                <td>최수정</td>
                                                <td>010-1548-6893</td>
                                                <td>서울특별시 강남구 도곡동 대림이편한 101-206</td>
                                                <td class="text-warning">휴면계정</td>
                                                <td>
                                                    <button type="button" onclick="location.href='memberSelectList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-2.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heyyopeople</td>
                                                <td>최수정</td>
                                                <td>010-1548-6893</td>
                                                <td>서울특별시 강남구 도곡동 대림이편한 101-206</td>
                                                <td class="text-success">활동중</td>
                                                <td>
                                                    <button type="button" onclick="location.href='memberSelectList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-3.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heyyopeople</td>
                                                <td>최수정</td>
                                                <td>010-1548-6893</td>
                                                <td>서울특별시 강남구 도곡동 대림이편한 101-206</td>
                                                <td class="text-success">활동중</td>
                                                <td>
                                                    <button type="button" onclick="location.href='memberSelectList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-1.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heyyopeople</td>
                                                <td>최수정</td>
                                                <td>010-1548-6893</td>
                                                <td>서울특별시 강남구 도곡동 대림이편한 101-206</td>
                                                <td class="text-success">활동중</td>
                                                <td>
                                                    <button type="button" onclick="location.href='memberSelectList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-3.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heyyopeople</td>
                                                <td>최수정</td>
                                                <td>010-1548-6893</td>
                                                <td>서울특별시 강남구 도곡동 대림이편한 101-206</td>
                                                <td class="text-success">활동중</td>
                                                <td>
                                                    <button type="button" onclick="location.href='memberSelectList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox d-flex align-items-center">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2">
                                                           <span class="text-dark">
                                                               <img class="rounded ml-4" src="assets/img/customers/cs-4.png" alt=""> 
                                                           </span>
                                                        </label>
                                                    </div>
                                                </td>
                                                <td>heyyopeople</td>
                                                <td>최수정</td>
                                                <td>010-1548-6893</td>
                                                <td>서울특별시 강남구 도곡동 대림이편한 101-206</td>
                                                <td class="text-success">활동중</td>
                                                <td>
                                                    <button type="button" onclick="location.href='memberSelectList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
				
				

								<!-- <div class="col-md-4 mb-3 mb-md-0">
									<a class="link-muted d-block text-center" data-toggle="modal" href="#exampleModalCenter">
										<img class="img-fluid d-block mb-3" src="./assets/img/ui-kit/modals/modal-vertically-centered.jpg" alt="Htmlstream">
										<span class="font-weight-semibold">Vertically centered modal</span>
									</a>
								</div>
 -->
							
				</div>
            </div>
          </div>
          <!-- End Modal Types & Positions -->

				
				<!-- Footer -->
				<footer class="u-footer d-md-flex align-items-md-center text-center text-md-left text-muted">
					<p class="h5 mb-2 mb-md-0">More freebies on <a class="link-muted" href="https://htmlstream.com/" target="_blank">Htmlstream</a></p>

					<p class="h5 mb-0 ml-auto">
						&copy; 2018 <a class="link-muted" href="https://htmlstream.com/" target="_blank">Htmlstream</a>. All Rights Reserved.
					</p>
				</footer>
				<!-- End Footer -->
			</div>
		</div>
		</main>

		<!-- Vertically Centered Modals -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title" id="exampleModalLongTitle">사용자 상세 정보</h3>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
			<div class="modal-body">
				<!-- <header class="astino-pr-form-header">
                    <h2 class="h1 card-header-title">사용자 상세 정보</h2>
                </header> -->
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
                                        <label for="formGroupExampleInput4">특이사항</label>
                                        <textarea class="form-control" id="formGroupExampleInput4" placeholder="달님(개), 별님(고양이) 돌봄서비스 자주 이용 고객"></textarea>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
				</div>
				
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">확인</button>
						<!-- <button type="button" class="btn btn-primary">Save changes</button> -->
					</div>
				</div>
			</div>
		 </div>
		</div>
		<!-- End Vertically Centered Modals -->


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