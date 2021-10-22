<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HEYYO - 돌봄</title>
<script>
	function resv() {
		location.href = "wResv.do"
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
						<h3>산책 서비스</h3>
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
								언제 어디서든 <br> 훈련사를 부르세요.
							</h3>
							<p>
								강아지의 삶에 가장 중요한 산책을 바쁜 일상으로 인해 자주 미루셨나요? <br>이제는 훈련사에게 강아지의
								안전하고 즐거운 산책을 맡겨보세요! <br>예약 산책으로 언제 어디서든 산책 서비스를 예약할 수 있어요.
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
								안전한 산책과 함께, <br> 깔끔한 마무리
							</h3>
							<p>헤이요에 모든 훈련사는 산책 전문 교육을 수료하였어요. <br>안전 매뉴얼에 따라 산책하는
								것은 물론이죠!<br>산책이 종료된 후에는, 발을 깨끗이 닦아 집안이 더러워 지지 않도록 해요.</p>
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
		<br /><a href="javascript:resv()"
			onclick="document.getElementById
               ('light').style.display='none';
               document.getElementById('fade').style.display='none'"
			class="boxed-btn3">예약 돌봄</a>
	</div>
	<div id="fade" class="black_overlay"></div>
</body>
</html>