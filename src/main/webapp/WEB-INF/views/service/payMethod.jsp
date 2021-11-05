<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>Insert title here</title>
<script>
	
	
	var IMP = window.IMP; // 생략 가능
	IMP.init("{imp82633653}"); // 예: imp00000000
	function iamport() {
		//가맹점 식별코드
		IMP.init('imp30146952');
		IMP.request_pay({
			pg : 'kcp',
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '상품1', //결제창에서 보여질 이름
			amount : 100, //실제 결제되는 가격
			buyer_email : 'iamport@siot.do',
			buyer_name : '구매자이름',
			buyer_tel : '010-1234-5678',
			buyer_addr : '서울 강남구 도곡동',
			buyer_postcode : '123-456'
		}, function(rsp) {
			console.log(rsp);
			if (rsp.success) {
				location.href="payResult.do";
			} else {
				var msg = '결제에 실패하였습니다. 다시 결제해주시길 바랍니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	}
</script>
<style>
.div {
	margin-top: 200px;
}

tr {
	font-size: 30px;
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
				<td width="500px">${svc_id }(${term })시간</td>
			</tr>
			<tr>
				<th width="300px">위치</th>
				<td width="500px">${reser_loc }</td>
			</tr>
			<tr>
				<th width="300px">날짜 및 시간</th>
				<td width="500px">${reser_dt } || ${svc_bgn_tm }:00</td>
			</tr>
			<tr>
				<th width="300px">대상</th>
				<td width="500px">${pet_id}</td>
			</tr>
			<tr>
				<th width="300px">훈련사</th>
				<td width="500px">${client_id }</td>
			</tr>
			<tr style="border-top: 2px solid #ff3500">
				<th width="300px" style="font-weight: bold">결제수단</th>
				<td><input type="radio" class="card" /><span>신용카드</span> <input
					type="radio" class="card" /><span>휴대폰</span></td>
			</tr>
		</table>
		<br />
		<button type="button" class="boxed-btn3" id="rbtn" onclick="iamport()">결제하기</button>
	</div>

</body>
</html>