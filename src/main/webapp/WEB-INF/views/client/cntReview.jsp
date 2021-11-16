<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>
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

#tab1:checked ~#content1, #tab2:checked ~#content2 {
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
	cursor: default;
}

table.table td .btn.den {
	padding: 2px 10px;
	background: #ef4419;
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
	margin: 0 auto;
	/* 화면 가운데로 */
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

.star-rating :checked ~label {
	color: #f90;
}

.star-rating label:hover, .star-rating label:hover ~label {
	color: #fc0;
}

.star-rating1 {
	display: flex;
	flex-direction: row-reverse;
	font-size: 1.5em;
	justify-content: space-around;
	padding: 0 .2em;
	text-align: center;
	width: 5em;
}

.star-rating1 input {
	display: none;
}

.star-rating1 label {
	color: #ccc;
	cursor: pointer;
}

.star-rating1 :checked ~label {
	color: #f90;
}

.star-rating1 label:hover, .star-rating1 label:hover ~label {
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
		<!--디폴트 메뉴-->
		<input id="tab1" type="radio" name="tabs"
			<c:if test="${empty param.tab2 }"> checked </c:if>> <label
			id="tab1" for="tab1">서비스 이용 내역 조회</label> <input id="tab2"
			type="radio" name="tabs"
			<c:if test="${!empty param.tab2 }"> checked </c:if>> <label
			id="tab2" for="tab2">내가 작성한 후기</label>
		<section id="content1">
			<select id="stts" name="stts">
				<option value="대기중">대기중</option>
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
				<input name="client_id" type="hidden">
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
							<th></th>
						</tr>
					</thead>
					<tbody align="center">
						<c:forEach items="${serviceUses }" var="serUse">
							<tr class="modalserv">
								<td>${serUse. reser_no}</td>
								<td>${serUse. reser_dt}</td>
								<td>${serUse. knd_name}(${serUse.term }시간)</td>
								<td><a href="javascript:tDetailSm(${serUse.client_id2 })">${serUse. name}
										훈련사</a></td>
								<td>${serUse. prc}원</td>
								<td><span class="label label-success">${serUse. status}</span></td>
								<td><c:if test="${serUse.status eq '대기중'}">
										<a href="#" class="btn btn-sm den" style="background:red;">접수 취소</a>
									</c:if> 
									<c:if test="${serUse.status eq '접수 완료'}">
									</c:if> 
									<c:if test="${serUse.status eq '서비스 완료' && serUse.reviewyn == '0'}">
										<a href="#" class="btn btn-sm manage"
											data-reserno="${serUse. reser_no}" data-toggle="modal"
											data-target="#reviewInsert">후기 작성</a>
									</c:if> 
									<c:if test="${serUse.reviewyn > '0'}">
										<a class="btn btn-sm complete">후기 작성 완료</a>
									</c:if>
									<c:if test="${serUse.status eq '취소 및 환불'}">
									</c:if>
									</td>
							</tr>
							<input name="reser_no" id="reser_no1" type="hidden" value="${serUse.reser_no}">
						</c:forEach>
					</tbody>
				</table>
				<!-- </div> -->
			</form>
			<my:paging jsFunc="goList1" paging="${svcPaging}" />
		</section>

		<section id="content2">
			<div>
				<form action="reviewDelete.do" id="rvDelete" name="rvDelete"
					method="post">
					<input type="hidden" name="review_no" id="review_no">
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
									<td><a href="#" class="open-ReviewModal btn btn-sm manage"
										data-toggle="modal" data-target="#reviewUpdate"
										data-no="${myReview.cntn }" data-rno="${myReview.review_no }">수정</a>&nbsp;&nbsp; <a
										href="javascript:reviewDelete(${myReview.review_no })"
										class="btn btn-sm manage">삭제</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
			</div>
			<my:paging jsFunc="goList2" paging="${rvPaging}" />
		</section>
		<br> <br>
	</div>

	<!-- 후기 등록 Modal 시작 -->
	<div class="modal first" id="reviewInsert" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" style="text-align: left;">후기</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<form role="form" id="signform" name="signform" method="post"
						enctype="multipart/form-data">
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
						<textarea id="cntn"
							style="width: 100%; margin-top: 0px; margin-bottom: 0px; height: 286px; resize: none;"
							name="cntn" rows="10" class="form-control"
							placeholder="내용을 입력해 주세요."></textarea>
						<br> <br> <img id="insertC" src="img/camera.png"
							style="height: 90px; width: 130px"> <input type="file"
							id="uploadFile" name="uploadFile"
							accept="image/gif,image/jpeg,image/png" style="display: none;"
							multiple> <input type="hidden" name="camera">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="uploadBtn" class="btn btn-success">입력</button>
					<button type="button" id="cancel" class="btn btn-danger"
						data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 후기 등록 Modal 종료 -->

	<!-- 후기 수정 Modal 시작 -->
	<div class="modal first" id="reviewUpdate" role="dialog">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" style="text-align: left;">후기 수정</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<form action="reviewUpdate.do" id="rvUpdate" name="rvUpdate" method="post">
						<input type="hidden" id="rno" name="review_no">
						<h2 align="center">
							<strong>별점과 이용경험을 남겨주세요 :)</strong>
						</h2>
						<div class="modalpopup" align="center">
							<div class="star-rating1">
								<input type="radio" id="5-stars1" name="star_rate1" value="5" />
								<label for="5-stars1" class="star"
									style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>

								<input type="radio" id="4-stars1" name="star_rate1" value="4" />
								<label for="4-stars1" class="star"
									style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>

								<input type="radio" id="3-stars1" name="star_rate1" value="3" />
								<label style="font-size: 30pt; width: 40px; height: 40px"
									for="3-stars1" class="star">&#9733;</label> <input type="radio"
									id="2-stars1" name="star_rate1" value="2" /> <label
									style="font-size: 30pt; width: 40px; height: 40px"
									for="2-stars1" class="star">&#9733;</label> <input type="radio"
									id="1-star1" name="star_rate1" value="1" /> <label
									for="1-star1" class="star"
									style="font-size: 30pt; width: 40px; height: 40px">&#9733;</label>
							</div>
						</div>
						<br> <br>
						<textarea id="eml_cnt"
							style="width: 100%; margin-top: 0px; margin-bottom: 0px; height: 286px; resize: none;"
							name="cntn" rows="10" class="form-control" placeholder=""></textarea>
						<br> <br> <img id="updateC" src="img/camera.png"
							style="height: 90px; width: 130px"> <input type="file"
							id="uploadFile" name="uploadFile"
							accept="image/gif,image/jpeg,image/png" style="display: none;">
						<input type="hidden" name="camera">
					</form>
				</div>
				<div class="modal-footer">
					<a href="javascript:reviewUpdate()" id="okbutton" class="btn btn-success">수정</a>
					<button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>
	<!-- 후기 수정 Modal 종료 -->
	<script>
		$('#insertC').click(function(e) {
			e.preventDefault();
			$('#signform #uploadFile').click();
		});

		$('#updateC').click(function(e) {
			e.preventDefault();
			$('#rvUpdate #uploadFile').click();
		});

		//모달창 뜰때 예약번호 넘기기
		$('#reviewInsert').on('show.bs.modal', function(e) {
			$('#reser_no').val($(event.target).data('reserno'))
		})

		//후기 등록하기 및 파일업로드
		$("#uploadBtn").on("click", function(e) {
			if ($("input[name='star_rate']:checked").length == 0) {
				alert("별점을 입력해주세요.");
				return;
			}
			if ($('#cntn').val() == 0) {
				alert("내용을 입력해주세요.");
				return;
			}
			if (!confirm("저장하시겠습니까?"))
				return;
			var form = new FormData(signform);
			$.ajax({
				url : "reviewInsert.do",
				processData : false,
				contentType : false,
				type : "post",
				data : form,
				success : function(data) {
					if (data == 1) {
						alert("후기가 등록되었습니다.");
						location.reload();
					} else {
						alert("후기 X");
					}
				},
				error : function() {
					alert("후기 등록에 실패하였습니다.");
				}
			}); //ajax
		}); //btn click

		//페이징 처리
		function goList1(p) {
			//searchFrm.page.value=p; //페이지 번호 받아서 폼태그에 넣어서 submit(폼 안에 페이지번호가 히든으로, 검색조건과 정렬방식도 가지고 넘어감)
			//searchFrm.submit();
			location.href = "cntReview.do?page1=" + p
		}
		function goList2(p) {
			//searchFrm.page.value=p; //페이지 번호 받아서 폼태그에 넣어서 submit(폼 안에 페이지번호가 히든으로, 검색조건과 정렬방식도 가지고 넘어감)
			//searchFrm.submit();
			location.href = "cntReview.do?tab2=1&page2=" + p

		}
		//훈련사 상세보기로 이동
		function tDetailSm(id) {
			tlistForm.client_id.value = id
			$('#tlistForm').submit();
		}
		//후기 삭제 처리
		function reviewDelete(rid) {
			if (confirm('정말 삭제하시겠습니까?') == true) {
				rvDelete.review_no.value = rid
				$('#rvDelete').submit();
				alert('삭제가 완료되었습니다.');
			} else {
				return;
			}
		}
		//후기 수정 처리
		function reviewUpdate() {
			if (confirm('후기를 수정하시겠습니까?') == true) {
				$('#rvUpdate').submit();
				alert('수정이 완료되었습니다.');
			} else {
				return;
			}
		}; 

		//내용 받아서 수정 모달창으로 넘기기
		$('.open-ReviewModal').on("click", function() {
			var myRvId = $(this).data('no');
			$('#eml_cnt').attr('placeholder', myRvId);
			$('#rno').val($(event.target).data('rno'))
		});
		
		//의뢰 취소
		$('.den').on('click', function(e) {
			var reser_no = $(e.target).closest('.modalserv').next().val();
			if(confirm("접수를 취소하시겠습니까?") == true) {
				$.ajax({
					url:"ajaxStts3.do",
					type:"post",
					data:{reser_no : reser_no},
					dataType: "json",
					success: function(data) {
						alert("취소되었습니다.");	
						location.reload();
					},
					error: function() {
						alert("다시 시도해주세요.");
					}
				});
			} else {
				return;
			}  
		});
		
		//이미지 미리보기
		
	</script>

</body>

</html>
