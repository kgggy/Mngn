<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Animal</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/themify-icons.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/gijgo.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/slicknav.css">
<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

<!-- Components Vendor Styles -->
<link rel="stylesheet" href="assets/vendor/font-awesome/css/all.min.css">

<!-- Theme Styles -->
<link rel="stylesheet" href="assets/css/theme.css">
<!-- Theme Styles -->

<!-- JS here -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/scrollIt.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/gijgo.min.js"></script>

<!--contact js-->
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>

<script src="js/main.js"></script>

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js">
	
</script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"
	integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U"
	crossorigin="anonymous">
	
</script>
<script
	src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
	integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
	crossorigin="anonymous">
	
</script>
<style>
#no {
	font-weight: bold;
	font-size: 35px;
	color: #ff3500;
}

#nop {
	margin: 20px 0 20px 60px;
	font-size: 25px;
}

.tab {
	margin-left: 200px;
}

h3 {
	margin-left: 50px;
}

#section {
	margin-left: 100px;
}

#study {
	width: 800px;
	height: 500px;
	margin-left: 170px;
	border-radius: 30%;
	cursor: pointer;
}

.header-area .main-header-area .main-menu ul li a {
	color: #102955;
	font-size: 16px;
	text-transform: capitalize;
	font-weight: 500;
	display: inline-block;
	font-family: "Poppins", sans-serif;
	position: relative;
	text-transform: capitalize;
	padding: 15px;
}

#cntn {
	border: none;
}

.ebtn {
	padding: 8px 15px;
	font-size: 20px;
	border: 1px solid #ff3500;
	color: #ff3500;
	background-color: #fff;
	border-radius: 10px;
	margin: 0 30px;
}

.ebtn:hover {
	color: #fff;
	background-color: #f45f26;
	cursor: pointer;
}

#trans:hover {
	cursor: pointer;
}
</style>
<script>
	$(document).ready(function() {
		$("#trans").on("click", function() {
			var con = confirm("사용자로 전환하시겠습니까?")
			if (con == true) {
				location.href = "cntProfile.do"
			} else {
				return;
			}
		});
	})
</script>
</head>

<body>
	<header>
		<div class="header-area ">
			<div id="sticky-header" class="main-header-area">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-3 col-lg-3">
							<div class="logo">
								<h1 style="font-weight: bolder">
									<a href="trnMain.do"><img src="img/logo1.png"> HEYYO</a>
								</h1>
							</div>
						</div>
						<div class="col-xl-9 col-lg-9">
							<div class="main-menu  d-none d-lg-block">
								<nav>
									<ul id="navigation">
										<li><a href="trnSal.do">의뢰 및 관리</a></li>
										<li><a>마이페이지<i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="trnProfile.do">내 프로필 관리</a></li>
												<li><a href="home.do">로그아웃</a></li>

											</ul></li>
										<li>
											<!-- Notifications -->
											<div class="dropdown mr-4">
												<a class="link-muted" href="#!" role="button"
													id="dropdownMenuLink" aria-haspopup="true"
													aria-expanded="false" data-toggle="dropdown"> <span
													class="h3"> <i class="far fa-bell"></i>
												</span> <span
													class="u-indicator u-indicator-top-right u-indicator--xxs bg-info"></span>
												</a>

												<div
													class="dropdown-menu dropdown-menu-right border-0 py-0 mt-4"
													aria-labelledby="dropdownMenuLink" style="width: 360px;">
													<div class="card">
														<div class="card-header d-flex align-items-center py-3">
															<h2 class="h4 card-header-title">알림 내역</h2>
														</div>

														<div class="card-body p-0">
															<div class="list-group list-group-flush">
																<!-- Notification -->
																<a class="list-group-item list-group-item-action"
																	href="#">
																	<div class="media align-items-center">
																		<div
																			class="u-icon u-icon--sm rounded-circle bg-danger text-white mr-3">
																			<i class="fab fa-dribbble"></i>
																		</div>

																		<div class="media-body">
																			<div class="d-flex align-items-center">
																				<h4 class="mb-1">Dribbble</h4>
																				<small class="text-muted ml-auto">23 Jan
																					2018</small>
																			</div>

																			<p class="text-truncate mb-0"
																				style="max-width: 250px;">
																				<span class="text-primary">@htmlstream</span> just
																				liked your post!
																			</p>
																		</div>
																	</div>
																</a>
																<!-- End Notification -->
															</div>
														</div>

														<div class="card-footer py-3">
															<a class="btn btn-block btn-outline-primary" href="#">확인</a>
														</div>
													</div>
												</div>
											</div> <!-- End Notifications -->
										</li>
										<li><a class="link-muted d-flex align-items-center"
											role="button" id="dropdownMenuLink" aria-haspopup="true"
											aria-expanded="false" data-toggle="dropdown"> <span
												class="d-none d-sm-inline-block" style="width: 210px;">
													<strong>${name }&nbsp;훈련사님, 환영합니다!</strong>
											</span>
										</a></li>
									</ul>
								</nav>
							</div>
						</div>
						<div class="col-12">
							<div class="mobile_menu d-block d-lg-none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row" id="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>${client.name}프로필관리</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END nav -->
