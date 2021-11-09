<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/petsitting/animate.css">

<link rel="stylesheet" href="css/petsitting/owl.carousel.min.css">
<link rel="stylesheet" href="css/petsitting/owl.theme.default.min.css">
<link rel="stylesheet" href="css/petsitting/magnific-popup.css">

<link rel="stylesheet" href="css/petsitting/flaticon.css">
<link rel="stylesheet" href="css/petsitting/style.css">



<script src="js/petsitting/jquery.min.js"></script>
<script src="js/petsitting/jquery-migrate-3.0.1.min.js"></script>
<script src="js/petsitting/popper.min.js"></script>
<script src="js/petsitting/bootstrap.min.js"></script>
<script src="js/petsitting/jquery.easing.1.3.js"></script>
<script src="js/petsitting/jquery.waypoints.min.js"></script>
<script src="js/petsitting/jquery.stellar.min.js"></script>
<script src="js/petsitting/jquery.animateNumber.min.js"></script>
<script src="js/petsitting/bootstrap-datepicker.js"></script>
<script src="js/petsitting/jquery.timepicker.min.js"></script>
<script src="js/petsitting/owl.carousel.min.js"></script>
<script src="js/petsitting/jquery.magnific-popup.min.js"></script>
<script src="js/petsitting/scrollax.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/petsitting/google-map.js"></script>
<script src="js/petsitting/main.js"></script>
<title>Insert title here</title>

</head>
<body>

	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>이용 후기</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section class="ftco-section bg-light">
		<br> <br> <br>
		<div class="container">
			<div class="row d-flex">
				<c:forEach items="${rLists }" var="rList">
					<div class="col-md-4 d-flex ftco-animate" data-toggle="modal"
						data-target="#myModal">
						<div class="blog-entry align-self-stretch" data-toggle="modal"
							data-target="#myModal">
							<div class="text p-4" data-toggle="modal" data-target="#myModal">
								<a href="blog-single.html" class="block-20 rounded"
									style="background-image: url('download.do?fileName=${rList.fileorg}');"></a><br>
								<div class="meta mb-2">
									<div>${rList.reg_dt }</div>
									<div>${rList.name } </div>
									<div>
										<a class="meta-chat"> ${rList.star_shape }</a>
									</div>
								</div>
								<h3 class="heading" data-toggle="modal" data-target="#myModal">
									${rList.cntn}
									<!-- <a href="#" data-toggle="modal" data-target="#myModal"> </a>-->
								</h3>
							</div>
						</div>
						<input type="hidden" id="review_no" name="review_no">
					</div>
				</c:forEach>

			</div>
			<my:paging jsFunc="goList" paging="${paging}" />
			<br> <br>
		</div>
	</section>

	<!-- <div class="modal fade" id="myModal" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-xl modal-dialog-centered">
			<div class="modal-content">

				Modal Header
				<div class="modal-header">
					<h4 class="modal-title">대구시 달서구 이곡1동</h4>
					<br>
					<h6 class="modal-title">고양이(코숏) 2세</h6>
					<br>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				Modal body
				<div class="modal-body">
					<img class="card-img-top rounded img-fluid"
						src="img/client/cat.jpg">
					<h6>사진 너무 귀엽게 잘찍어주셨네요 ㅎㅎㅎ 라이브로 보니 오뜨가 좋아하는게 보여서 저도 웃을수 있었어요!
						혼자 있는 아이가 너무 걱정 됐었는데 이렇게 마음 놓게 해주셔서 정말 감사드립니다ㅎㅎ 다음에도 기회가 된다면 또
						부탁드리고 싶네요 좋은하루 보내세요 펫시터님🤗</h6>
				</div>

				Modal footer
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div> -->

<script>
	function goList(p) {
		//searchFrm.page.value=p; //페이지 번호 받아서 폼태그에 넣어서 submit(폼 안에 페이지번호가 히든으로, 검색조건과 정렬방식도 가지고 넘어감)
		//searchFrm.submit();
		location.href="rList.do?page=" + p
	}
</script>

</body>
</html>