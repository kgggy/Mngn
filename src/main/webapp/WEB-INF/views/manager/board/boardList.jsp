<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html lang="en" class="no-js">
<!-- Head -->

<head>
<title>공지사항 상세보기</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="keywords"
	content="Bootstrap Theme, Freebies, Dashboard, MIT license">
<meta name="description" content="Stream - Dashboard UI Kit">
<meta name="author" content="htmlstream.com">

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

<!-- Web Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Cabin:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&family=Open+Sans&display=swap"
	rel="stylesheet">

<!-- Components Vendor Styles -->
<link rel="stylesheet" href="assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet"
	href="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">

<!-- Theme Styles -->
<link rel="stylesheet" href="assets/css/theme.css">
<link rel="stylesheet" href="assets/css/style.css">


<!-- Custom Charts -->
<style>
.js-doughnut-chart {
	width: 70px !important;
	height: 70px !important;
}
</
head
>
</style>
<!-- Global Vendor -->
<script src="assets/vendor/jquery/dist/jquery.min.js"></script>
<script src="assets/vendor/jquery-migrate/jquery-migrate.min.js"></script>
<script src="assets/vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="assets/vendor/bootstrap/bootstrap.min.js"></script>

<!-- Plugins -->
<script
	src="assets/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/vendor/chart.js/dist/Chart.min.js"></script>

<!-- Initialization  -->
<script src="assets/js/main.js"></script>
<script src="assets/js/sidebar-nav.js"></script>
<script src="assets/js/dashboard-page-scripts.js"></script>
<script>
	$(document).ready(function() {
		$('#exampleModalCenter').on('show.bs.modal', function(event) {
			var tr = $(event.relatedTarget).closest('tr') // Button that triggered the modal
			
			var data0 = tr.data("id");
			var data1 = tr.find('td:eq(1)').html()
			var data3 = tr.find('td:eq(3)').html()
			var data5 = tr.find('td:eq(5)').html()
			
			
			$(this).find('.modal-body #bNo').val(data0)
			$(this).find('.modal-body #ttl').val(data1)
			$(this).find('.modal-body #reg_dt').val(data3)
			$(this).find('.modal-body #cntn').val(data5)
		})
	});
</script>


