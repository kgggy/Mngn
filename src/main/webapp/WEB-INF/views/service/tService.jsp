<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HEYYO - 훈련</title>
<script>
	function resv() {
		alert($(".genric-btn.focus").html())
		location.href = "tResv.do"
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
						<img src="img/about/dogt.jpg" id="simg">
					</div>
				</div>
				<div class="col-lg-6 offset-lg-1 col-md-6" id="emp">
					<div class="pet_info">
						<br /> <br /> <br />
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
						<br /> <br /> <br />
						<div class="section_title">
							<h3>
								성향을 고려한 <br> 세심한 교육
							</h3>
							<p>
								성격 유형을 고려한 맞춤 교육은 반려견의 스트레스를 최소화하고, <br>즐거운 교육 참여를 돕습니다.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="pet_thumb">
						<img src="img/about/catdrink.jpg" id="simg">
					</div>
				</div>
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
			<br /> <a href="javascript:resv()" class="boxed-btn3" id="rbtn">예약
				훈련</a>
		</div>
	</div>
</body>
</html>