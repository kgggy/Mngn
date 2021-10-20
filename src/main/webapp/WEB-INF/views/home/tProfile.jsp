<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.myButton {
	background-color: #00dbd3;
	border-radius: 28px;
	border: 1px solid #00dbd3;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 17px;
	padding: 5px 30px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #00dbd3;
}

.myButton:hover {
	background-color: #01c4be;
}

.myButton:active {
	position: relative;
	top: 0.3px;
}

.container-1 {
	vertical-align: middle;
	white-space: nowrap;
	position: relative;
}

.container-1 input#search {
	width: 300px;
	height: 40px;
	background: #ffffff;
	border: none;
	font-size: 10pt;
	float: left;
	color: #63717f;
	padding-left: 45px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

.container-1 .icon {
	top: 50%;
	margin-left: 1px;
	margin-top: 17px;
	z-index: 1;
	color: #4f5b66;
}

input::-ms-input-placeholder {
	color: #444444;
}

input::-webkit-input-placeholder {
	color: #444444;
}

input::-moz-placeholder {
	color: #444444;
}
</style>
</head>
<body>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Veterinarian <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread">Meet Our Veterinary Doctor</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="box">
			<span class="icon"><i class="fa fa-search"></i></span> 
				<div class="container-1">
					<input
						type="search" id="search" onclick="execution_daum_address()"
						value="주소를 입력해주세요." readonly />
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="search"
						id="search" placeholder="상세주소를 입력해주세요." /> &nbsp;&nbsp;&nbsp; <a
						href="#" class="myButton">검색</a>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(images/staff-1.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<a href="Tdetails.do"><h3>권가영 훈련사</h3></a> <span
								class="position mb-2">Health Coach</span>
							<div class="faded">
								<p>안녕하세요. 동물을 사랑하는 훈련사 권가영 입니다 :)</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(images/staff-2.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Rachel Parker</h3>
							<span class="position mb-2">Life &amp; Business Coach</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(images/staff-3.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Ian Smith</h3>
							<span class="position mb-2">Executive Coach</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(images/staff-4.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Alicia Henderson</h3>
							<span class="position mb-2">Health Coach</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(images/staff-5.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Lloyd Wilson</h3>
							<span class="position mb-2">Executive Coach</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(images/staff-6.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Rachel Parker</h3>
							<span class="position mb-2">Health Coach</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(images/staff-7.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Ian Smith</h3>
							<span class="position mb-2">Health Coach</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch"
								style="background-image: url(images/staff-8.jpg);"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>Fred Henderson</h3>
							<span class="position mb-2">Executive Coach</span>
							<div class="faded">
								<p>I am an ambitious workaholic, but apart from that, pretty
									simple person.</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function execution_daum_address() {

			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

				}
			}).open();

		}
	</script>
	<!-- 고침! -->
</body>
</html>