<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/petsitting/table.css">
<link rel="stylesheet" href="css/petsitting/style.css">
<style>
body {
	color: #555;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

h1 {
	font-weight: 400;
}

p {
	margin: 0 0 20px;
	line-height: 1.5;
}

.main {
	min-width: 320px;
	max-width: 70%;
	padding: 50px;
	margin: 0 auto;
	background: #ffffff;
}

section {
	display: none;
	padding: 20px 0 0;
	border-top: 1px solid #ddd;
}

/*라디오버튼 숨김*/
input {
	display: none;
}

/* #tab1:checked+label {
	z-index: 10;
	padding: 15px 25px;
	font-weight: 600;
	text-align: center;
	color: #bbb;
}

#tab2:checked+label {
	z-index: 10;
	padding: 15px 25px;
	font-weight: 600;
	text-align: center;
	color: #bbb;
} */
label {
	display: inline-block;
	margin: 0 0 -1px;
	font-weight: 600;
	text-align: center;
	color: #bbb;
	border: 1px solid transparent;
}

label:hover {
	color: #2e9cdf;
	cursor: pointer;
}

/*input 클릭시, label 스타일*/
#tab1:checked+label {
	color: #555;
	border: 1px solid #ddd;
	border-top: 2px solid #f96436;
	border-bottom: 1px solid #ffffff;
	padding: 15px 25px;
	font-weight: 600;
	text-align: center;
}

#tab2:checked+label {
	color: #555;
	border: 1px solid #ddd;
	border-top: 2px solid #f96436;
	border-bottom: 1px solid #ffffff;
	padding: 15px 25px;
	font-weight: 600;
	text-align: center;
}

#tab1:checked ~ #content1, #tab2:checked ~ #content2 {
	display: block;
}

body {
	color: #566787;
	background: #ffffff;
	font-family: 'Roboto', sans-serif;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	width: 850px;
	background: #fff;
	margin: 0 auto;
	padding: 20px 30px 5px;
	box-shadow: 0 0 1px 0 rgba(0, 0, 0, .25);
}

.table-title .btn-group {
	float: right;
}

.table-title .btn {
	min-width: 50px;
	border-radius: 2px;
	border: none;
	padding: 6px 12px;
	font-size: 95%;
	outline: none !important;
	height: 30px;
}

.table-title {
	min-width: 100%;
	border-bottom: 1px solid #e9e9e9;
	padding-bottom: 15px;
	margin-bottom: 5px;
	background: rgb(0, 50, 74);
	margin: -20px -31px 10px;
	padding: 15px 30px;
	color: #fff;
}

.table-title h2 {
	margin: 2px 0 0;
	font-size: 24px;
}

table.table {
	min-width: 100%;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	/* 	width: 40px; */
	
}

table.table tr th:last-child {
	/* width: 100px; */
	
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table td a {
	color: #2196f3;
}

table.table td .btn.manage {
	background: #37BC9B;
	color: #fff;
	border-radius: 2px;
}

#search {
	padding: 2px 10px;
	background: #ef4419;
	color: #fff;
	border: none;
}

table.table td .btn.complete {
	padding: 2px 10px;
	background: #c2ccd5;
	color: #fff;
	border-radius: 2px;
}

table.table td .btn.manage:hover {
	background: #2e9c81;
}

a, a:hover, a:visited, a:active {
	text-decoration: none;
	color: #000;
}

a:hover {
	color: #a00;
}

