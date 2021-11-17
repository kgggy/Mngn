<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/profile.css">
<script>
	function eProfile() {
		alert("수정이 완료되었습니다.");
		$("#fEdit").submit();

	}
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

.trans:hover {
	opacity: 0.8;
}
</style>
<title>내프로필 관리</title>
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
							<h3 class="title">${client.name}&nbsp;회원님의 정보</h3>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="section-top-border">
			<form id="fEdit" action="editForm.do">
				<div class="mt-10">
					<input type="text" name="id" placeholder="id"
						value="${client.client_id}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'id'" required class="single-input">
				</div>
				<div class="mt-10">
					<input type="text" name="pwd" placeholder="pwd"
						value="${client.pwd}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'password'" class="single-input">
				</div>
				<div class="mt-10">
					<input type="text" name="name" placeholder="name"
						value="${client.name}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'Name'" required class="single-input">
				</div>
				<div class="mt-10">
					<input type="text" name="post_no" placeholder="post_no"
						value="${client.post_no}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'post_no'" required
						class="single-input">
				</div>
				<div class="input-group-icon mt-10">
					<div class="icon">
						<i class="fa fa-thumb-tack" aria-hidden="true"></i>
					</div>
					<input type="text" name="adres1" placeholder="adres1"
						value="${client.adres1}" onfocus="this.placeholder = '주소'"
						onblur="this.placeholder = 'adres1'" class="single-input">
					<input type="text" name="adres2" placeholder="adres2"
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
					<input type="text" name="phone" placeholder="phone"
						value="${client.phone}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'phone'" class="single-input-primary">
				</div>
				<div class="mt-10">
					<input type="text" name="email" placeholder="email"
						value="${client.email}" onfocus="this.placeholder = ''"
						onblur="this.placeholder = 'email'" class="single-input-primary">
				</div>
				<br/><br/><br/>
				<div align="center">
					<button type="button" class="ebtn" onclick="eProfile()">수정완료</button>
					<button type="reset" class="ebtn">취소</button>
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