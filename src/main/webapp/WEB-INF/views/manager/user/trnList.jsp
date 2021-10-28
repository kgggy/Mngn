<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
    <title>훈련사 목록</title>

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

<body class="page-coupon-all">
    <!-- Header (Topbar) -->
    <header class="astino-header u-header">
        <div class="u-header-left">
            <a class="u-header-logo" href="mngMain.do">
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
                    <a class="u-sidebar-logo" href="mngMain.do">
                        <img class="img-fluid" src="assets/img/logo.png" width="124" alt="Stream Dashboard">
                    </a>
                </header>

                <nav class="u-sidebar-nav">
                    <ul class="u-sidebar-nav-menu u-sidebar-nav-menu--top-level">
                        <!-- 주간 리포트 -->
                        <li class="u-sidebar-nav-menu__item">
                            <a class="u-sidebar-nav-menu__link" href="mngMain.do">
                                <i class="fas fa-th-large u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">주간 리포트</span>
                            </a>
                        </li>
                        <!-- End 주간 리포트 -->

                        <!-- 공지사항 관리 -->
                        <li class="u-sidebar-nav-menu__item">
                            <a class="u-sidebar-nav-menu__link" href="boardList.do">
                                <i class="far fa-edit u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">공지사항 관리</span>
                            </a>
                        </li>
                        <!-- End 공지사항 관리 -->

                        <!-- 회원 관리 -->
                        <li class="u-sidebar-nav-menu__item clearfix">
                            <a class="u-sidebar-nav-menu__link" href="cntList.do" data-target="#subMenu22">
                                <i class="fab fa-product-hunt u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">회원관리</span>
                                <i class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i>
                                <span class="u-sidebar-nav-menu__indicator"></span>
                            </a>

                            <ul id="subMenu22" class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level text-center" style="display: none;">
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link active" href="cntList.do">
                                        <span class="u-sidebar-nav-menu__item-title">사용자 관리</span>
                                    </a>
                                </li>
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="trnList.do">
                                        <span class="u-sidebar-nav-menu__item-title">훈련사 관리</span>
                                    </a>
                                </li>
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="outList.do">
                                        <span class="u-sidebar-nav-menu__item-title">탈퇴회원 관리</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- End 회원 관리 -->

                        <!-- 서비스 관리-->
                        <li class="u-sidebar-nav-menu__item">
                            <a class="u-sidebar-nav-menu__link" href="svcList.do">
                                <i class="fas fa-cogs u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">서비스 관리</span>
                            </a>
                        </li>
                        <!-- End 서비스 관리 -->

                        <!-- 정산 관리 -->
                        <li class="u-sidebar-nav-menu__item clearfix">
                            <a class="u-sidebar-nav-menu__link" href="salesList.do" data-target="#subMenu2">
                                <i class="fas fa-ticket-alt u-sidebar-nav-menu__item-icon"></i>
                                <span class="u-sidebar-nav-menu__item-title">판매 및 정산 관리</span>
                                <i class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i>
                                <span class="u-sidebar-nav-menu__indicator"></span>
                            </a>

                            <ul id="subMenu2" class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level" style="display: none;">
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="salesList.do">
                                        <span class="u-sidebar-nav-menu__item-title">판매 내역</span>
                                    </a>
                                </li>
                                <li class="u-sidebar-nav-menu__item">
                                    <a class="u-sidebar-nav-menu__link" href="salaryList.do">
                                        <span class="u-sidebar-nav-menu__item-title">정산 내역</span>
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
                <header class="astino-pr-form-header">
                    <h2 class="h1 card-header-title">훈련사 목록</h2>
                </header>
                <div class="row">
                        
                    <!-- single-coupon -->
                    <div class="col-md-6 mb-4">
                        <article class="single-coupon card">
                            <div class="card-body">
                                <div class="row align-items-center">
                                    <aside class="col-xl-4">
                                        <div class="offer-range">
                                            <a href="" class="offer-edit text-danger">보기</a>
                                            <span class="offer-percent rounded-circle bg-soft-success image-success align-items-center">
												<img class="u-avatar--xs img-fluid rounded-circle mr-2" src="assets/img/avatars/img.png" alt="User Profile">										
                                            </span>
                                        </div>
                                    </aside> <!-- col.// -->
                                    <main class="col-xl-8">
                                        <div class="astino-pr-form pr-form-sm card-body">
                                            <form class="clearfix">
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput">Item Name</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Headphone">
                                                </div>
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput2">Code</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="FG346788">
                                                </div>                                                
                                                <div class="form-group d-flex align-items-center">
                                                    <label for="formGroupExampleInput4">Expiary Date</label>
                                                    <span class="form-icon-wrapper">
                                                        <span class="form-icon form-icon--left">
                                                            <i class="fa fa-calendar form-icon__item"></i>
                                                        </span>
                                                        <input id="formGroupExampleInput4" class="form-control exp-date form-icon-input-left datepicker" type="email" placeholder="15 NOV 2020">
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </main> <!-- col.// -->
                                </div> <!-- row.// -->
                            </div> <!-- card-body .// -->
                        </article>
                    </div>
                    <!-- End Single Coupon -->
                    
                    <!-- single-coupon -->
                    <div class="col-md-6 mb-4">
                        <article class="single-coupon card">
                            <div class="card-body">
                                <div class="row align-items-center no-gutters">
                                    <aside class="col-xl-4">
                                        <div class="offer-range">
                                            <a href="" class="offer-edit text-danger">Edit</a>
                                            <span class="offer-percent rounded-circle bg-soft-warning text-warning align-items-center">
                                                50%
                                            </span>
                                        </div>
                                    </aside> <!-- col.// -->
                                    <main class="col-xl-8">
                                        <div class="astino-pr-form pr-form-sm card-body">
                                            <form class="clearfix">
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput">Item Name</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Headphone">
                                                </div>
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput2">Code</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="FG346788">
                                                </div>                                                
                                                <div class="form-group d-flex align-items-center">
                                                    <label for="formGroupExampleInput4">Expiary Date</label>
                                                    <span class="form-icon-wrapper">
                                                        <span class="form-icon form-icon--left">
                                                            <i class="fa fa-calendar form-icon__item"></i>
                                                        </span>
                                                        <input id="formGroupExampleInput4" class="form-control exp-date form-icon-input-left datepicker" type="email" placeholder="15 NOV 2020">
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </main> <!-- col.// -->
                                </div> <!-- row.// -->
                            </div> <!-- card-body .// -->
                        </article>
                    </div>
                    <!-- End Single Coupon -->
                    
                    <!-- single-coupon -->
                    <div class="col-md-6 mb-4">
                        <article class="single-coupon card">
                            <div class="card-body">
                                <div class="row align-items-center no-gutters">
                                    <aside class="col-xl-4">
                                        <div class="offer-range">
                                            <span class="offer-percent rounded-circle bg-soft-danger text-danger align-items-center">
                                                50%
                                            </span>
                                        </div>
                                    </aside> <!-- col.// -->
                                    <main class="col-xl-8">
                                        <div class="astino-pr-form pr-form-sm card-body">
                                            <form class="clearfix">
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput">Item Name</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Headphone">
                                                </div>
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput2">Code</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="FG346788">
                                                </div>                                                
                                                <div class="form-group d-flex align-items-center">
                                                    <label for="formGroupExampleInput4">Expiary Date</label>
                                                    <span class="form-icon-wrapper">
                                                        <span class="form-icon form-icon--left">
                                                            <i class="fa fa-calendar form-icon__item"></i>
                                                        </span>
                                                        <input id="formGroupExampleInput4" class="form-control exp-date form-icon-input-left datepicker" type="email" placeholder="15 NOV 2020">
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </main> <!-- col.// -->
                                </div> <!-- row.// -->
                            </div> <!-- card-body .// -->
                        </article>
                    </div>
                    <!-- End Single Coupon -->
                    
                    <!-- single-coupon -->
                    <div class="col-md-6 mb-4">
                        <article class="single-coupon card">
                            <div class="card-body">
                                <div class="row align-items-center no-gutters">
                                    <aside class="col-xl-4">
                                        <div class="offer-range">
                                            <a href="" class="offer-edit text-danger">Edit</a>
                                            <span class="offer-percent rounded-circle bg-soft-success text-success align-items-center">
                                              <img class="u-avatar--xs img-fluid rounded-circle mr-2" src="assets/img/avatars/img.png" alt="User Profile">
                                            </span>
                                        </div>
                                    </aside> <!-- col.// -->
                                    <main class="col-xl-8">
                                        <div class="astino-pr-form pr-form-sm card-body">
                                            <form class="clearfix">
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput">Item Name</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Headphone">
                                                </div>
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput2">Code</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="FG346788">
                                                </div>                                                
                                                <div class="form-group d-flex align-items-center">
                                                    <label for="formGroupExampleInput4">Expiary Date</label>
                                                    <span class="form-icon-wrapper">
                                                        <span class="form-icon form-icon--left">
                                                            <i class="fa fa-calendar form-icon__item"></i>
                                                        </span>
                                                        <input id="formGroupExampleInput4" class="form-control exp-date form-icon-input-left datepicker" type="email" placeholder="15 NOV 2020">
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </main> <!-- col.// -->
                                </div> <!-- row.// -->
                            </div> <!-- card-body .// -->
                        </article>
                    </div>
                    <!-- End Single Coupon -->
                    
                    <!-- single-coupon -->
                    <div class="col-md-6 mb-4">
                        <article class="single-coupon card">
                            <div class="card-body">
                                <div class="row d-flex align-items-center no-gutters">
                                    <aside class="col-xl-4">
                                        <div class="offer-range">
                                            <a href="" class="offer-edit text-danger">Edit</a>
                                            <span class="offer-percent rounded-circle bg-soft-warning text-warning align-items-center">
                                                50%
                                            </span>
                                        </div>
                                    </aside> <!-- col.// -->
                                    <main class="col-xl-8">
                                        <div class="astino-pr-form pr-form-sm card-body">
                                            <form class="clearfix">
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput">Item Name</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Headphone">
                                                </div>
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput2">Code</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="FG346788">
                                                </div>                                                
                                                <div class="form-group d-flex align-items-center">
                                                    <label for="formGroupExampleInput4">Expiary Date</label>
                                                    <span class="form-icon-wrapper">
                                                        <span class="form-icon form-icon--left">
                                                            <i class="fa fa-calendar form-icon__item"></i>
                                                        </span>
                                                        <input id="formGroupExampleInput4" class="form-control exp-date form-icon-input-left datepicker" type="email" placeholder="15 NOV 2020">
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </main> <!-- col.// -->
                                </div> <!-- row.// -->
                            </div> <!-- card-body .// -->
                        </article>
                    </div>
                    <!-- End Single Coupon -->
                    
                    <!-- single-coupon -->
                    <div class="col-md-6 mb-4">
                        <article class="single-coupon card">
                            <div class="card-body">
                                <div class="row d-flex align-items-center no-gutters">
                                    <aside class="col-xl-4">
                                        <div class="offer-range">
                                            <a href="" class="offer-edit text-danger">Edit</a>
                                            <span class="offer-percent rounded-circle bg-soft-danger text-danger align-items-center">
                                                50%
                                            </span>
                                        </div>
                                    </aside> <!-- col.// -->
                                    <main class="col-xl-8">
                                        <div class="astino-pr-form pr-form-sm card-body">
                                            <form class="clearfix">
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput">Item Name</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Headphone">
                                                </div>
                                                <div class="form-group d-flex align-items-center mb-2">
                                                    <label for="formGroupExampleInput2">Code</label>
                                                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="FG346788">
                                                </div>                                                
                                                <div class="form-group d-flex align-items-center">
                                                    <label for="formGroupExampleInput4">Expiary Date</label>
                                                    <span class="form-icon-wrapper">
                                                        <span class="form-icon form-icon--left">
                                                            <i class="fa fa-calendar form-icon__item"></i>
                                                        </span>
                                                        <input id="formGroupExampleInput4" class="form-control exp-date form-icon-input-left datepicker" type="email" placeholder="15 NOV 2020">
                                                    </span>
                                                </div>
                                            </form>
                                        </div>
                                    </main> <!-- col.// -->
                                </div> <!-- row.// -->
                            </div> <!-- card-body .// -->
                        </article>
                    </div>
                    <!-- End Single Coupon -->
                </div>
                <div class="row justify-content-between align-items-center mb-4">
                    <div class="col-sm">
                        <nav aria-label="Bootstrap Pagination Example">
                            <ul class="pagination mb-0">
                                <li class="page-item">
                                    <a class="page-link" href="mngMain.do"><span class="ml-1 d-none d-xl-inline-block">이전으로</span></a>
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