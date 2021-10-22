<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HEYYO - 돌봄</title>
<script>
	function resv() {
		alert($(".genric-btn.focus").html())
		location.href = "cResv.do"
	}
	$(function() {
		$(".genric-btn").on("click",function() {
			$(".genric-btn").removeClass("focus")
			$(this).addClass("focus")
		})
		$(".close, .black_overlay").on("click", function() {
			$("#light").css("display","none");
			$("#fade").css("display","none");
		})
		$(".boxed-btn3").on("click", function() {
			$("#light").css("display","block");
			$("#fade").css("display","block");
		})
	})
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
						<h3>돌봄 서비스</h3>
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
								혼자 남겨진 반려동물을 생각하며, 외출을 망설인 적이 있으신가요? <br>이제는 헤이요에 맡기고, 여러분의
								소중한 일상을 마음 편히 보내세요! <br>예약 돌봄으로 언제 어디서든 돌봄 서비스를 예약할 수 있어요.
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
								엄선된 훈련사가 <br> 방문합니다.
							</h3>
							<p>
								헤이요 모든 훈련사는 신분증 사본, 등초본, 신원보증 부대까지 3단계로 <br>까다롭게 신원을 검증하며,
								훈련사로서 필요한 지식과 실력을 갖출 수 있도록 <br>훈련사 전문 교육을 수료합니다
							</p>
						<a href="javascript:void(0)" class="boxed-btn3">예약하기</a>
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
		<a href="javascript:resv()" class="boxed-btn3">예약 돌봄</a>
	</div>
	<div id="fade" class="black_overlay"></div>
</body>
</html>