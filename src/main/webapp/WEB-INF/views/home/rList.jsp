<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<link rel="stylesheet" href="css/petsitting/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/petsitting/jquery.timepicker.css">

<link rel="stylesheet" href="css/petsitting/flaticon.css">
<link rel="stylesheet" href="css/petsitting/style.css">
<title>Insert title here</title>

</head>
<body>
	<script>
		//별점 마킹 모듈 프로토타입으로 생성
		function Rating() {
		};
		Rating.prototype.rate = 0;
		Rating.prototype.setRate = function(newrate) {
			//별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
			this.rate = newrate;
			let items = document.querySelectorAll('.rate_radio');
			items.forEach(function(item, idx) {
				if (idx < newrate) {
					item.checked = true;
				} else {
					item.checked = false;
				}
			});
		}
		let rating = new Rating();//별점 인스턴스 생성

		document.addEventListener('DOMContentLoaded', function() {
			//별점선택 이벤트 리스너
			document.querySelector('.rating').addEventListener('click',
					function(e) {
						let elem = e.target;
						if (elem.classList.contains('rate_radio')) {
							rating.setRate(parseInt(elem.value));
						}
					})
		});

		//상품평 작성 글자수 초과 체크 이벤트 리스너
		document.querySelector('.review_textarea').addEventListener('keydown',
				function() {
					//리뷰 400자 초과 안되게 자동 자름
					let review = document.querySelector('.review_textarea');
					let lengthCheckEx = /^.{400,}$/;
					if (lengthCheckEx.test(review.value)) {
						//400자 초과 컷
						review.value = review.value.substr(0, 400);
					}
				});

		//저장 전송전 필드 체크 이벤트 리스너
		document.querySelector('#save').addEventListener('click', function(e) {
			//별점 선택 안했으면 메시지 표시
			if (rating.rate == 0) {
				rating.showMessage('rate');
				return false;
			}
			//리뷰 5자 미만이면 메시지 표시
			if (document.querySelector('.review_textarea').value.length < 5) {
				rating.showMessage('review');
				return false;
			}
			//폼 서밋
		});

		Rating.prototype.showMessage = function(type) {//경고메시지 표시
			switch (type) {
			case 'rate':
				//안내메시지 표시
				document.querySelector('.review_rating .warning_msg').style.display = 'block';
				//지정된 시간 후 안내 메시지 감춤
				setTimeout(
						function() {
							document
									.querySelector('.review_rating .warning_msg').style.display = 'none';
						}, 1000);
				break;
			case 'review':
				//안내메시지 표시
				document.querySelector('.review_contents .warning_msg').style.display = 'block';
				//지정된 시간 후 안내 메시지 감춤
				setTimeout(
						function() {
							document
									.querySelector('.review_contents .warning_msg').style.display = 'none';
						}, 1000);
				break;
			}
		}
	</script>
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
	<section class="ftco-section bg-light"><br><br><br>
		<div class="container">
			<div class="row d-flex">
				<div class="col-md-4 d-flex ftco-animate"  data-toggle="modal" data-target="#myModal">
					<div class="blog-entry align-self-stretch"  data-toggle="modal" data-target="#myModal">
						<div class="text p-4"  data-toggle="modal" data-target="#myModal">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_1.jpg');"  data-toggle="modal" data-target="#myModal"> </a><br>
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">ㅇㅇㅇ 님</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										별점넣기</a>
								</div>
							</div>
							<h3 class="heading" data-toggle="modal" data-target="#myModal">
								<a href="#" data-toggle="modal" data-target="#myModal">사진 너무 귀엽게 잘찍어주셨네요 ㅎㅎㅎ 라이브로 보니 오뜨가 좋아하는게 보여서 저도 웃을수 있었어요!
						혼자 있는 아이가 너무 걱정 됐었는데 이렇게 마음 놓게 해주셔서 정말 감사드립니다ㅎㅎ 다음에도 기회가 된다면 또
						부탁드리고 싶네요 좋은하루 보내세요 펫시터님🤗</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<div class="text p-4">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_2.jpg');"  data-toggle="modal" data-target="#myModal"> </a><br>
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<div class="text p-4">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_3.jpg');"  data-toggle="modal" data-target="#myModal"> </a><br>
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>

				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<div class="text p-4">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_4.jpg');"  data-toggle="modal" data-target="#myModal"> </a><br>
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">사진 너무 귀엽게 잘찍어주셨네요 ㅎㅎㅎ 라이브로 보니 오뜨가 좋아하는게 보여서 저도 웃을수 있었어요!
						혼자 있는 아이가 너무 걱정 됐었는데 이렇게 마음 놓게 해주셔서 정말 감사드립니다ㅎㅎ 다음에도 기회가 된다면 또
						부탁드리고 싶네요 좋은하루 보내세요 펫시터님🤗</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<div class="text p-4">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_5.jpg');"  data-toggle="modal" data-target="#myModal"> </a><br>
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 d-flex ftco-animate">
					<div class="blog-entry align-self-stretch">
						<div class="text p-4">
						<a href="blog-single.html" class="block-20 rounded"
							style="background-image: url('images/image_6.jpg');"  data-toggle="modal" data-target="#myModal"> </a><br>
							<div class="meta mb-2">
								<div>
									<a href="#">April 07, 2020</a>
								</div>
								<div>
									<a href="#">Admin</a>
								</div>
								<div>
									<a href="#" class="meta-chat"><span class="fa fa-comment"></span>
										3</a>
								</div>
							</div>
							<h3 class="heading">
								<a href="#">Even the all-powerful Pointing has no control
									about the blind texts</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
				</div>
			</div><br><br>
		</div>
	</section>

	<div class="modal fade" id="myModal" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-xl modal-dialog-centered">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">대구시 달서구 이곡1동</h4>
					<br>
					<h6 class="modal-title">고양이(코숏) 2세</h6>
					<br>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<img class="card-img-top rounded img-fluid"
						src="img/client/cat.jpg">
					<h6>사진 너무 귀엽게 잘찍어주셨네요 ㅎㅎㅎ 라이브로 보니 오뜨가 좋아하는게 보여서 저도 웃을수 있었어요!
						혼자 있는 아이가 너무 걱정 됐었는데 이렇게 마음 놓게 해주셔서 정말 감사드립니다ㅎㅎ 다음에도 기회가 된다면 또
						부탁드리고 싶네요 좋은하루 보내세요 펫시터님🤗</h6>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>

	<div class="modal fade" id="myModal1" data-backdrop="static"
		data-keyboard="false">
		<div class="modal-dialog modal-xl modal-dialog-centered">
			<div class="wrap">
				<h1>후기</h1>
				<form name="reviewform" class="reviewform" method="post"
					action="/save">
					<input type="hidden" name="rate" id="rate" value="0" />
					<p class="title_star">별점과 리뷰를 남겨주세요.</p>

					<div class="review_rating">
						<div class="warning_msg">별점을 선택해 주세요.</div>
						<div class="rating">
							<!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
							<input type="checkbox" name="rating" id="rating1" value="1"
								class="rate_radio" title="1점"> <label for="rating1"></label>
							<input type="checkbox" name="rating" id="rating2" value="2"
								class="rate_radio" title="2점"> <label for="rating2"></label>
							<input type="checkbox" name="rating" id="rating3" value="3"
								class="rate_radio" title="3점"> <label for="rating3"></label>
							<input type="checkbox" name="rating" id="rating4" value="4"
								class="rate_radio" title="4점"> <label for="rating4"></label>
							<input type="checkbox" name="rating" id="rating5" value="5"
								class="rate_radio" title="5점"> <label for="rating5"></label>
						</div>
					</div>
					<div class="review_contents">
						<div class="warning_msg">5자 이상으로 작성해 주세요.</div>
						<textarea rows="10" class="review_textarea"></textarea>
					</div>
					<div class="cmd">
						<input type="button" name="save" id="save" value="등록">
					</div>
				</form>
			</div>
		</div>
	</div>

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



</body>
</html>