<body>
	<div class="row" align="center">
		<div class="col-md-6 ml-auto mr-auto">
			<div class="profile">
				<div class="avatar" align="center">
					<img
						src="https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0NjQzOTk4OTQ4OTkyMzQy/ansel-elgort-poses-for-a-portrait-during-the-baby-driver-premiere-2017-sxsw-conference-and-festivals-on-march-11-2017-in-austin-texas-photo-by-matt-winkelmeyer_getty-imagesfor-sxsw-square.jpg"
						alt="Circle Image" class="img-raised rounded-circle img-fluid"
						id="profile-image">
					<div>
						<h3 class="title">${trainer.intro_ttl}</h3>
						<input type="text" name="intro_cntn" id="cntn"
							value="${trainer.intro_cntn }" readonly>
					</div>
				</div>
			</div>

			<div class="section-top-border" align="center">
				<form action="#" method="post">
					<div class="mt-10">
						<input type="text" name="id" placeholder="id"
							value="${client.client_id}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'id'" required class="single-input">
					</div>
					<div class="mt-10">
						<input type="password" name="pwd" placeholder="pwd"
							value="${client.pwd}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'password'" class="single-input">
					</div>
					<div class="mt-10">
						<input type="text" name="name" placeholder="name"
							value="${client.name}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Name'" required class="single-input">
					</div>
					<div class="mt-10">
						<input type="number" name="post_no" placeholder="post_no"
							value="${client.post_no}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'post_no'" required
							class="single-input">
					</div>
					<div class="input-group-icon mt-10">
						<div class="icon">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<input type="text" name="adres1" placeholder="adres1"
							value="${client.adres1}" onfocus="this.placeholder = '주소'"
							onblur="this.placeholder = 'adres1'" class="single-input">
						<input type="text" name="adres2" placeholder="adres2"
							value="${client.adres2}" onfocus="this.placeholder = '주소'"
							onblur="this.placeholder = 'adres2'" class="single-input">
					</div>

					<div class="mt-10">
						<input type="text" name="phone" placeholder="phone"
							value="${client.phone}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'phone'" class="single-input-primary">
					</div>
					<div class="mt-10">
						<input type="text" name="email" placeholder="email"
							value="${client.email}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'email'" class="single-input-primary">
					</div>
					<!-- 훈련사 모드전환 했을때 -->
					<div class="mt-10">
						<button type="fileupload">보유자격증추가</button>
						<input type="text" name="file_no" placeholder="file_no"
							value="${trainer.file_no}" onfocus="this.placeholder = 'file_no'"
							onblur="this.placeholder = 'file_no'"
							class="single-input-primary">
					</div>

					<div class="mt-10">
						<input type="button" name="day_off" placeholder="day_off" value=""
							onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'day_off'"
							class="single-input-primary">

						<button>Mon</button>
						<button>Tue</button>
						<button>Wed</button>
						<button>Thu</button>
						<button>Fri</button>
						<button>Sat</button>
						<button>Sun</button>
					</div>

					<div class="mt-10">
						<input type="text" name="제공가능 서비스분야" placeholder="service"
							value="${trainer.work_time}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'service'"
							class="single-input-primary">
					</div>

					<div class="mt-10">
						<input type="text" name="가능지역" placeholder="possible_area"
							value="${trainer.work_loc1}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'possible_area'"
							class="single-input-primary">
					</div>
					<div class="mt-10">
						<input type="text" name="가능지역" placeholder="possible_area"
							value="${trainer.work_loc2}" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'possible_area'"
							class="single-input-primary">
					</div>
					<br>
					<div align="center">
						<button type="button" id="trans">사용자모드 전환</button>
						<button type="button" onclick="location.href='cntProfileEdit.do'"
							class="ebtn">수정</button>
					</div>
				</form>
			</div>
			<br> <br>
			<div id="withdraw">
				멍냥꽁냥 회원을 탈퇴하시겠습니까? <a href="mOut.do" class="withdraw">회원탈퇴하기</a>
			</div>
		</div>
	</div>
	<!-- footer_start  -->
	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row"></div>
			</div>
		</div>
		<div class="copyright" align="center">
			<h3>HEYYO</h3>
			<p>고객센터 문의 : babyofbear@gmail.com</p>
		</div>
		<div class="copy-right_text">
			<div class="container">
				<div class="bordered_1px"></div>
				<div class="row">
					<div class="col-xl-12" align="center">
						<p class="copy_right text-center">
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
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- footer_end  -->
</body>


</html>