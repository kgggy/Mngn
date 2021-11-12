<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/profile.css">
<title>내프로필 관리</title>
<script>
	$(document).ready(function() {
		$("#trans").on("click", function() {
			var role = $("input[name=role]").val();
			if (role == 1) {
				alert("훈련사 권한이 없습니다.");
			} else if (role == 2) {
			var con = confirm("훈련사로 전환하시겠습니까?")
				if (con == true) {
					location.href = "trnProfile.do"
				} else {
					return;
				}
			}
		});
	})
</script>
<style>
.ebtn {
	padding: 8px 15px;
	font-size: 20px;
	border: 1px solid #ff3500;
	color: #ff3500;
	background-color: #fff;
	border-radius: 10px;
	margin: 0 30px;
}

.ebtn:hover {
	color: #fff;
	background-color: #f45f26;
	cursor: pointer;
}

#trans:hover {
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>내 프로필 관리</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END nav -->
	<br />
	<br />
	<br />
	<div>
		<div class="row">
			<div class="col-md-6 ml-auto mr-auto">
				<div class="profile">
					<div class="avatar" align="center">
						<div class="name">
							<h3 class="title">${client.name}&nbsp;회원님의정보</h3>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="section-top-border">
			<form action="#">
				<input type="hidden" name="role" value="${client.role }">
				<div class="mt-10">
					<input type="text" name="id" placeholder="id"
						value="${client.client_id}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'id'" readonly class="single-input">
				</div>
				<div class="mt-10">
					<input type="text" name="pwd" placeholder="pwd" readonly
						value="${client.pwd}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'password'" class="single-input">
				</div>
				<div class="mt-10">
					<input type="text" name="name" placeholder="name" readonly
						value="${client.name}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Name'" required class="single-input">
				</div>
				<div class="mt-10">
					<input type="text" name="post_no" placeholder="post_no" readonly
						value="${client.post_no}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'post_no'" required
						class="single-input">
				</div>
				<div class="input-group-icon mt-10">
					<div class="icon">
						<i class="fa fa-thumb-tack" aria-hidden="true"></i>
					</div>
					<input type="text" name="adres1" placeholder="adres1" readonly
						value="${client.adres1}" onfocus="this.placeholder = '주소'"
						onblur="this.placeholder = 'adres1'" class="single-input">
					<input type="text" name="adres2" placeholder="adres2" readonly
						value="${client.adres2}" onfocus="this.placeholder = '주소'"
						onblur="this.placeholder = 'adres2'" class="single-input">
				</div>



				<!-- For Gradient Border Use -->
				<!-- <div class="mt-10">
                              <div class="primary-input">
                                 <input id="primary-input" type="text" name="first_name" placeholder="Primary color" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Primary color'">
                                 <label for="primary-input"></label>
                              </div>
                           </div> -->
				<div class="mt-10">
					<input type="text" name="phone" placeholder="phone" readonly
						value="${client.phone}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'phone'" class="single-input-primary">
				</div>
				<div class="mt-10">
					<input type="text" name="email" placeholder="email" readonly
						value="${client.email}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'email'" class="single-input-primary">
				</div>
				<br />
				<button type="button" id="trans">훈련사모드 전환</button>
				<br> <br> <br>
				<div align="center">
					<button type="button" onclick="location.href='cntProfileEdit.do'"
						class="ebtn">수정</button>
					<button type="button" class="ebtn">취소</button>
				</div>
			</form>
			<br> <br>
			<div id="withdraw">
				멍냥꽁냥 회원을 탈퇴하시겠습니까? <a href="mOut.do" class="withdraw">회원탈퇴하기</a>
			</div>
		</div>
	</div>
</body>
</html>