<!-- End Head -->
<body class="page-order-all">
	<!-- Header (Topbar) -->
	<header class="astino-header u-header">
		<div class="u-header-left">
			<a class="u-header-logo" href="mngMain.do"> <img
				src="assets/logo.png" width="160">
			</a>
		</div>

		<div class="u-header-middle">
			<a class="js-sidebar-invoker u-sidebar-invoker" href="#!"
				data-is-close-all-except-this="true" data-target="#sidebar"> <i
				class="fa fa-bars u-sidebar-invoker__icon--open"></i>
			</a> <span class="js-sidebar-invoker u-sidebar-invoker"> 관리자님
				환영합니다. </span>
		</div>
	</header>
	<!-- End Header (Topbar) -->

	<main class="u-main" role="main">

		<!-- Sidebar -->
		<aside id="sidebar" class="astino-sidebar u-sidebar">
			<div class="u-sidebar-inner">
				<header class="u-sidebar-header">
					<a class="u-sidebar-logo" href="mngMain.do"> <img
						class="img-fluid" src="assets/img/logo.png" width="124"
						alt="Stream Dashboard">
					</a>
				</header>

				<nav class="u-sidebar-nav">
					<ul class="u-sidebar-nav-menu u-sidebar-nav-menu--top-level">
						<!-- 주간 리포트 -->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="mngMain.do"> <i
								class="fas fa-th-large u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">주간 리포트</span>
						</a></li>
						<!-- End 주간 리포트 -->

						<!-- 공지사항 관리 -->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link active" href="boardList.do">
								<i class="far fa-edit u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">공지사항 관리</span>
						</a></li>
						<!-- End 공지사항 관리 -->

						<!-- 회원 관리 -->
						<li class="u-sidebar-nav-menu__item clearfix"><a
							class="u-sidebar-nav-menu__link" href="cntList.do"
							data-target="#subMenu22"> <i
								class="fab fa-product-hunt u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">회원관리</span> <i
								class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i> <span
								class="u-sidebar-nav-menu__indicator"></span>
						</a>

							<ul id="subMenu22"
								class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level text-center"
								style="display: none;">
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link active" href="cntList.do">
										<span class="u-sidebar-nav-menu__item-title">사용자 관리</span>
								</a></li>
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="trnList.do"> <span
										class="u-sidebar-nav-menu__item-title">훈련사 관리</span>
								</a></li>
							</ul></li>
						<!-- End 회원 관리 -->
						
						<!-- 훈련사 수당 관리-->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="salaryList.do"> <i
								class="fas fa-list-alt u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">훈련사 수당 관리</span>
						</a></li>
						<!-- End 훈련사 수당 관리 -->

						<!-- 관리자 로그아웃-->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link " href="home.do"> <i
								class="fas fa-cogs u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">로그아웃</span>
						</a></li>
						<!-- End 관리자 로그아웃 -->
					</ul>
				</nav>
			</div>
		</aside>
		<!-- End Sidebar -->


		<div class="u-content">
			<div class="u-body">
				<div class="row">
					<!-- 공지사항 목록 -->
					<div class="col-md-12 mb-4">
						<div class="card h-100">
							<header class="card-header d-flex align-items-center">
								<h2 class="h2 card-header-title">공지사항 목록</h2>
							</header>
							
							<div class="card-body">
								<div class="table-responsive" >
									<form action="boardDelete.do" id="bdDelete" name="bdDelete"
										method="post">
										<input type="hidden" id="board_no" name="board_no">
										<div id="excelBoard">
										<table id="table" class="table table-hover">
											<thead>
												<tr>
													<th scope="col" class="text-dark">일련번호</th>
													<th scope="col" class="text-dark">제목</th>
													<th scope="col" class="text-dark">작성자</th>
													<th scope="col" class="text-dark">작성일자</th>
													<th scope="col" class="text-dark"></th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="board" items="${boards}">
													<tr data-id= "${board.board_no }">
														<td>${board.board_no }</td>
														<td>${board.ttl }</td>
														<td>관리자</td>
														<td>${board.reg_dt }</td>
														<td><a href="#"
															class="btn btn-outline-danger delete_board"
															data-toggle="modal" data-target="#exampleModalCenter">수정</a>&nbsp;&nbsp;
															<a href="javascript:bDelete(${board.board_no })"
															class="btn btn-outline-danger">삭제</a></td>
														<td style="display: none;">${board.cntn}</td>
														<td style="display: none;">${board.mngr_id })</td>
													</tr>
												</c:forEach>
											</tbody>
										</table>
										</div>
									</form>
								<div>
									<input type="button" onClick="window.open('boardForm.do')"
										class="btn btn-outline-danger btn-large float-right" value="공지사항 등록">
								</div>
									<my:paging jsFunc="goList" paging="${paging}" />
								</div>
							</div>
						</div>
					</div>
					<!-- End Current Projects -->
				</div>
			</div>

			<!-- Footer -->
			<footer
				class="astino-footer u-footer d-md-flex align-items-md-center text-center text-md-left">
				<p class="h5 mb-2 mb-md-0">
					Made with love by <a class="text-danger"
						href="https://themespell.com/" target="_blank">Themespell</a>
				</p>

				<p class="h5 mb-0 ml-auto">
					&copy; 2020 <a class="text-danger" href="https://themespell.com/"
						target="_blank">Themespell</a>. All Rights Reserved.
				</p>
			</footer>
			<!-- End Footer -->
		</div>
	</main>

	<!-- Large Size Modal-->
	<div class="modal fade bd-example-modal-lg" id="exampleModalCenter"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">공지사항 수정</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- Current Projects -->
					<div class="col-md-12 mb-4">
						<div class="card h-100">
							<div class="astino-pr-form card-body">
								<form role="form" action="boardUpdate.do" id="bdUpate"
									name="bdUpate" method="post">
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput">제 목</label> <input
											type="text" class="form-control" id="ttl" name="ttl"
											placeholder="제목을 입력하세요" value="boardTtl">
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput2">작성자</label> <input
											type="text" class="form-control" id="mngr_id" 
											placeholder="관리자" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput3">작성 날짜</label> <input
											type="date" class="form-control" id="reg_dt" readonly>
									</div>
									<div class="form-group d-flex align-items-center">
										<label for="formGroupExampleInput4">내 용</label>
										<textarea class="form-control" id="cntn" name="cntn"
											placeholder="내용을 입력하세요" ></textarea>
									</div>
									<div style="display: none;">
										<label for="formGroupExampleInput4">일련번호</label> <input
											type="text" class="form-control" id="bNo" name="board_no"></input>
									</div>
								</form>
							</div>
						</div>
						<div class="modal-footer">
							<a href="#" id="updateBtn"
								class="btn btn-outline-danger">수정</a> <input type="button"
								class="btn btn-outline-danger" value="닫기" 
								data-dismiss="modal"/>
						</div>
					</div>
					<!-- End Current Projects -->
				</div>
			</div>
		</div>
	</div>
	<!-- Large Size Modal-->
	<script>
		$("#updateBtn").on("click", function(){
			var boardNo = $("#bNo").val();
			var ttl = $("#ttl").val();
			var cntn = $("#cntn").val();
			
			console.log( boardNo + " / " + ttl + " / " + cntn );
			
			$.ajax({
				url : "boardUpdate.do",
				contentType : 'application/json',
			    dataType: 'json',
				type : "post",
				data : JSON.stringify({ board_no : boardNo , ttl : ttl , cntn : cntn }),
				success : function(data) {
					console.log(data);
					if(data == 1) {
						alert("공지사항이 수정되었습니다.");
						location.reload();
					} else {
						alert("공지사항 X");
					}
				},
				error : function () {
					alert("공지사항 수정에 실패했습니다.");
				}
			}); //end ajax
			
		});
	


		//공지사항 삭제
		function bDelete(bid) {
			alert('정말 삭제하시겠습니까?');
			console.log(bid);
			bdDelete.board_no.value = bid;
			
			$('#bdDelete').submit();
		}

		//페이징 처리
		function goList(p) {
			location.href = "boardList.do?page=" + p
		}
		
		
	</script>
</body>

</html>