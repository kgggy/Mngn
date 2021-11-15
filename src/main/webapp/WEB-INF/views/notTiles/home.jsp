<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
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

<script>
	function login() {
		alert("로그인 후 이용해주세요.");
		location.href = "login.do";
	}
</script>
<style>
strong {
	color: #ff3500;
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
								<h2 style="font-weight: bolder">
									<a><img src="img/logo1.png" alt="home.do"> HEYYO</a>
								</h2>
							</div>
						</div>
						<div class="col-xl-9 col-lg-9">
							<div class="main-menu  d-none d-lg-block">
								<nav>
									<ul id="navigation" style="font-weight: bolder">
										<li><a href="login.do">Login</a></li>
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
								전문 훈련사가 직접 방문합니다. <br> 다양한 서비스를 접해보세요.
							</p>
							<div>
								<a href="javascript:login()" class="boxed-btn4">자세히 보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="dog_thumb d-none d-lg-block">
				<img src="img/banner/dog.png" alt="">
			</div>
		</div>
	</div>
	<!-- slider_area_end -->

	<!-- pet_care_area_start  -->
	<div class="pet_care_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-5 col-md-6">
					<div class="pet_thumb">
						<img src="img/about/pet_care.png" alt="">
					</div>
				</div>
				<div class="col-lg-6 offset-lg-1 col-md-6">
					<div class="pet_info">
						<div class="section_title">
							<h3>
								<span>서비스에 대한 </span> <br>설명을 봐주세요!
							</h3>
							<p>
								직접 집에 방문하여 반려동물을 돌봐드리는 <strong>돌봄서비스!</strong><br> 반려견이 신나게
								뛰어다닐 수 있는 <strong>산책서비스!</strong> <br> 문제행동을 하는 반려동물을 바꿔주는
								<strong>훈련서비스!</strong> <br>
							</p>
							<a href="javascript:login()" class="boxed-btn3">자세히 보기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- pet_care_area_end  -->

	<!-- adapt_area_start  -->
	<div class="adapt_area">
		<div class="container">
			<div class="row justify-content-between align-items-center">
				<div class="col-lg-5">
					<div class="adapt_help">
						<div class="section_title">
							<h3>
								<span>저희와 함께해주신</span> 헤이요 식구들!
							</h3>
							<p>
								지금까지 저희와 함께 해주신 여러분 모두 감사합니다! <br /> 앞으로도 계속 헤이요 이용해주실 거죠?
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="adapt_about">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<div class="single_adapt text-center">
									<img src="img/adapt_icon/1.png" alt="">
									<div class="adapt_content">
										<h3 class="counter">875</h3>
										<p>전체 서비스 이용</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="single_adapt text-center">
									<img src="img/adapt_icon/3.png" alt="">
									<div class="adapt_content">
										<h3>
											<span class="counter">176</span>+
										</h3>
										<p>후기</p>
									</div>
								</div>
								<div class="single_adapt text-center">
									<img src="img/adapt_icon/2.png" alt="">
									<div class="adapt_content">
										<h3>
											<span class="counter">10</span>+
										</h3>
										<p>훈련사님들</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- adapt_area_end  -->

	<!-- pet_care_area_start  -->
	<div class="pet_care_area">
		<div class="container">
			<div class="row align-items-center">

				<div class="col-lg-6 offset-lg-1 col-md-6">
					<div class="pet_info">
						<div class="section_title">
							<h3>
								<span>자세히 볼 수 있는 </span> <br> 훈련사의 프로필!
							</h3>
							<p>
								훈련사들의 자격증이나 근무지 등을 알 수 있어요. <br> 본인이 원하는 훈련사에게 예약을 신청할 수
								있어요. <br> 훈련사에 대한 후기를 볼 수 있어요.
							</p>
							<a href="javascript:login()" class="boxed-btn3">자세히 보기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="pet_thumb">
						<img src="img/about/pet_care.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- testmonial_area_start  -->

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
									<h4>이지은</h4>
									<span>21-11-01</span>
									<p>
										사진 너무 귀엽게 찍어주셔서 감사해요. <br />달이가 좋아하는게 보여서 저도 웃을수 있었어요!
									</p>
								</div>
							</div>
						</div>
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img src="img/testmonial/1.png" alt="">
								</div>
								<div class="test_content">
									<h4>강호동</h4>
									<span>21-11-14</span>
									<p>
										요새 종종 출장갈 일이 많은데 자주 이용할 것 같아요. <br />훈련사님 감사합니다 :)
									</p>
								</div>
							</div>
						</div>
						<div class="testmonial_wrap">
							<div class="single_testmonial d-flex align-items-center">
								<div class="test_thumb">
									<img src="img/testmonial/1.png" alt="">
								</div>
								<div class="test_content">
									<h4>강새벽</h4>
									<span>21-11-10</span>
									<p>
										훈련사님이 너무 친절하세요~~ <br />훈련하는 방식 전부 잘 알려주셔서 교육 시킬 때 너무 편했어요!!
									</p>
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
							<h3>해요 파트너로 함께해요!</h3>
							<p>
								반려가족에게 행복한 시간을 선물할 수 있도록 <br>HEYYO와 함께 성장할 파트너를 찾습니다.
							</p>
						</div>
						<div
							class="contact_btn d-flex align-items-center justify-content-center">
							<a href="javascript:login()" class="boxed-btn4">지원하기</a>
							<p>
								Or <a href="#"> +880 4664 216</a>
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