<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>HEYYO의 훈련사를 소개합니다!</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: "
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5"><br><br><br></div>
			</div>
		</div>
	</section>

	<div class="col-lg-4">
		<form action="#">
			<div class="form-group">
				<div class="input-group mb-3">
					<input type="search" id="search" class="form-control"
						onclick="execution_daum_address()" placeholder='주소를 입력해주세요.'
						onfocus="this.placeholder = ''"
						onblur="this.placeholder = '주소를 입력해주세요.'">
					<div class="input-group-append">
						<button class="btn" type="button">
							<i class="ti-search"></i>
						</button>
					</div>
				</div>
			</div>
			<button
				class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
				type="submit">검색하기</button>
		</form>
	</div>

	<div class="testmonial_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<div class="testmonial_wrap">
						<div class="single_testmonial d-flex align-items-center" onclick="location.href='tDetails.do'">
							<div class="test_thumb">
								<img src="img/testmonial/1.png" alt="">
							</div>
							<div class="test_content">
								<h4>권가영 훈련사</h4>
								<span>대구시 달서구</span>
								<span>별점 넣기</span>
								<p>안녕하세요. 동물을 사랑하는 훈련사 권가영 입니다 :)</p>
							</div>
						</div>
					</div>
					<br> <br>
					<div class="testmonial_wrap">
						<div class="single_testmonial d-flex align-items-center">
							<div class="test_thumb">
								<img src="img/testmonial/1.png" alt="">
							</div>
							<div class="test_content">
								<h4>Jhon Walker</h4>
								<span>Head of web design</span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
							</div>
						</div>
					</div>
					<br> <br>
					<div class="testmonial_wrap">
						<div class="single_testmonial d-flex align-items-center">
							<div class="test_thumb">
								<img src="img/testmonial/1.png" alt="">
							</div>
							<div class="test_content">
								<h4>Jhon Walker</h4>
								<span>Head of web design</span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
							</div>
						</div>
					</div>
					<br> <br>
					<div class="testmonial_wrap">
						<div class="single_testmonial d-flex align-items-center">
							<div class="test_thumb">
								<img src="img/testmonial/1.png" alt="">
							</div>
							<div class="test_content">
								<h4>Jhon Walker</h4>
								<span>Head of web design</span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
							</div>
						</div>
					</div>
					<br> <br>
					<div class="testmonial_wrap">
						<div class="single_testmonial d-flex align-items-center">
							<div class="test_thumb">
								<img src="img/testmonial/1.png" alt="">
							</div>
							<div class="test_content">
								<h4>Jhon Walker</h4>
								<span>Head of web design</span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim ad minim veniam, quis nostrud exerci.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav class="blog-pagination justify-content-center d-flex">
		<ul class="pagination">
			<li class="page-item"><a href="#" class="page-link"
				aria-label="Previous"> <i class="ti-angle-left"></i>
			</a></li>
			<li class="page-item"><a href="#" class="page-link">1</a></li>
			<li class="page-item active"><a href="#" class="page-link">2</a>
			</li>
			<li class="page-item"><a href="#" class="page-link"
				aria-label="Next"> <i class="ti-angle-right"></i>
			</a></li>
		</ul>
	</nav>
	<br><br><br>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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