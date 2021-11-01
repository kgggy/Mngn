<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	font-size: 30px;
	color: #a9a9a9;
	right: 1%;
}

.item i {
	right: 3%;
	top: 55%;
	z-index: 3;
}

input[type="date"]::-webkit-calendar-picker-indicator {
	right: 1%;
	z-index: 10;
	opacity: 0;
	cursor: pointer;
}

input[type="time"]::-webkit-time-picker-indicator {
	right: 1%;
	z-index: 10;
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
		width: calc(50% -20px);
	}
	.city-item
 
select {
		width: calc(50% -8px);
	}
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

.modal2 {
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
	width: 30%;
	height: auto;
	top: 30%;
	border-radius: 20px;
	top: 30%;
}

.modal2-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
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

tr {
	border-bottom: 1px solid #ff3500;
	font-size: 15px;
	height: 40px;
}

#content {
	font-weight: bold;
	font-size: 25px;
	margin-left: 150px;
}

#card {
	margin: 0 auto;
	width: 100px;
}

.credit {
	margin-left: 20px;
}
</style>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script language="javascript" type="text/javascript"
	src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
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
			buttonText : "Choose"
		});
	});
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
		// 결제 모달창
		var modal2 = document.getElementsByClassName("modal2");

		// 결제 모달창 띄우는 버튼
		var pay = document.getElementById("rbtn");

		// 결제 모달 버튼 클릭시 모달 띄움
		pay.onclick = function() {
			modal.style.display = "block";
			$('.maincontent').on('scroll touchmove mousewheel',
					function(event) {
						event.preventDefault();
						event.stopPropagation();
						return false;
					});
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
	<br />
	<br />
	<div class="testbox">
		<form>
			<div class="item">
				<h3>
					주소<span class="required">*</span>
				</h3>
				<c:forEach items="${addList }" var="add">
					<input type="text" id="address_kakao" name="address" readonly
						placeholder="${add.adres1 }" />
					<input type="text" id="address_detail" name="address_detail"
						placeholder="${add.adres2 }" />
				</c:forEach>
			</div>
			<div class="input_date date_time">
				<h3>
					날짜 및 시간선택<span class="required">*</span>
				</h3>
				<input type="text" class="datepicker"> <span> <i
					class="fas fa-calendar-alt"></i>
				</span> <input type="time" class="timepicker"> <span> <i
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

					<input type="radio" value="none" id="radio_4" name="research" /> <label
						for="radio_4" class="radio"><span>훈련사 A</span></label>
				</div>
			</div>
			<div class="item">
				<h3>특이사항</h3>
				<textarea rows="10" required placeholder="최대 1000자까지 입력가능합니다."></textarea>
			</div>
			<br />
			<div class="btn-block">
				<button type="button" id="abtn">예약</button>
			</div>
		</form>
	</div>
	<!-- testmonial_area_start  -->
	<div id="light" class="modal">
		<div class="white_content modal-content" align="center">
			<div align="center">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h3 id="content">예약 내역</h3>
				<table>
					<tr>
						<th width="150px">서비스</th>
						<td width="300px">${payment.svc_id }(${payment.term })</td>
					</tr>
					<tr>
						<th width="150px">위치</th>
						<td width="300px">${payment.reser_loc }</td>
					</tr>
					<tr>
						<th width="150px">날짜 및 시간</th>
						<td width="300px">${payment.reser_dt }||${payment.svc_bgn_tm }</td>
					</tr>
					<tr>
						<th width="150px">대상</th>
						<td width="300px">${payment.pet_id1}</td>
					</tr>
					<tr>
						<th width="150px">훈련사</th>
						<td width="300px">${payment.client_id }</td>
					</tr>
					<tr>
						<th width="150px" style="font-weight: bold">결제수단</th>
						<td width="400px"><input type="radio" class="card" /><span>신용카드</span><input
							type="radio" class="card" /><span>휴대폰</span></td>
					</tr>
				</table>
			</div>
			<br />
			<button type="button" class="boxed-btn3" id="rbtn">결제하기</button>
		</div>
	</div>
	<!-- <div class="modal2">
		<div class="modal2-content" align="center">
			<form id="SendPayForm_id" name="" method="POST">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<input type="text" name="goodname" value="테스트"> <input
					type="text" name="buyername" value="홍길동"> <input
					type="text" name="buyertel" value="010-1234-5678"> <input
					type="text" name="buyeremail" value="test@inicis.com"> <input
					type="text" name="price" value="1000"> <input type="hidden"
					name="mid" value="INIpayTest">
				에스크로테스트 : iniescrow0, 빌링(정기과금)테스트 : INIBillTst
				<input type="hidden" name="gopaymethod" value="Card"> <input
					type="hidden" name="mKey"
					value="3a9503069192f207491d4b19bd743fc249a761ed94246c8c42fed06c3cd15a33">
				<input type="hidden" name="signature"
					value="47da3c3e55ed4874e6301d3ee74bef9e70ccadf51ca501482267db9fa982ab0e">
				<input type="hidden" name="oid" value="INIpayTest_1635471010951">
				<input type="hidden" name="timestamp" value="1635471010951">
				<input type="hidden" name="version" value="1.0"> <input
					type="hidden" name="currency" value="WON"> <input
					type="hidden" name="acceptmethod" value="below1000">
				에스크로옵션 : useescrow, 빌링(정기과금)옵션 : BILLAUTH(Card)
				<input type="hidden" name="returnUrl"
					value="http://localhost/stdpay/INIStdPayReturn_simple.asp">
				<input type="hidden" name="closeUrl"
					value="http://localhost/stdpay/close.asp">
			</form>
			<button onclick="INIStdPay.pay('SendPayForm_id')"
				style="padding: 10px; margin-left: 10%">결제요청</button>
		</div>
	</div> -->
</body>
</html>