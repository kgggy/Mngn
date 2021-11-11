<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<style>
h1 {
	font-weight: bold;
}

form {
	border: #ff3500;
}
</style>
<script>
	function cntD() {
		var withdraw = confirm("정말 탈퇴하시겠습니까?");
		if (withdraw == true) {
			$("#cDelete").submit();
		} else if (withdraw == false) {

		}

	}
</script>
</head>
<body>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>회원탈퇴</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	<br />
	<div align="center">
		<form action="cntDelete.do" id="cDelete">
			<h1>회원탈퇴 안내</h1>
			<br />
			<p class="excert" style="color: black;">
				- 탈퇴 후 회원정보는 모두 삭제됩니다. <br> <br> - 탈퇴 후에도 작성된 게시글은 그대로
				남아있습니다. <br> <br> - 삭제를 원하는 게시물 탈퇴 전 삭제 바람.
			</p>
			<br> <br>
			<button type="button" onclick="location.href='cntProfile.do'">프로필로
				돌아가기</button>
			<button type="button" onclick="cntD()">탈퇴하기</button>
		</form>
		<br/><br/><br/><br/>
	</div>
</body>
</html>