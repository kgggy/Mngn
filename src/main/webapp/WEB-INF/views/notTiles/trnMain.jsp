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

.chat {
	z-index: 10;
	position: fixed;
	right: 0px;
	bottom: 0px;
	background-color: #fff;
	border-top-left-radius: 20px;
	width: 200px;
	height: 100px;
	line-height: 100px;
	cursor: pointer;
}

#chatt {
	cursor: pointer;
	border: none;
	outline: none;
	background-color: #fff;
}

#foot {
	width: 50px;
	height: 50px;
	border-radius: 50%;
	width: 50px;
}

.chatting {
	font-weight: bolder;
	color: #444;
	font-size: 20px;
	line-height: 110px;
}

.modal {
	position: fixed;
	right: 0px;
	bottom: 0px;
	width: 400px;
	height: 600px;
	border: 3px soild #ff3500;
}

.modal-content {
	position: fixed;
	right: 20px;
	bottom: 20px;
	width: 380px;
	height: 700px;
	border: 3px soild #ff3500;
	background-color: #fdfdfefa;
	box-shadow: 5px 10px 80px 5px #ea351617;
	border-radius: 50px;
}

.close {
	margin-right: 50px;
	font-size: 1.5rem;
	font-weight: 700;
	line-height: 1;
	color: #000;
	text-shadow: 0 1px 0 #fff;
	opacity: .5;
	float: right;
}
</style>
<script>
	$(function() {
		// Get the modal
		var modal = document.getElementById("light");

		// Get the button that opens the modal
		var btn = document.getElementById("chatt");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	});
</script>
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
										<li><a href="trnSal.do">?????? ??? ??????</a></li>
										<li><a>???????????????<i class="ti-angle-down"></i></a>
											<ul class="submenu">
												<li><a href="trnProfile.do">??? ????????? ??????</a></li>
												<li><a href="home.do">????????????</a></li>

											</ul></li>
										<li><a class="link-muted d-flex align-items-center"
											role="button" id="dropdownMenuLink" aria-haspopup="true"
											aria-expanded="false" data-toggle="dropdown"> <span
												class="d-none d-sm-inline-block" style="width: 200px;">
													<strong>${name }???, ???????????????!</strong>
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
								???????????????, ${name }????????????! <br> ??????????????? ?????? ???????????? ????????? ???????????????.
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
						<h3 id="h3">????????????, ??????????????? ?????????????????? ????????????.</h3>
						<br /> <br />
						<div class="tab">
							<h4 id="no">??????,</h4>
							<p id="nop">??????????????? ??????????????? ????????????????????????.</p>
							<h4 id="no">??????,</h4>
							<p id="nop">??????????????? ????????? ??????????????? ??????????????????.</p>
							<h4 id="no">??????,</h4>
							<p id="nop">???????????? ???????????? ????????? ???????????????.</p>
							<h4 id="no">??????,</h4>
							<p id="nop">??????????????? ?????? ?????? ??????????????? ????????? ?????????.</p>
							<h4 id="no">?????????,</h4>
							<p id="nop">??????????????? ????????? ????????? ????????? ??????????????? ????????????.</p>
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
						<h3>????????? ????????? ?????? ????????? ???????????????.</h3>
						<p id="nop">
							?????? ??????????????? ???????????? ?????? ?????? ????????? ???????????????. <br /> ?????????????????? ???????????? ?????? ?????? ??? ??????
							???????????? ????????? ??? ?????? ????????????.
						</p>
						<small style="color: #ff3500">?????? ???????????? ???????????? ?????? ????????? ????????????
							???????????????.</small>
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
	<br>
	<br>
	<!-- pet_care_area_end  -->

	<!-- team_area_start  -->

	<div class="contact_anipat anipat_bg_1">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="contact_text text-center">
						<div class="section_title text-center">
							<h3>???????????? ????????? ????????????????</h3>
							<p>???????????? ????????? ?????? ????????? ??????????????????.</p>
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
			<p>???????????? ?????? : babyofbear@gmail.com</p>
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
	<script>
	$.ajax({
        url : "chat.do",
        type : 'POST',
        data : {
           client_id : ${sessionScope.id}
        },
        dataType : "html",
        success : function(data) {
           $("#modalBody").html(data);
        }
     });

	</script>
</body>
</html>