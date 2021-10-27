<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- Head -->

<head>
    <title>공지사항 상세보기</title>

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
    <link href="https://fonts.googleapis.com/css2?family=Cabin:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&family=Open+Sans&display=swap" rel="stylesheet">

    <!-- Components Vendor Styles -->
    <link rel="stylesheet" href="assets/vendor/font-awesome/css/all.min.css">
    <link rel="stylesheet" href="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

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

<body class="page-order-all">
    <!-- Header (Topbar) -->
    <header class="astino-header u-header">
        <div class="u-header-left">
            <a class="u-header-logo" href="home.do">
                <img src="assets/logo.png" width="160" >
                <img class="img-fluid u-logo-mobile" src="assets/img/logo-mobile.png" width="50" alt="Stream Dashboard">
            </a>
        </div>

        <div class="u-header-middle">
            <a class="js-sidebar-invoker u-sidebar-invoker" href="#!" data-is-close-all-except-this="true" data-target="#sidebar">
                <i class="fa fa-bars u-sidebar-invoker__icon--open"></i>
                <i class="fa fa-times u-sidebar-invoker__icon--close"></i>
            </a>
        </div>

        <div class="u-header-right">
            <!-- Activities -->
            <div class="dropdown mr-4">
                <div class="dropdown-menu dropdown-menu-right border-0 py-0 mt-4" aria-labelledby="dropdownMenuLink" style="width: 360px;">
                    <div class="card">
                        <div class="card-header d-flex align-items-center py-3">
                            <h2 class="h4 card-header-title">Activities</h2>
                            <a class="ml-auto" href="#">Clear all</a>
                        </div>

                        <div class="card-body p-0">
                            <div class="list-group list-group-flush">
                                <!-- Activity -->
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media align-items-center">
                                        <img class="u-avatar--sm rounded-circle mr-3" src="assets/img/avatars/img1.jpg" alt="Image description">

                                        <div class="media-body">
                                            <div class="d-flex align-items-center">
                                                <h4 class="mb-1">Chad Cannon</h4>
                                                <small class="text-muted ml-auto">23 Jan 2018</small>
                                            </div>

                                            <p class="text-truncate mb-0" style="max-width: 250px;">
                                                We've just done the project.
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <!-- End Activity -->

                                <!-- Activity -->
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media align-items-center">
                                        <img class="u-avatar--sm rounded-circle mr-3" src="assets/img/avatars/img2.jpg" alt="Image description">

                                        <div class="media-body">
                                            <div class="d-flex align-items-center">
                                                <h4 class="mb-1">Jane Ortega</h4>
                                                <small class="text-muted ml-auto">18 Jan 2018</small>
                                            </div>

                                            <p class="text-truncate mb-0" style="max-width: 250px;">
                                                <span class="text-primary">@Bruce</span> advertising your project is not good idea.
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <!-- End Activity -->

                                <!-- Activity -->
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media align-items-center">
                                        <img class="u-avatar--sm rounded-circle mr-3" src="assets/img/avatars/user-unknown.jpg" alt="Image description">

                                        <div class="media-body">
                                            <div class="d-flex align-items-center">
                                                <h4 class="mb-1">Stella Hoffman</h4>
                                                <small class="text-muted ml-auto">15 Jan 2018</small>
                                            </div>

                                            <p class="text-truncate mb-0" style="max-width: 250px;">
                                                When the release date is expexted for the advacned settings?
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <!-- End Activity -->

                                <!-- Activity -->
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media align-items-center">
                                        <img class="u-avatar--sm rounded-circle mr-3" src="assets/img/avatars/img4.jpg" alt="Image description">

                                        <div class="media-body">
                                            <div class="d-flex align-items-center">
                                                <h4 class="mb-1">Htmlstream</h4>
                                                <small class="text-muted ml-auto">05 Jan 2018</small>
                                            </div>

                                            <p class="text-truncate mb-0" style="max-width: 250px;">
                                                Adwords Keyword research for beginners
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <!-- End Activity -->
                            </div>
                        </div>

                        <div class="card-footer py-3">
                            <a class="btn btn-block btn-outline-primary" href="#">View all activities</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Activities -->

            <!-- Notifications -->
            <div class="dropdown mr-4">
                <div class="dropdown-menu dropdown-menu-right border-0 py-0 mt-4" aria-labelledby="dropdownMenuLink" style="width: 360px;">
                    <div class="card">
                        <div class="card-header d-flex align-items-center py-3">
                            <h2 class="h4 card-header-title">Notifications</h2>
                            <a class="ml-auto" href="#">Clear all</a>
                        </div>

                        <div class="card-body p-0">
                            <div class="list-group list-group-flush">
                                <!-- Notification -->
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media align-items-center">
                                        <div class="u-icon u-icon--sm rounded-circle bg-danger text-white mr-3">
                                            <i class="fab fa-dribbble"></i>
                                        </div>

                                        <div class="media-body">
                                            <div class="d-flex align-items-center">
                                                <h4 class="mb-1">Dribbble</h4>
                                                <small class="text-muted ml-auto">23 Jan 2018</small>
                                            </div>

                                            <p class="text-truncate mb-0" style="max-width: 250px;">
                                                <span class="text-primary">@htmlstream</span> just liked your post!
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <!-- End Notification -->

                                <!-- Notification -->
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media align-items-center">
                                        <div class="u-icon u-icon--sm rounded-circle bg-info text-white mr-3">
                                            <i class="fab fa-twitter"></i>
                                        </div>

                                        <div class="media-body">
                                            <div class="d-flex align-items-center">
                                                <h4 class="mb-1">Twitter</h4>
                                                <small class="text-muted ml-auto">18 Jan 2018</small>
                                            </div>

                                            <p class="text-truncate mb-0" style="max-width: 250px;">
                                                Someone mentioned you on the tweet.
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <!-- End Notification -->

                                <!-- Notification -->
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media align-items-center">
                                        <div class="u-icon u-icon--sm rounded-circle bg-success text-white mr-3">
                                            <i class="fab fa-spotify"></i>
                                        </div>

                                        <div class="media-body">
                                            <div class="d-flex align-items-center">
                                                <h4 class="mb-1">Spotify</h4>
                                                <small class="text-muted ml-auto">18 Jan 2018</small>
                                            </div>

                                            <p class="text-truncate mb-0" style="max-width: 250px;">
                                                You've just recived $25 free gift card.
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <!-- End Notification -->

                                <!-- Notification -->
                                <a class="list-group-item list-group-item-action" href="#">
                                    <div class="media align-items-center">
                                        <div class="u-icon u-icon--sm rounded-circle bg-info text-white mr-3">
                                            <i class="fab fa-facebook-f"></i>
                                        </div>

                                        <div class="media-body">
                                            <div class="d-flex align-items-center">
                                                <h4 class="mb-1">Facebook</h4>
                                                <small class="text-muted ml-auto">18 Jan 2018</small>
                                            </div>

                                            <p class="text-truncate mb-0" style="max-width: 250px;">
                                                <span class="text-primary">@htmlstream</span> commented in your post.
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                <!-- End Notification -->
                            </div>
                        </div>

                        <div class="card-footer py-3">
                            <a class="btn btn-block btn-outline-primary" href="#">View all notifications</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Notifications -->

            <!-- Apps -->
            <div class="dropdown mr-4">
                <div class="dropdown-menu dropdown-menu-right border-0 py-0 mt-4" aria-labelledby="dropdownMenuLink" style="width: 360px;">
                    <div class="card">
                        <div class="card-header d-flex align-items-center py-3">
                            <h2 class="h4 card-header-title">Apps</h2>
                            <a class="ml-auto" href="#">Learn more</a>
                        </div>

                        <div class="card-body py-3">
                            <div class="row">
                                <!-- App -->
                                <div class="col-4 px-2 mb-2">
                                    <a class="u-apps d-flex flex-column rounded" href="#!">
                                        <img class="img-fluid u-avatar--xs mx-auto mb-2" src="assets/img/brands-sm/img1.png" alt="">
                                        <span class="text-center">Assana</span>
                                    </a>
                                </div>
                                <!-- End App -->

                                <!-- App -->
                                <div class="col-4 px-2 mb-2">
                                    <a class="u-apps d-flex flex-column rounded" href="#!">
                                        <img class="img-fluid u-avatar--xs mx-auto mb-2" src="assets/img/brands-sm/img2.png" alt="">
                                        <span class="text-center">Slack</span>
                                    </a>
                                </div>
                                <!-- End App -->

                                <!-- App -->
                                <div class="col-4 px-2 mb-2">
                                    <a class="u-apps d-flex flex-column rounded" href="#!">
                                        <img class="img-fluid u-avatar--xs mx-auto mb-2" src="assets/img/brands-sm/img3.png" alt="">
                                        <span class="text-center">Cloud</span>
                                    </a>
                                </div>
                                <!-- End App -->

                                <!-- App -->
                                <div class="col-4 px-2">
                                    <a class="u-apps d-flex flex-column rounded" href="#!">
                                        <img class="img-fluid u-avatar--xs mx-auto mb-2" src="assets/img/brands-sm/img5.png" alt="">
                                        <span class="text-center">Facebook</span>
                                    </a>
                                </div>
                                <!-- End App -->

                                <!-- App -->
                                <div class="col-4 px-2">
                                    <a class="u-apps d-flex flex-column rounded" href="#!">
                                        <img class="img-fluid u-avatar--xs mx-auto mb-2" src="assets/img/brands-sm/img4.png" alt="">
                                        <span class="text-center">Spotify</span>
                                    </a>
                                </div>
                                <!-- End App -->

                                <!-- App -->
                                <div class="col-4 px-2">
                                    <a class="u-apps d-flex flex-column rounded" href="#!">
                                        <img class="img-fluid u-avatar--xs mx-auto mb-2" src="assets/img/brands-sm/img6.png" alt="">
                                        <span class="text-center">Twitter</span>
                                    </a>
                                </div>
                                <!-- End App -->
                            </div>
                        </div>

                        <div class="card-footer py-3">
                            <a class="btn btn-block btn-outline-primary" href="#">View all apps</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Apps -->

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
        </div>
    </header>
    <!-- End Header (Topbar) -->

    <main class="u-main" role="main">
        
          <!-- Sidebar -->
        <aside id="sidebar" class="astino-sidebar u-sidebar">
            <div class="u-sidebar-inner">
                <header class="u-sidebar-header">
                    <a class="u-sidebar-logo" href="home.do">
                        <img class="img-fluid" src="assets/img/logo.png" width="124" alt="Stream Dashboard">
                    </a>
                </header>

                <nav class="u-sidebar-nav">
                    <ul class="u-sidebar-nav-menu u-sidebar-nav-menu--top-level">
                        <!-- 주간 리포트 -->
                        <li class="u-sidebar-nav-menu__item">
                            <a class="u-sidebar-nav-menu__link active" href="home.do">
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
                            <a class="u-sidebar-nav-menu__link" href="memberList.do" data-target="#subMenu22">
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
                <div class="row">
                    <!-- Current Projects -->
                    <div class="col-md-12 mb-4">
                        <div class="card h-100">
                            <header class="card-header d-flex align-items-center">
                                <h2 class="h2 card-header-title">공지사항 List</h2>

                                <!-- Card Header Icon -->
                                <ul class="list-inline ml-auto mb-0">
                                </ul>
                                <!-- End Card Header Icon -->
                            </header>

                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="text-dark">
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for=""><span></span></label>
                                                    </div>
                                                </th>
                                                <th scope="col" class="text-dark">일련번호</th>
                                                <th scope="col" class="text-dark">작성일자</th>
												<th scope="col" class="text-dark">제목</th>
                                                <th colspan="2" scope="col" class="text-dark">내용</th>
                                                <th scope="col" class="text-dark">작성자</th>
                                                <th scope="col" class="text-dark">  </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003456</td>
												<td>22 June 2020</td>
												<td>훈련서비스관련</td>
                                                <td colspan="2" class="text-danger">안녕하세요. HEYYO의 훈련서비스는 회원님과 반려동물이 함께 이용하는 서비스입니다.</td>
                                                <td>Admin</td>
                                                <td>
                                                    <button type="button" onclick="location.href='boardSelectList.do' "class="btn btn-outline-danger btn-sm">수정/삭제</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003455</td>
												<td>22 June 2020</td>
												<td>돌봄서비스관련</td>
                                                <td colspan="2" class="text-danger">안녕하세요. HEYYO의 돌봄서비스는 회원님의 자택에서 이용하는 서비스입니다.</td>
                                                <td>Admin</td>
                                                <td>
                                                    <button type="button" onclick="location.href='boardSelectList.do' "class="btn btn-outline-danger btn-sm">수정/삭제</button>
                                                </td>
                                            </tr>
                                           <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003454</td>
												<td>22 June 2020</td>
												<td>산책서비스관련</td>
                                                <td colspan="2" class="text-danger">안녕하세요. HEYYO를 이용해주셔서 감사합니다. 산책서비스 이용시 목줄을 반드시 준비해주시기 바랍니다.</td>
                                                <td>Admin</td>
                                                <td>
                                                    <button type="button" onclick="location.href='boardSelectList.do' "class="btn btn-outline-danger btn-sm">수정/삭제</button>
                                                </td>
                                            </tr>
                                           <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003453</td>
												<td>22 June 2020</td>
												<td>주말근무안내</td>
                                                <td colspan="2" class="text-danger">안녕하세요. 주말 서비스 제공 관련 안내입니다.</td>
                                                <td>Admin</td>
                                                <td>
                                                    <button type="button" onclick="location.href='boardSelectList.do' "class="btn btn-outline-danger btn-sm">수정/삭제</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
												<td>22 June 2020</td>
												<td>훈련사모집안내</td>
                                                <td colspan="2" class="text-danger">안녕하세요. HEYYO에서 훈련사를 모집합니다.</td>
                                                <td>Admin</td>
                                                <td>
                                                    <button type="button" onclick="location.href='boardSelectList.do' "class="btn btn-outline-danger btn-sm">수정/삭제</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003451</td>
												<td>22 June 2020</td>
												<td>가입축하</td>
                                                <td colspan="2" class="text-danger">안녕하세요. HEYYO 회원가입을 진심으로 감사드립니다.</td>
                                                <td>Admin</td>
                                                <td>
                                                    <button type="button" onclick="location.href='boardSelectList.do' "class="btn btn-outline-danger btn-sm">수정/삭제</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
												<td>22 June 2020</td>
												<td>홈페이지 오픈</td>
                                                <td colspan="2" class="text-danger">안녕하세요. HEYYO가 서비스를 시작합니다.</td>
                                                <td>Admin</td>
                                                <td>
                                                    <button type="button" onclick="location.href='boardSelectList.do' "class="btn btn-outline-danger btn-sm">수정/삭제</button>
                                                </td>
                                            </tr>
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
                                <li class="page-item">
                                    <a class="page-link" href="home.do"><span class="ml-1 d-none d-xl-inline-block">처음으로</span></a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#"><span class="mr-1 d-none d-xl-inline-block">Next</span></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <footer class="astino-footer u-footer d-md-flex align-items-md-center text-center text-md-left">
                <p class="h5 mb-2 mb-md-0">Made with love by <a class="text-danger" href="https://themespell.com/" target="_blank">Themespell</a></p>

                <p class="h5 mb-0 ml-auto">
                    &copy; 2020 <a class="text-danger" href="https://themespell.com/" target="_blank">Themespell</a>. All Rights Reserved.
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
    <script src="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="assets/vendor/chart.js/dist/Chart.min.js"></script>

    <!-- Initialization  -->
    <script src="assets/js/sidebar-nav.js"></script>
    <script src="assets/js/dashboard-page-scripts.js"></script>
</body>

</html>