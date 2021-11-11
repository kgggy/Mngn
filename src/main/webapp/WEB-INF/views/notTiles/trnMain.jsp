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
</style>
</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

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
										<li><a class="link-muted d-flex align-items-center"
											role="button" id="dropdownMenuLink" aria-haspopup="true"
											aria-expanded="false" data-toggle="dropdown"> <span
												class="d-none d-sm-inline-block" style="width: 200px;">
													<strong>${name }님, 환영합니다!</strong>
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

	<!-- slider_area_start -->
	<div class="slider_area">
		<div class="single_slider slider_bg_1 d-flex align-items-center">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-6">
						<div class="slider_text">
							<h3>
								<br> <span>HEY, YO!</span>
							</h3>
							<p>
								안녕하세요, ${name }훈련사님! <br> 반려동물을 위해 힘써주는 당신을 응원합니다.
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="dog_thumb d-none d-lg-block">
				<img src="img/banner/dog.png">
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- slider_area_end -->
	<!-- pet_care_area_start  -->
	<div class="pet_care_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="pet_info">
					<div class="section_title">
						<h3 id="h3">훈련사님, 유의사항을 숙지해주시길 바랍니다.</h3>
						<br /> <br />
						<div class="tab">
							<h4 id="no">첫째,</h4>
							<p id="nop">책임감없이 반려동물을 훈련시키지마세요.</p>
							<h4 id="no">둘째,</h4>
							<p id="nop">보호자님께 충분히 유의사항을 알려드리세요.</p>
							<h4 id="no">셋째,</h4>
							<p id="nop">보호자와 불필요한 접촉을 하지마세요.</p>
							<h4 id="no">넷째,</h4>
							<p id="nop">반려동물을 필요 외에 강압적으로 대하지 마세요.</p>
							<h4 id="no">다섯째,</h4>
							<p id="nop">훈련사로서 꾸준한 교육을 들으며 자기개발을 해주세요.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- pet_care_area_end  -->
	<!-- pet_care_area_start  -->
	<div class="pet_care_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="pet_info">
					<div class="section_title" align="center" id="section">
						<h3>훈련과 돌봄에 관한 교육을 들어보세요.</h3>
						<p id="nop">
							현재 온라인에서 제공되고 있는 훈련 교육을 들어보세요. <br /> 반려동물들을 케어하는 데에 있어 더 나은
							서비스를 제공할 수 있을 것입니다.
						</p>
						<small style="color: #ff3500">아래 이미지를 클릭하게 되면 온라인 수강실로
							이동합니다.</small>
					</div>
					<div>
						<img src="img/study.jpg"
							onclick="location.href='http://www.ebspetedu.co.kr/page.php?menuSeq=529'"
							id="study">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- pet_care_area_end  -->
	<div class="testmonial_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="pet_info">
						<div class="section_title" align="center" style="padding: 50px">
							<h3>실시간 후기</h3>
						</div>
					</div>
					<div class="textmonial_active owl-carousel">
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img src="img/testmonial/1.png" alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img src="img/testmonial/1.png" alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img src="img/testmonial/1.png" alt="">
								</div>
								<div class="test_content">
									<h4>Jhon Walker</h4>
									<span>Head of web design</span>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- testmonial_area_end  -->

	<!-- team_area_start  -->

	<div class="contact_anipat anipat_bg_1">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="contact_text text-center">
						<div class="section_title text-center">
							<h3>궁금하신 사항이 있으신가요?</h3>
							<p>고객센터 이메일 혹은 전화로 문의바랍니다.</p>
						</div>
						<div
							class="contact_btn d-flex align-items-center justify-content-center">

							<p>
								<a href="#">babyofbear@gmail.com</a>&nbsp;&nbsp;&nbsp;Or&nbsp;&nbsp;<a
									href="#"> +880 4664 216</a>
							</p>
						</div>
					</div>
				</div>
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
	<script>
		$('#datepicker').datepicker({
			iconsLibrary : 'fontawesome',
			disableDaysOfWeek : [ 0, 0 ],
		//     icons: {
		//      rightIcon: '<span class="fa fa-caret-down"></span>'
		//  }
		});
		$('#datepicker2').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}

		});
		var timepicker = $('#timepicker').timepicker({
			format : 'HH.MM'
		});
	</script>
</body>
</html>