h1 {
	text-align: center;
	background-color: #fff;
	padding: 5px;
	margin: 0;
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

.rating .ratefill {
	background-color: #ff8;
	width: 0;
	height: 60px;
	position: absolute;
}

.cmd {
	margin-top: 20px;
	text-align: right;
}

.cmd input[type="button"] {
	padding: 10px 20px;
	border: 1px solid #e8e8e8;
	background-color: #fff;
	background-color: #000;
	color: #fff;
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

.bg-modal {
	width: 100%;
	height: 100%;
	background-color: black;
}

.star-rating {
	display: flex;
	flex-direction: row-reverse;
	font-size: 1.5em;
	justify-content: space-around;
	padding: 0 .2em;
	text-align: center;
	width: 5em;
}

.star-rating input {
	display: none;
}

.star-rating label {
	color: #ccc;
	cursor: pointer;
}

.star-rating :checked ~ label {
	color: #f90;
}

.star-rating label:hover, .star-rating label:hover ~ label {
	color: #fc0;
}

/* explanation */
article {
	background-color: #ffe;
	box-shadow: 0 0 1em 1px rgba(0, 0, 0, .25);
	color: #006;
	font-family: cursive;
	font-style: italic;
	margin: 4em;
	max-width: 30em;
	padding: 2em;
}

.ModalPopup {
	border: 1px solid blue;
	width: 100px;
	height: 100px;
	display: none;
	position: absolute;
	z-index: 10000;
	background-color: #fff;
}
</style>
<script>
	$(document).ready(function() {
		$(".btn-group .btn").click(function() {
			var inputValue = $(this).find("input").val();
			if (inputValue != 'all') {
				var target = $('table tr[data-status="' + inputValue + '"]');
				$("table tbody tr").not(target).hide();
				target.fadeIn();
			} else {
				$("table tbody tr").fadeIn();
			}
		});
		// Changing the class of status label to support Bootstrap 4
		var bs = $.fn.tooltip.Constructor.VERSION;
		var str = bs.split(".");
		if (str[0] == 4) {
			$(".label").each(function() {
				var classStr = $(this).attr("class");
				var newClassStr = classStr.replace(/label/g, "badge");
				$(this).removeAttr("class").addClass(newClassStr);
			});
		}
	});
</script>
</head>
<body>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>내가 작성한 후기</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END nav -->
	<section>
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5"></div>
			</div>
		</div>
	</section>



	<div class="main">
		<input id="tab1" type="radio" name="tabs" checked>
		<!--디폴트 메뉴-->
		<label id="tab1" for="tab1">서비스 이용 내역 조회</label> <input id="tab2"
			type="radio" name="tabs"> <label id="tab2" for="tab2">내가
			작성한 후기</label>
		<section id="content1">
			<select id="stts" name="stts">
				<option value="접수완료">접수 완료</option>
				<option value="서비스완료">서비스 완료</option>
				<option value="취소및환불">취소 및 환불</option>
			</select>

			<button id="search" onclick="javascript:status()">조회</button>
			<hr>
			<input style="font-size: 7pt;">* 후기 작성 버튼을 클릭하시면 해당 서비스에 대한
			후기를 작성하실 수 있으며, 자세한 내역은 내가 작성한 후기 탭에서 확인하실 수 있습니다.<br> <br>

			<form action="tDetail.do" id="tlistForm" name="tlistForm"
				method="post">
				<!-- <div onclick="$(this).closest('form').submit()"> -->
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>예약번호</th>
								<th>이용일자</th>
								<th>이용 서비스</th>
								<th>담당 훈련사</th>
								<th>금액</th>
								<th>주문처리상태</th>
								<th>이용후기</th>
							</tr>
						</thead>
						<tbody align="center">
							<c:forEach items="${serviceUses }" var="serUse">
								<input type="hidden" id="client_id" name="client_id"
									value="${serUse.client_id2 }">
								<tr>
									<td>${serUse. reser_no}</td>
									<td>${serUse. reser_dt}</td>
									<td>${serUse. knd_name}(${serUse.term }시간)</td>
									<td><a href="$(this).closest('form').submit()">${serUse. name} 훈련사</a></td>
									<td>${serUse. prc}원</td>
									<td><span class="label label-success">${serUse. status}</span></td>
									<td><c:if test="${serUse.reviewyn == '0'}">
											<a href="#" class="btn btn-sm manage"
												data-reserno="${serUse. reser_no}" data-toggle="modal"
												data-target="#reviewModal">후기 작성</a>
										</c:if> <c:if test="${serUse.reviewyn > '0'}">
											<a class="btn btn-sm complete">작성 완료</a>
										</c:if></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				<!-- </div> -->
			</form>
		</section>

		<section id="content2">
			<div>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th style="width: 60px">번호</th>
							<th style="width: 150px">이용&nbsp;서비스</th>
							<th style="width: 130px">담당&nbsp;훈련사</th>
							<th>내용</th>
							<th style="width: 100px">별점</th>
							<th style="width: 150px">작성일자</th>
							<th style="width: 150px"></th>
						</tr>
					</thead>
					<tbody align="center">
						<c:forEach items="${myReviews }" var="myReview">
							<tr data-status="active">
								<td>${myReview.review_no }</td>
								<td>${myReview.knd_name }(${myReview.term }시간)</td>
								<td>${myReview.name }</td>
								<td>${myReview.cntn }</td>
								<td>${myReview.star_shape }</td>
								<td>${myReview.reg_dt }</td>
								<td><a href="#" class="btn btn-sm manage"
									data-toggle="modal" data-target="#reviewUpdate">수정</a>&nbsp;&nbsp;
									<a href="javascript:window.alert('삭제하시겠습니까?')"
									class="btn btn-sm manage">삭제</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>

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
		</div>
		<br> <br>
	</div>

	<!-- 후기작성 등록 Modal 시작 -->
	<div class="modal first" id="reviewModal" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" style="text-align: left;">후기</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<form role="form" id="signform" name="signform" method="post">
						<input type="hidden" id="reser_no" name="reser_no">
						<h2 align="center">
							<strong>별점과 이용경험을 남겨주세요 :)</strong>
						</h2>
						<div class="modalpopup" align="center">
							<div class="star-rating">
								<input type="radio" id="5-stars" name="star_rate" value="5" />
								<label for="5-stars" class="star"
									style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>
								<input type="radio" id="4-stars" name="star_rate" value="4" />
								<label for="4-stars" class="star"
									style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>
								<input type="radio" id="3-stars" name="star_rate" value="3" />
								<label style="font-size: 30pt; width: 40px; height: 40px"
									for="3-stars" class="star">&#9733;</label> <input type="radio"
									id="2-stars" name="star_rate" value="2" /> <label
									style="font-size: 30pt; width: 40px; height: 40px"
									for="2-stars" class="star">&#9733;</label> <input type="radio"
									id="1-star" name="star_rate" value="1" /> <label for="1-star"
									class="star" style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>
							</div>
						</div>
						<br> <br>
						<textarea id="eml_cnt"
							style="width: 100%; margin-top: 0px; margin-bottom: 0px; height: 286px; resize: none;"
							name="cntn" rows="10" class="form-control"
							placeholder="내용을 입력해 주세요."></textarea>
						<br> <br> <img id="camera_img" src="img/camera.png"
							style="height: 90px; width: 130px"> <input type="file"
							id="file" name="file" accept="image/gif,image/jpeg,image/png"
							onchange="fileCheck(this)" style="display: none;">
						<!-- <input
							type="hidden" name="file_no"> -->
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="okbutton" class="btn btn-success"
						data-dismiss="modal" onclick="insert()">입력</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 후기작성 Modal 종료 -->

	<!-- 후기수정 Modal 시작 -->
	<div class="modal first" id="reviewUpdate" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" style="text-align: left;">후기 수정</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<form role="form" id="signform1" name="signform1" method="post">
						<h2 align="center">
							<strong>별점과 이용경험을 남겨주세요 :)</strong>
						</h2>
						<div class="modalpopup" align="center">
							<div class="star-rating">
								<input type="radio" id="5-stars" name="star_rate" value="5" />
								<label for="5-stars" class="star"
									style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>
								<input type="radio" id="4-stars" name="star_rate" value="4" />
								<label for="4-stars" class="star"
									style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>
								<input type="radio" id="3-stars" name="star_rate" value="3" />
								<label style="font-size: 30pt; width: 40px; height: 40px"
									for="3-stars" class="star">&#9733;</label> <input type="radio"
									id="2-stars" name="star_rate" value="2" /> <label
									style="font-size: 30pt; width: 40px; height: 40px"
									for="2-stars" class="star">&#9733;</label> <input type="radio"
									id="1-star" name="star_rate" value="1" /> <label for="1-star"
									class="star" style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>
							</div>
						</div>
						<br> <br>
						<textarea id="eml_cnt"
							style="width: 100%; margin-top: 0px; margin-bottom: 0px; height: 286px; resize: none;"
							name="eml_cnt" rows="10" class="form-control"
							placeholder="${review.cntn }"></textarea>
						<br> <br> <img id="camera_img" src="img/camera.png"
							style="height: 90px; width: 130px"> <input type="file"
							id="file" name="file" accept="image/gif,image/jpeg,image/png"
							onchange="fileCheck(this)" style="display: none;"> <input
							type="hidden" name="camera">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="okbutton" class="btn btn-success"
						data-dismiss="modal">수정</button>
					<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 후기수정 Modal 종료 -->
	<script>
		$('#camera_img').click(
				function(e) {
					document.signform.camera.value = document
							.getElementById('camera_img').src;
					e.preventDefault();
					$('#file').click();
				});

		function rDelete() {
			window.alert('정말 삭제하시겠습니까?');
		};

		function status() {//console.log(status.value);
			// Declare variables
			var filter, table, tr, i, txtValue;
			stts = document.getElementById("stts");
			filter = stts.value;
			table = document.getElementById("myTable");
			tbody = table.getElementByTagName("tbody");
			tr = tbody.getElementsByTagName("tr");

			// Loop through all table rows, and hide those who don't match the search query
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[0];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}

		function insert() {

			var data = $("#signform").serialize();

			alert("저장하시겠습니까?");
			$.ajax({
				url : "reviewInsert.do",
				type : "post",
				data : data,
				success : function(data) {
					if (data == 1) {
						alert("후기가 등록되었습니다.");
						location.reload();
					} else {
						alert("후기 등록에 실패하였습니다.");
					}
				},
				error : function() {
					alert("후기 등록에 실패하였습니다.");
				}
			});
		};

		$('#reviewModal').on('show.bs.modal', function(e) {
			$('#reser_no').val($(event.target).data('reserno'))
		})
	</script>

</body>
</html>
