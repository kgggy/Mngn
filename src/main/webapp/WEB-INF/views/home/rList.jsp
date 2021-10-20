<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/rmain.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
.contents {
	box-sizing: border-box;
	width: 500px;
	height: 300x;
	background-color: orange;
	padding: 5px 10px;
	text-align: center;
	float: left;
}

.work mb-4 img d-flex align-items-end img {
	vertical-align: top;
	float: left;
}

#middle img {
	vertical-align: middle;
}

#bottom img {
	vertical-align: bottom;
}

.work mb-4 img d-flex align-items-end {
	border: 1px solid blue;
}

p {
	display: inline-block;
}

.rating .rate_radio+label {
	position: relative;
	display: inline-block;
	margin-left: -4px;
	z-index: 10;
	width: 60px;
	height: 60px;
	background-image: url('./img/starrate.png');
	background-repeat: no-repeat;
	background-size: 60px 60px;
	cursor: pointer;
	background-color: #f0f0f0;
}

.rating .rate_radio:checked+label {
	background-color: #ff8;
}

/* 레이아웃 외곽 너비 400px 제한*/
.wrap {
	max-width: 480px;
	margin: 0 auto; /* 화면 가운데로 */
	background-color: #fff;
	height: 100%;
	padding: 20px;
	box-sizing: border-box;
}

.reviewform textarea {
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
}

.rating .rate_radio {
	position: relative;
	display: inline-block;
	z-index: 20;
	opacity: 0.001;
	width: 60px;
	height: 60px;
	background-color: #fff;
	cursor: pointer;
	vertical-align: top;
	display: none;
}

.rating .rate_radio+label {
	position: relative;
	display: inline-block;
	margin-left: -4px;
	z-index: 10;
	width: 60px;
	height: 60px;
	background-image: url('./img/starrate.png');
	background-repeat: no-repeat;
	background-size: 60px 60px;
	cursor: pointer;
	background-color: #f0f0f0;
}

.rating .rate_radio:checked+label {
	background-color: #ff8;
}

.warning_msg {
	display: none;
	position: relative;
	text-align: center;
	background: #ffffff;
	line-height: 26px;
	width: 100%;
	color: red;
	padding: 10px;
	box-sizing: border-box;
	border: 1px solid #e0e0e0;
}
</style>
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
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index.html">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>이용 후기 <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread">이용 후기</h1>
				</div>
			</div>
		</div>
	</section>
	<div id="features-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-4 col-12-medium">
					<!-- Box -->
					<section class="box feature">

						<div class="inner" data-toggle="modal" data-target="#myModal">
							<header>
								<h2>대구시 달서구</h2>
								<p>고양이(코숏) 2세</p>
							</header>
							<p>감사합니다:) 둘 데리고 산책이 버거우셨을텐데</p>
						</div>
					</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">

						<div class="inner" data-toggle="modal" data-target="#myModal1">
							<header>
								<h2>An interesting title</h2>
								<p>This is also an interesting subtitle</p>
							</header>
							<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in
								lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
						</div>
					</section>

				</div>
				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">

						<div class="inner" data-toggle="modal" data-target="#myModal">
							<header>
								<h2>Oh, and finally ...</h2>
								<p>Here's another intriguing subtitle</p>
							</header>
							<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in
								lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
						</div>
					</section>

				</div>

				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<div class="inner" data-toggle="modal" data-target="#myModal">
							<header>
								<h2>An interesting title</h2>
								<p>This is also an interesting subtitle</p>
							</header>
							<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in
								lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
						</div>
					</section>

				</div>

				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<div class="inner" data-toggle="modal" data-target="#myModal">
							<header>
								<h2>An interesting title</h2>
								<p>This is also an interesting subtitle</p>
							</header>
							<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in
								lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
						</div>
					</section>

				</div>

				<div class="col-4 col-12-medium">

					<!-- Box -->
					<section class="box feature">
						<div class="inner" data-toggle="modal" data-target="#myModal">
							<header>
								<h2>An interesting title</h2>
								<p>This is also an interesting subtitle</p>
							</header>
							<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in
								lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
						</div>
					</section>

				</div>
			</div>
		</div>
	</div>

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


	<script src="assets/js/rjquery.min.js"></script>
	<script src="assets/js/rjquery.dropotron.min.js"></script>
	<script src="assets/js/rbrowser.min.js"></script>
	<script src="assets/js/rbreakpoints.min.js"></script>
	<script src="assets/js/rutil.js"></script>
	<script src="assets/js/rmain.js"></script>
</body>
</html>