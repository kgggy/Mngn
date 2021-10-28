<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 예약</title>
<style>
html, body {
	min-height: 100%;
}

body, div, form, input, select, textarea, p {
	padding: 0;
	margin: 0;
	outline: none;
	font-family: Roboto, Arial, sans-serif;
	font-size: 14px;
	color: #666;
	line-height: 22px;
}

h3 {
	padding-bottom: 10px;
}

small {
	font-size: 13px;
	color: #666;
}

h5 {
	margin: 10px 0;
}

.testbox {
	display: flex;
	justify-content: center;
	align-items: center;
	height: inherit;
	padding: 20px;
}

form {
	width: 60%;
	padding: 20px;
	border-radius: 6px;
	background: #fff;
}

.banner {
	position: relative;
	height: 210px;
	background-image:
		url("/uploads/media/default/0001/01/c43630149befa5c9559813f72e99bcb6bf149e62.jpeg");
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
}

.banner::after {
	content: "";
	background-color: rgba(0, 0, 0, 0.5);
	position: absolute;
	width: 100%;
	height: 100%;
}

input, select, textarea {
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input {
	width: calc(100% - 10px);
	padding: 5px;
}

select {
	width: 100%;
	padding: 7px 0;
	background: transparent;
}

textarea {
	width: calc(100% - 12px);
	padding: 5px;
}

.item:hover p, .item:hover i, .question:hover p, .question label:hover,
	input:hover::placeholder, a {
	color: #ff3500;
}

.item input:hover, .item select:hover, .item textarea:hover {
	border: 1px solid transparent;
	box-shadow: 0 0 6px 0 #ff3500;
	color: #ff3500;
}

.item {
	position: relative;
	margin: 10px 0;
}

input[type="date"]::-webkit-inner-spin-button {
	display: none;
}

.item i, input[type="date"]::-webkit-calendar-picker-indicator, input[type="time"]::-webkit-time-picker-indicator
	{
	position: absolute;
	max-width: 1%;
	height: auto;
	font-size: 25px;
	color: #a9a9a9;
	right: 1%;
}

.item i {
	right: 2%;
	top: 55%;
	z-index: 1;
}

[type="date"]::-webkit-calendar-picker-indicator {
	right: 1%;
	z-index: 2;
	opacity: 0;
	cursor: pointer;
}

[type="time"]::-webkit-time-picker-indicator {
	right: 1%;
	z-index: 2;
	opacity: 0;
	cursor: pointer;
}

input
[type=radio], input
[type=checkbox] {
	display: none;
}

label
.radio, label
.check {
	position: relative;
	display: inline-block;
	margin: 5px 20px 15px 0;
	cursor: pointer;
}

.question
 
span {
	margin-left: 30px;
}

span
.required {
	margin-left: 0;
	color: red;
}

.checkbox-item
 
label {
	margin: 5px 20px 10px 0;
}

label
.radio
:before, label
.check
:before {
	content: "";
	position: absolute;
	left: 0;
}

label
.radio
:before {
	width: 17px;
	height: 17px;
	border-radius: 50%;
	border: 2px solid #ff3500;
}

label
.check
:before {
	top: 2px;
	width: 16px;
	height: 16px;
	border-radius: 2px;
	border: 1px solid #ff3500;
}

input
[type=checkbox]
:checked+.check
:before {
	background: #ff3500;
}

label
.radio
:after {
	left: 5px;
	border: 3px solid #ff3500;
}

label
.check
:after {
	left: 4px;
	border: 3px solid #fff;
}

label
.radio
:after, label
.check
:after {
	content: "";
	position: absolute;
	top: 6px;
	width: 8px;
	height: 4px;
	background: transparent;
	border-top: none;
	border-right: none;
	transform: rotate(-45deg);
	opacity: 0;
}

input
[type=radio]
:checked+label
:after, input
[type=checkbox]
:checked+label
:after {
	opacity: 1;
}

.btn-block {
	margin-top: 10px;
	text-align: center;
}

button {
	width: 150px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background: #ff3500;
	font-size: 16px;
	color: #fff;
	cursor: pointer;
}

.park {
	float: right;
	margin-right: 10px;
	background: #ff3500;
	color: #fff;
	font-size: 11px;
	padding: 1px;
	width: 80px;
}

.park:hover {
	opacity: 0.8;
}

button
:hover {
	opacity: 0.9;
}

@media ( min-width : 568px) {
	.city-item {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.city-item input {
		width: calc(50% - 20px);
	}
	.city-item select {
		width: calc(50% - 8px);
	}
}

input[type=radio], input[type=checkbox] {
	display: none;
}

label.radio, label.check {
	position: relative;
	display: inline-block;
	margin: 5px 20px 15px 0;
	cursor: pointer;
}

.question span {
	margin-left: 30px;
}

span.required {
	margin-left: 0;
	color: red;
}

.checkbox-item label {
	margin: 5px 20px 10px 0;
}

label.radio:before, label.check:before {
	content: "";
	position: absolute;
	left: 0;
}

label.radio:before {
	width: 17px;
	height: 17px;
	border-radius: 50%;
	border: 2px solid #ff3500;
}

label.check:before {
	top: 2px;
	width: 16px;
	height: 16px;
	border-radius: 2px;
	border: 1px solid #ff3500;
}

input[type=checkbox]:checked+.check:before {
	background: #ff3500;
}

label.radio:after {
	left: 5px;
	border: 3px solid #ff3500;
}

label.check:after {
	left: 4px;
	border: 3px solid #fff;
}

label.radio:after, label.check:after {
	content: "";
	position: absolute;
	top: 6px;
	width: 8px;
	height: 4px;
	background: transparent;
	border-top: none;
	border-right: none;
	transform: rotate(-45deg);
	opacity: 0;
}

input[type=radio]:checked+label:after, input[type=checkbox]:checked+label:after
	{
	opacity: 1;
}

.btn-block {
	margin-top: 10px;
	text-align: center;
}

button {
	width: 150px;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background: #ff3500;
	font-size: 16px;
	color: #fff;
	cursor: pointer;
}

button:hover {
	opacity: 0.9;
}

@media ( min-width : 568px) {
	.city-item {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.city-item
 
input {
		width: calc(50% - 
 
 20px);
	}
	.city-item
 
select {
		width: calc(50% - 
 
 8px);
	}
}
</style>
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
		})
	}
	$(document).ready(function(e) {
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
		<form action="/payment.do">
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
				<input type="text" class="datepicker"> <span> <i
					class="fas fa-calendar-alt"></i>
				</span>
			</div>
			<div class="question">
				<h3>
					산책 대상<span class="required">*</span>&nbsp;&nbsp;<small>*최대
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
			<div class="question">
				<h3>
					훈련사 선택<span class="required">*</span>
				</h3>
				<div class="question-answer">
					<input type="radio" value="none" id="radio_4" name="research"
						required /> <label for="radio_4" class="radio"><span>훈련사
							A</span></label> <input type="radio" value="none" id="radio_5" name="research"
						required /> <label for="radio_5" class="radio"><span>훈련사
							B</span></label> <input type="radio" value="none" id="radio_6" name="research"
						required /> <label for="radio_6" class="radio"><span>훈련사
							C</span></label>
				</div>
			</div>
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