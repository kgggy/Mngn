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

h1 {
	position: absolute;
	margin: 0;
	font-size: 32px;
	color: #fff;
	z-index: 2;
}

h3 {
	padding-bottom: 10px;
}

small {
	font-size: 11px;
	color: #666;
}

h5 {
	margin: 10px 0;
}

.notice {
	font-size: 30px;
	color: #ff3500;
}

.testbox {
	display: flex;
	justify-content: center;
	align-items: center;
	height: inherit;
	padding: 20px;
}

form {
	width: 80%;
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
	right: 3%;
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
	border: 2px solid #ff3500;
	background: none;
	color: #444;
	font-size: 11px;
	padding: 1px;
	width: 80px;
}

.park:hover {
	background: #ff3500;
	color: #fff;
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