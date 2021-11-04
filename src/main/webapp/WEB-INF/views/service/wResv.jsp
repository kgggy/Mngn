<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/reservation.css">
<title>서비스 예약</title>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	window.onload = function() {
		$("#address_kakao").on("click", function() {
			new daum.Postcode({
				oncomplete : function(data) { //선택시 입력값 세팅
					$("#address_kakao").val(data.address); // 주소 넣기
					$("input[name=address_detail]").focus(); //상세입력 포커싱
				}
			}).open();
		});

	$(".park").on("click", function() {
			window.open("map.do", "근처공원 선택", "width=650px,height=800px,scrollbars=yes,left=600px,top=100px");
		});
		
	$("input[type='checkbox']").on("click", function() {
		var count = $("input:checked[type='checkbox']").length;
		if (count > 2) {
			this.checked = false;
			alert("최대 2마리까지만 선택가능합니다.");
			}
		});
	}
	
	$(function() {
		$(".datepicker").datepicker({
			dateFormat : 'yy-mm-dd',
			minDate : 0,
		});
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
						<h3>산책 서비스 상세 예약</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- bradcam_area_end -->
	<br />
	<br />
	<div class="testbox">
		<form action="payResult.do">
			<div class="item">
				<h3>
					주소<span class="required">*</span>
					<button type="button" class="park">근처공원선택</button>
				</h3>
				<input type="text" id="address_kakao" name="address" readonly /> <input
					type="text" id="address_detail" name="address_detail" />
			</div>
			<div class="input_date date_time">
				<h3>
					날짜 및 시간선택<span class="required">*</span>
				</h3>
				<input type="text" class="datepicker" required> <span>
					<i class="fas fa-calendar-alt"></i>
				</span>
			</div>
			<div class="question">
				<h3>
					산책 대상<span class="required">*</span>&nbsp;&nbsp;<small>*최대
						2마리까지 가능합니다.</small>
				</h3>

				<div class="question-answer checkbox-item">
					<div>
						<c:forEach items="${petList }" var="pet" varStatus="sts">
							<input type="checkbox" value="${pet.pet_id }"
								id="check_${sts.count }" name="pet_id${sts.count }" />
							<label for="check_${sts.count }" class="check"><span>${pet.name }</span></label>
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
					<c:forEach items="${trnSelect }" var="trn" varStatus="stts">
						<input type="radio" value="${trn.role }" id="radio_${stts.count }"
							name="client_id${stts.count }" />
						<label for="radio_${stts.count }" class="radio"
							onclick="trnSelect()"><span>${trn.name } 훈련사</span></label>
					</c:forEach>
				</div>
			</div>
			<div class="item">
				<h3>특이사항</h3>
				<textarea rows="10" required placeholder="최대 1000자까지 입력가능합니다."></textarea>
				<small class="caution">⚠️ 맹견 5종 [도사견, 핏불테리어, 스태퍼드셔 (불)태리어,
					로트와일러] 은 필수로 입마개 착용할 것을 알려드립니다.</small>
			</div>
			<br />
			<div class="btn-block">
				<button type="submit">예약</button>
			</div>
		</form>
	</div>

	<div class="modal fade" id="map-modal" role="map" aria-labelledby="map"
		aria-hidden="true" tabindex="-1">
		<!--modal-dailog : 모달 창 영역 설정-->
		<div class="modal-dialog">
			<!--modal-content : 모달 창 콘텐츠 영역 설정-->
			<div class="modal-content">
				<!--modal-header : 모달 창 콘텐츠의 헤더영역-->
				<div class="modal-header modal-header-custom">
					<h4 class="modal-title modal-title-custom">지도</h4>
				</div>
				<!--modal-body : 모달 창 콘텐츠의 바디영역-->
				<div class="modal-body" id="map-body">
					<!-- iframe src="/map?id={id}" -->
					<iframe id="go-map"></iframe>
				</div>
				<!--modal-footer : 모달 창 콘텐츠의 푸터영역-->
				<div class="modal-footer">
					<div class="modal-footer-custom">
						<button type="button" class="btn btn-danger"
							data-bs-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>