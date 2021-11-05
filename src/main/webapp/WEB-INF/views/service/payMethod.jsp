<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<title>Insert title here</title>
<script>
	IMP.init("imp82633653"); // 예: imp00000000
	
	function requestPay() {
		// IMP.request_pay(param, callback) 결제창 호출
		IMP.request_pay({ // param
			pg : "html5_inicis",
			pay_method : "card",
			merchant_uid : "ORD20180131-0000011",
			name : "산책서비스 (${reser.term}시간)",
			amount : ${reser.prc},
			buyer_addr : "${reser.adres1} ${reser.adres2}",
			buyer_postcode : "000011"
		}, function(rsp) { // callback
			if (rsp.success) {
				location.href="payResult.do";
			} else {
				alert("결제에 실패하였습니다. 다시 결제해주시길 바랍니다.")
			}
		});
	}
</script>
<style>
.div {
	margin-top: 100px;
}

tr {
	font-size: 30px;
	height: 70px;
	border-bottom: 1px solid #ff3500 !important;
}

#rbtn {
	border: none;
}

#rbtn:hover {
	opacity: 0.8;
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
						<h3>예약 내역</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- bradcam_area_end -->
	<!-- testmonial_area_start  -->
	<div align="center" class="div">
		<table>
			<tr>
				<th width="300px">서비스</th>
				<td width="500px">산책서비스 ${reser.term }시간</td>
			</tr>
			<tr>
				<th width="300px">위치</th>
				<td width="500px">${reser.adres1 },${reser.adres2 }</td>
			</tr>
			<tr>
				<th width="300px">날짜 및 시간</th>
				<td width="500px">${reser.reser_dt } 🐾 ${reser.svc_bgn_tm }:00</td>
			</tr>
			<tr>
				<th width="300px">대상</th>
				<td width="500px">${reser.pet_name[0] }${reser.pet_name[1] }</td>
			</tr>
			<tr>
				<th width="300px">훈련사</th>
				<td width="500px">${reser.name }</td>
			</tr>
		</table>
	</div>
	<br />
	<br />
	<br />
	<div align="center">
		<button type="button" class="boxed-btn3" id="rbtn" onclick="requestPay()">결제하기</button>
	</div>

</body>
</html>