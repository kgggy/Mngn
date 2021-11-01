<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 예약</title>
<link rel="stylesheet" href="css/reservation.css">
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		$("#address_kakao").on("click", function() {
			new daum.Postcode({
				oncomplete : function(data) { //선택시 입력값 세팅
					$("#address_kakao").val(data.address); // 주소 넣기
					$("#input[name='address_detail']").focus();
				}
			}).open();
		});
	}
	$(function() {
		$(".datepicker").datepicker({
			onSelect : function(dateText, inst) {

			}
		});
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
	<div class="testbox">
		<form action="payMethod.do">
			<div class="item">
				<h3>
					주소<span class="required">*</span>
				</h3>
				<input type="text" id="address_kakao" name="address" readonly
					placeholder="${adres1 }" /> <input type="text" id="address_detail"
					name="address_detail" placeholder="${adres2 }" />
			</div>
			<div class="input_date date_time">
				<h3>
					날짜 및 시간선택<span class="required">*</span>
				</h3>
				<input type="text" class="datepicker"> <span> <i
					class="fas fa-calendar-alt"></i>
				</span>
				<c:forEach items="${timepicker }" var="time">
					<button type="button"></button>
				</c:forEach>
				<input type="time" class="timepicker"> <span> <i
					class="fas fa-time-alt"></i>
				</span>
			</div>
			<div class="question">
				<h3>
					돌봄 대상<span class="required">*</span>&nbsp;&nbsp;<small>*최대
						2마리만 가능하며, 초과 시 훈련사가 임의로 추가금을 요구할 수 있습니다. </small>
				</h3>
				<div class="question-answer checkbox-item">
					<div>
						<c:forEach items="${petList }" var="pet" varStatus="sts">
							<input type="checkbox" value="${pet.pet_id }"
								id="check_${sts.count }" name="pet_id${sts.count }" />
							<label for="check_${ssts.count }" class="check"><span>${pet.name }</span></label>
						</c:forEach>
					</div>
				</div>
			</div>
			<br />
			<div class="question">
				<h3>
					훈련사 선택<span class="required">*</span>
				</h3>
				<div class="question-answer">
					<input type="radio" value="none" id="radio_4" name="radio" /> <label
						for="radio_4" class="radio" onclick="trnSelect()"><span>훈련사</span></label>
				</div>
			</div>
			<div class="item">
				<h3>특이사항</h3>
				<textarea rows="10" placeholder="최대 1000자까지 입력가능합니다."></textarea>
			</div>
			<br />
			<div class="btn-block">
				<button type="submit" id="abtn">예약</button>
			</div>
		</form>
	</div>
</body>
</html>