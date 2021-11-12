<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	if ('${param.message}' != '')
		alert("${message}");
</script>
</head>
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
								동물을 사랑하는 마음은 물론, 반려동물 관련 자격증 또는 <br> 전문 지식을 갖춘 분들이 전문
								펫시터로 활동하고 있습니다.
							</p>
							<div></div>
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

	<!-- service_area_start  -->
	<div class="service_area">
		<div class="container">
			<div class="row justify-content-center ">
				<div class="col-lg-7 col-md-10">
					<div class="section_title text-center mb-95">
						<h3>
							안심하고 <br>서비스를 이용하세요!
						</h3>
						<p>까다로운 펫시터 선발·관리 체계와 안전 시스템을 구축하였습니다</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-lg-4 col-md-6">
					<div class="single_service">
						<div
							class="service_thumb service_icon_bg_1 d-flex align-items-center justify-content-center">
							<div class="service_icon">
								<img src="img/service/service_icon_1.png" alt="">
							</div>
						</div>
						<div class="service_content text-center">
							<h3>엄선된 전문 훈련사</h3>
							<p>
								신분증 사본 제출, 등초본 인증, <br /> 펫시터 계약서로 신원을 검증합니다.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_service active">
						<div
							class="service_thumb service_icon_bg_1 d-flex align-items-center justify-content-center">
							<div class="service_icon">
								<img src="img/service/service_icon_2.png" alt="">
							</div>
						</div>
						<div class="service_content text-center">
							<h3>실시간 사진 및 영상 공유</h3>
							<p>
								서비스 중의 실시간 사진과 <br /> 영상이 실시간으로 중계됩니다.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_service">
						<div
							class="service_thumb service_icon_bg_1 d-flex align-items-center justify-content-center">
							<div class="service_icon">
								<img src="img/service/service_icon_3.png" alt="">
							</div>
						</div>
						<div class="service_content text-center">
							<h3>안전 보상 프로그램</h3>
							<p>서비스 이용중 예상치 못한 문제 발생시 <br/> 체계적인 안전보상이 적용됩니다.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- service_area_end -->
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
							<p>지금까지 저희와 함께 해주신 여러분 모두 감사합니다!
							<br/> 앞으로도 계속 헤이요 이용해주실 거죠?</p>
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
	<!-- 주석추가 -->

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
</body>
</html>
