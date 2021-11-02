<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/reservation.css">
<script language="javascript" type="text/javascript"
	src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
<title>Insert title here</title>
<script>
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
<style>
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

#card {
	margin: 0 auto;
	width: 100px;
}

.credit {
	margin-left: 20px;
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


#two {
	margin-left: 43px;
}

#three {
	margin: 0 40px;
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

</style>
</head>
<body>
	<!-- testmonial_area_start  -->
	<div align="center">
		<h3 id="content">예약 내역</h3>
		<table>
			<tr>
				<th width="150px">서비스</th>
				<td width="300px">${svc_id }(${term })</td>
			</tr>
			<tr>
				<th width="150px">위치</th>
				<td width="300px">${reser_loc }</td>
			</tr>
			<tr>
				<th width="150px">날짜 및 시간</th>
				<td width="300px">${reser_dt }||${svc_bgn_tm }</td>
			</tr>
			<tr>
				<th width="150px">대상</th>
				<td width="300px">${pet_id1}</td>
			</tr>
			<tr>
				<th width="150px">훈련사</th>
				<td width="300px">${client_id }</td>
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