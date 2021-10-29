<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- Head -->

<head>
    <title>판매 목록</title>

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
                <div class="row">
                    <!-- Current Projects -->
                    <div class="col-md-12 mb-4">
                        <div class="card h-100">
                            <header class="card-header d-flex align-items-center">
                                <h2 class="h2 card-header-title">판매 목록</h2>

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
                                                <th scope="col" class="text-dark">Invoicce</th>
                                                <th scope="col" class="text-dark">Customer</th>
                                                <th scope="col" class="text-dark">Date</th>
                                                <th scope="col" class="text-dark">Amount</th>
                                                <th scope="col" class="text-dark">Status</th>
                                                <th scope="col" class="text-dark">Tracking</th>
                                                <th scope="col" class="text-dark"></th>
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
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-success bg-soft-success inline">Delivered</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck3" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck3"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-success bg-soft-success inline">Delivered</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck4" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck4"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-danger bg-soft-danger inline">Pending</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck5" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck5"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-danger bg-soft-danger inline">Pending</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck6" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck6"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-danger bg-soft-danger inline">Pending</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck7" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck7"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-success bg-soft-success inline">Delivered</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck8" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck8"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-success bg-soft-success inline">Delivered</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck9" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck9"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-danger bg-soft-danger inline">Pending</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck10" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck10"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-danger bg-soft-danger inline">Pending</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck11" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck11"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">003452</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-danger bg-soft-danger inline">Pending</td>
                                                <td>IN332942</td>
                                                 <td>
                                                    <button type="button" onclick="location.href='salesList.do' "class="btn btn-outline-danger btn-sm">상세보기</button>
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
                                    <a class="page-link" href="mngMain.do"><span class="ml-1 d-none d-xl-inline-block">이전으로</span></a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">1</a>
                                </li>
                                <li class="page-item active">
                                    <a class="page-link" href="#">2</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">3</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">4</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#">5</a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link" href="#"><span class="mr-1 d-none d-xl-inline-block">다음으로</span></a>
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