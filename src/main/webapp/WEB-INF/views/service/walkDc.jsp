<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HEYYO - 산책</title>
<script>
	function resv() {
		var time = $(".time .focus");
		if (time.length == 0) {
			alert("시간을 선택해주세요.")
		} else {
			$("input[name=prc]").val(time.data("prc"));
			$("input[name=term]").val(time.data("time"));
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
						<img id="simg" src="img/about/dogwalk.png">
					</div>
				</div>
				<div class="col-lg-6 offset-lg-1 col-md-6" id="emp">
					<div class="pet_info">
						<br /> <br /> <br />
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
							<p>
								헤이요에 모든 훈련사는 산책 전문 교육을 수료하였어요. <br>안전 매뉴얼에 따라 산책하는 것은 물론이죠!<br>산책이
								종료된 후에는, 발을 깨끗이 닦아 집안이 더러워 지지 않도록 해요.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-6">
					<div class="pet_thumb">
						<img src="img/about/dogwash.png" id="simg">
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
			<form action="wResv.do" id="form">
				<input type="hidden" name="term"> <input type="hidden"
					name="prc">
				<div>
					<div class="time">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<c:forEach items="${serviceTerm }" var="time">
							<a class="genric-btn danger-border circle arrow" id="term"
								data-prc="${time.prc}" data-time="${time.term }">${time.term }시간</a>
						</c:forEach>
					</div>
					<div>
						<c:forEach items="${serviceTerm }" var="time">
						&nbsp;&nbsp;<span>₩${time.prc }</span>&nbsp;
						</c:forEach>
					</div>
				</div>
				<br />
				<button type="button" class="boxed-btn3" onclick="resv()">예약
					산책</button>
			</form>
		</div>
	</div>
</body>
</html>