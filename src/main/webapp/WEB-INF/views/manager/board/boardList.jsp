<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
</style>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
		function search() {
			// Declare variables
			var div, filter, span, txtValue;
			div = document.getElementById("tDiv");
			span = document.getElementsByTagName("span");
			filter = document.getElementById('span1').innerHTML;
			console.log(filter);
		
			// Loop through all table rows, and hide those who don't match the search query
			for (i = 0; i < span.length; i++) {
				td = tr[i].getElementsByTagName("td")[0];
				if (td) {
					txtValue = td.textContent || td.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}


		//페이징 처리
		let totalData; //총 데이터 수
		let dataPerPage; //한 페이지에 나타낼 글 수
		let pageCount = 10; //페이징에 나타낼 페이지 수
		let globalCurrentPage=1; //현재 페이지
		
		$(document).ready(function () {
		 //dataPerPage 선택값 가져오기
		 dataPerPage = $("#dataPerPage").val();
		
		 $.ajax({ // ajax로 데이터 가져오기
			method: "GET",
			url: "https://url/data?" + data,
			dataType: "json",
			success: function (d) {
		   //totalData 구하기
			   totalData = d.data.length;
		 });
		
			//글 목록 표시 호출 (테이블 생성)
		 displayData(1, dataPerPage);
		
		 //페이징 표시 호출
		 paging(totalData, dataPerPage, pageCount, 1);
		});

 
<!-- 	$(function() {
		boardSelect();
		boardList();
		boardInsert();
		boardUpdate();
		boardDelete();
	});
	
    //공지사항 전체조회
	function boardList() {
    	$.ajax({
    		url : "/boardList.do",
    		method : "get",
    		dataType : "json",
    		success : boardListResult
    	});
    }
		 
		
	
	//공지사항 단건조회
	function boardSelect() {
		$.ajax({
			url : "",
			method : "get",
			dataType : "json",
			success : userListResult
		});
	}//end 공지사항 단건조회
	
	//공지사항 단건조회 화면구현
	function boardSelectResult(data) {
		$("tbody").empty();
		for (i=0, i< data.length; i++) {
			var item = data[i];
			$('tbody').append(makeTr(item));
		}
	}// end 공지사항 단건조회 화면구현
	
	

	
	//공지사항 등록
	function boardInsert() {
		//등록 버튼 클릭
		$(#'btnInsert').on('click', function() {
			$.ajax({
				url : "/boardList.do",
				method : "post",
				dataType : "json",
				success : function(data) {
					boardList();
				}
			})
		});
	} // end 공지사항 등록
	
	
	//공지사항 수정
	
	//공지사항 삭제
	/* function boardDelete() {
		$(".table-responsive").on("click", "#btnDelete", function() {
			var id = $(this).closest('tr').find('#hidden_board_no').val();
			var result = confirm(id + "글을 삭제하시겠습니까?");
			if (result) {
				$.ajax({
					url : "",
					type : "DELETE",
					dataType : "json",
					sucess : function(data) {
						boardList();
					}
				})
			}
		});
	}//end 공지사항 삭제 */
	
	function boardDelete() {
		window.alert('정말 삭제하시겠습니까?');
	};-->
	
</script> 

</head>
<!-- End Head -->

<body class="page-order-all">
	<!-- Header (Topbar) -->
	<header class="astino-header u-header">
		<div class="u-header-left">
			<a class="u-header-logo" href="home.do"> <img
				src="assets/logo.png" width="160"> 
			</a>
		</div>

		<div class="u-header-middle">
			<a class="js-sidebar-invoker u-sidebar-invoker" href="#!"
				data-is-close-all-except-this="true" data-target="#sidebar"> <i
				class="fa fa-bars u-sidebar-invoker__icon--open"></i> <i
				class="fa fa-times u-sidebar-invoker__icon--close"></i>
			</a>
		</div>

		<!-- User Profile -->
		<div class="astino-user-top-corner dropdown ml-2">
			<a class="link-muted d-flex align-items-center" href="#!"
				role="button" id="dropdownMenuLink" aria-haspopup="true"
				aria-expanded="false" data-toggle="dropdown"> <img
				class="u-avatar--xs img-fluid rounded-circle mr-2"
				src="assets/img/avatars/img.png" alt="User Profile"> <span
				class="d-none d-sm-inline-block"> Criss Donald <small
					class=""></small>
			</span>
			</a>
		</div>
		<!-- End User Profile -->
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
							class="u-sidebar-nav-menu__link active" href="boardList.do"> <i
								class="far fa-edit u-sidebar-nav-menu__item-icon"></i> <span
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
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="outList.do"> <span
										class="u-sidebar-nav-menu__item-title">탈퇴회원 관리</span>
								</a></li>
							</ul></li>
						<!-- End 회원 관리 -->

						<!-- 서비스 관리-->
						<li class="u-sidebar-nav-menu__item"><a
							class="u-sidebar-nav-menu__link" href="svcList.do"> <i
								class="fas fa-cogs u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">서비스 관리</span>
						</a></li>
						<!-- End 서비스 관리 -->

						<!-- 정산 관리 -->
						<li class="u-sidebar-nav-menu__item clearfix"><a
							class="u-sidebar-nav-menu__link" href="salesList.do"
							data-target="#subMenu2"> <i
								class="fas fa-ticket-alt u-sidebar-nav-menu__item-icon"></i> <span
								class="u-sidebar-nav-menu__item-title">판매 및 정산 관리</span> <i
								class="fa fa-angle-right u-sidebar-nav-menu__item-arrow"></i> <span
								class="u-sidebar-nav-menu__indicator"></span>
						</a>

							<ul id="subMenu2"
								class="u-sidebar-nav-menu u-sidebar-nav-menu--second-level"
								style="display: none;">
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="salesList.do"> <span
										class="u-sidebar-nav-menu__item-title">판매 내역</span>
								</a></li>
								<li class="u-sidebar-nav-menu__item"><a
									class="u-sidebar-nav-menu__link" href="salaryList.do"> <span
										class="u-sidebar-nav-menu__item-title">정산 내역</span>
								</a></li>
							</ul></li>
						<!-- End 정산 관리 -->

					</ul>
				</nav>
			</div>
		</aside>
		<!-- End Sidebar -->


		<div class="u-content">
			<div class="u-body">
				<div class="row">
					<!-- Current Projects -->
					<div class="col-md-12 mb-4">
						<div class="card h-100">
							<header class="card-header d-flex align-items-center">
								<h2 class="h2 card-header-title">공지사항 List</h2>
							</header>

							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover" id="boardTable">
										<thead>
											<tr>
												<th scope="col" class="text-dark">
													<div class="custom-control custom-checkbox mb-2">
														<input id="" class="custom-control-input is-invalid"
															type="checkbox"> <label
															class="custom-control-label" for=""><span></span></label>
													</div>
												</th>
												<th scope="col" class="text-dark">일련번호</th>
												<th scope="col" class="text-dark">제목</th>
												<th scope="col" class="text-dark">작성자</th>
												<th scope="col" class="text-dark">작성일자</th>
												<th scope="col" class="text-dark"></th>
											</tr>
										</thead>

										<tbody>
										<tr>
                                                <td>
                                                    <div class="custom-control custom-checkbox mb-2">
                                                        <input id="customCheck2" class="custom-control-input is-invalid" type="checkbox">
                                                        <label class="custom-control-label" for="customCheck2"><span></span></label>
                                                    </div>
                                                </td>
                                                <td class="text-danger">"${trainer.client_id }"</td>
                                                <td>Company Name</td>
                                                <td>22 June 2020</td>
                                                <td class="text-danger">$200.00</td>
                                                <td class="text-success bg-soft-success inline">Delivered</td>
                                                <td>IN332942</td>
                                                <td><img src="assets/img/pr-menu-dot.png" alt=""></td>
                                            </tr>
												<c:forEach items="${boards }" var="board">
												 <tr>
													<div class="testmonial_wrap">
														<div class="single_testmonial d-flex align-items-center"
															onclick="location.href='boardList.do'">
															<div class="test_content">
																<td>${board.board_id }</td>
																<td>${board.ttl }</td> 
																<td>${board.cntn }</td>
																<td>${board.mngr_id }</td>
																<td>${board.reg_dt }</td>
															</div>
														</div>
													</div>
													<br>
													<br>
												 </tr> 
												</c:forEach>
												<td>
													<div class="custom-control custom-checkbox mb-2">
														<input id="customCheck2"
															class="custom-control-input is-invalid" type="checkbox">
														<label class="custom-control-label" for="customCheck2"><span></span></label>
													</div>
												</td>
												<td class="text-danger">003456</td>
												<td>훈련서비스관련</td>
												<td colspan="2" class="text-danger">안녕하세요. HEYYO의
													훈련서비스는 회원님과 반려동물이 함께 이용하는 서비스입니다.</td>
												<td>관리자</td>
												<td>22 June 2020</td>
												<td>
														<input type="button" class="btn btn-outline-danger" value="수정"
																id="btnUpdate" data-toggle="modal" href="#exampleModalCenter"/>
														<input type="button" class="btn btn-outline-danger" value="삭제"
																id="btnDelete" href="#" onClick="alert('삭제하겠습니까?')"/>
												</td>
											</tr>
											<!-- <tr>
												<td>
													<div class="custom-control custom-checkbox mb-2">
														<input id="customCheck2"
															class="custom-control-input is-invalid" type="checkbox">
														<label class="custom-control-label" for="customCheck2"><span></span></label>
													</div>
												</td>
												<td class="text-danger">003455</td>
												<td>돌봄서비스관련</td>
												<td colspan="2" class="text-danger">안녕하세요. HEYYO의
													돌봄서비스는 회원님의 자택에서 이용하는 서비스입니다.</td>
												<td>관리자</td>
												<td>22 June 2020</td>
												<td>
													<input type="button" class="btn btn-outline-danger" value="수정"
																id="btnUpdate" data-toggle="modal" href="#exampleModalCenter"/>
														<input type="button" class="btn btn-outline-danger" value="삭제"
																 id="btnDelete" href="#" onClick="alert('삭제하겠습니까?')"/>
												</td>
											</tr> -->
										</tbody>
									</table>
								</div>
            						<input type="button" onClick="window.open('boardForm.do')" class="btn btn-danger btn-large float-right" value="공지사항 등록"> 
							</div>
						</div>
					</div>
					<!-- End Current Projects -->
				<div class="row justify-content-between align-items-center mb-4">
					<div class="col-sm">
						<nav aria-label="Bootstrap Pagination Example">
							<ul class="pagination mb-0">
								<li class="page-item"><a class="page-link" href="mngMain.do"><span
										class="ml-1 d-none d-xl-inline-block">처음으로</span></a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#"><span
										class="mr-1 d-none d-xl-inline-block">다음으로</span></a></li>
							</ul>
						</nav>
					</div>
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
		<div class="modal fade bd-example-modal-lg" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title" id="exampleModalLabel">공지사항 수정</h3>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<!-- Current Projects -->
                    <div class="col-md-12 mb-4">
                        <div class="card h-100">
                            <div class="astino-pr-form card-body">
                                 <form>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput">제  목</label>
                                        <input type="text" class="form-control" id="formGroupExampleInput" placeholder="훈련서비스관련 공지사항">
                                    </div>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput2">작성자</label>
                                        <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="관리자">
                                    </div>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput3">작성 날짜</label>
                                        <input type="text" class="form-control" id="formGroupExampleInput3" placeholder="22 Oct 2021">
                                    </div>
                                    <div class="form-group d-flex align-items-center">
                                        <label for="formGroupExampleInput4">내  용</label>
                                        <textarea class="form-control" id="formGroupExampleInput6" 
                                        		placeholder="안녕하세요. HEYYO의 훈련서비스는 회원님과 반려동물이 함께 이용하는 서비스입니다."></textarea>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
						<button type="button" class="btn btn-outline-dangerr" herf="#" onClick="alert('수정하겠습니까?')" data-dismiss="modal">수정</button>
					</div>
                    </div>
                    <!-- End Current Projects -->
					</div>
				</div>
			</div>
		</div>
		<!-- Large Size Modal-->


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
	
</body>

</html>