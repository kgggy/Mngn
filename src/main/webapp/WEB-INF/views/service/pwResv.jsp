<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<title>서비스 예약</title>
<link rel="stylesheet" href="css/reservation.css">
<style>
.notice {
	font-size: 30px;
	color: #ff3500;
}
</style>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		$("#address_kakao").on("click", function() {
			new daum.Postcode({
				oncomplete : function(data) { //선택시 입력값 세팅
					$("#address_kakao").value(data.address); // 주소 넣기
					$("input[name=address_detail]").focus(); //상세입력 포커싱
				}
			}).open();
		});
	}
</script>
</head>
<body>
	<!-- bradcam_area_start -->
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>돌봄 서비스 상세 예약</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- bradcam_area_end -->
	<br />
	<br />
	<div class="testbox">
		<form action="/payResult.do">
			<p class="notice">주소, 날짜, 훈련사</p>
			<div class="item">
				<h3>
					시간 선택<span class="required">*</span>
				</h3>
				<input type="time" name="btime" required /> <i class="fas fa-clock"></i>
			</div>
			<div class="question">
				<h3>
					산책 대상<span class="required">*</span>&nbsp;&nbsp;<small>*최소
						2마리까지 가능합니다.</small>
				</h3>

				<div class="question-answer checkbox-item">
					<div>
						<input type="checkbox" value="none" id="check_1" name="checklist"
							required /> <label for="check_1" class="check"><span>pet1</span></label>
						<input type="checkbox" value="none" id="check_2" name="checklist"
							required /> <label for="check_2" class="check"><span>pet2</span></label>
					</div>
				</div>
			</div>
			<br />
			<div class="item">
				<h3>특이사항</h3>
				<textarea rows="10" required placeholder="최대 1000자까지 입력가능합니다."></textarea>
			</div>
			<br />
			<div class="btn-block">
				<button type="submit" href="/">예약</button>
			</div>
		</form>
	</div>
</body>
</html>