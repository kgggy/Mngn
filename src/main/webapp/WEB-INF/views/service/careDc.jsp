<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HEYYO - 돌봄</title>
<script>
	function resv() {
		var time = $(".time .focus");
		if (time.length == 0) {
			alert("시간을 선택해주세요.")
		} else {
			$("#form").submit();			
		}
	}
	$(function() {
		// Get the modal
		var modal = document.getElementById("light");

		// Get the button that opens the modal
		var btn = document.getElementById("abtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
			$('.maincontent').on('scroll touchmove mousewheel',
					function(event) {
						event.preventDefault();
						event.stopPropagation();
						return false;
					});
		}
		$(".genric-btn").on("click", function() {
			$(".genric-btn").removeClass("focus")
			$(this).addClass("focus")
		})

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
			$('.maincontent').off('scroll touchmove mousewheel');

		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				$('.maincontent').off('scroll touchmove mousewheel');
				modal.style.display = "none";
			}
		}
	});
</script>
<style>
.boxed-btn3 {
	border: none;
}

.boxed-btn3:hover {
	opacity: 0.9;
	cursor: pointer;
}

span {
	padding: 10px 9%;
	margin-top: 5px;
}

#simg {
	width: 400px;
	height: 400px;
	border-radius: 50%;
	margin-left: auto;
}

#rbtn {
	width: 200px;
	margin: 0 auto;
}

#two {
	margin-left: 43px;
}

#three {
	margin: 0 40px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 38%;
	height: auto;
	top: 30%;
	border-radius: 20px;
	top: 30%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

#emp {
	margin-left: 50px;
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
				<img id="simg" src="img/about/resvphone.jpg">
				<div class="col-lg-6 offset-lg-1 col-md-6" id="emp">
					<div class="pet_info">
						<br /> <br /> <br />
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
						<br /> <br /> <br /> <br />
						<div class="section_title">
							<h3>
								엄선된 훈련사가 <br> 방문합니다.
							</h3>
							<p>
								헤이요 모든 훈련사는 신분증 사본, 등초본 등으로 <br>까다롭게 신원을 검증하며, 훈련사로서 필요한
								지식과 실력을 갖출 수 있도록 <br>훈련사 전문 교육을 수료합니다.
							</p>
						</div>
					</div>
				</div>
				<img id="simg" src="img/about/gtrainer.jpg">
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<br />
	<div align="center">
		<a href="javascript:void(0)" class="boxed-btn3" id="abtn">예약하기</a>
	</div>
	<br />
	<br />
	<br />
	<br />

	<!-- testmonial_area_start  -->
	<div id="light" class="modal">
		<div class="white_content modal-content" align="center">
			<form action="cResv.do" id="form">
				<div>
					<div class="time">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<a class="genric-btn danger-border circle arrow">1시간</a> <a
							class="genric-btn danger-border circle arrow" id="two">2시간</a> <a
							class="genric-btn danger-border circle arrow" id="three">3시간</a>
					</div>
					<div>
						<span>₩18,000</span><span>₩34,000</span><span>₩50,000</span>
					</div>
				</div>
				<br /> <button type="button" class="boxed-btn3" onclick="resv()">예약 돌봄</button>
			</form>
		</div>
	</div>
</body>
</html>