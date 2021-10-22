<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function resv() {
		location.href = "tResv.do"
	}
</script>
<style>
h1 {
	font-weight: bold;
}

h2 {
	font-weight: bold;
}

.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 300%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 80);
	overflow: hidden;
}

.white_content {
	display: none;
	position: absolute;
	top: 130%;
	left: 30%;
	width: 35%;
	height: 31%;
	padding: 16px;
	border-radius: 20px;
	background-color: white;
	z-index: 1002;
	overflow: auto;
	outline: none !important;
}

span {
	padding: 10px 65px 0 70px !important;
	margin-top: 5px;
}
</style>
</head>
<body>
	<!-- bradcam_area_start -->
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>훈련 서비스</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- bradcam_area_end -->
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
								훈련사의 <br> 체계적인 교육!
							</h3>
							<p>
								문제행동을 하는 반려동물 때문에 막막하시던 적 있으신가요? <br> 이제는 헤이요에 맡기세요! <br>
								체계적인 교육 경험을 통해 문제 행동의 개선뿐만 아니라 <br> 반려견의 평생 교육을 책임집니다.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- pet_care_area_end  -->
	<!-- pet_care_area_start  -->
	<div class="pet_care_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 offset-lg-1 col-md-6">
					<div class="pet_info">
						<div class="section_title">
							<h3>
								성향을 고려한 <br> 세심한 교육
							</h3>
							<p>
								성격 유형을 고려한 맞춤 교육은 반려견의 스트레스를 최소화하고, <br>즐거운 교육 참여를 돕습니다.
							</p>
							<a href="javascript:void(0)"
								onclick="document.getElementById
                              ('light').style.display='block';
                              document.getElementById('fade').style.display='block'"
								class="boxed-btn3">예약하기</a>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="pet_thumb">
						<img src="img/about/pet_care.png">
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- testmonial_area_start  -->
	<div id="light" class="white_content" align="center">
		<div>
		<button type="button" class="close" data-dismiss="modal">&times;</button>
			<a class="genric-btn danger-border circle arrow">1시간</a> <a
				class="genric-btn danger-border circle arrow">2시간</a> <a
				class="genric-btn danger-border circle arrow">3시간</a>
			<div>
				<span>₩18,000</span><span>₩34,000</span><span>₩50,000</span>
			</div>
		</div>
		<br />
		<a href="javascript:resv()"
			onclick="document.getElementById
               ('light').style.display='none';
               document.getElementById('fade').style.display='none'"
			class="boxed-btn3">예약 돌봄</a>
	</div>
	<div id="fade" class="black_overlay"></div>
</body>
</html>