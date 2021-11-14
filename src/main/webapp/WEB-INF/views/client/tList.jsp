<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>

<body>
	<div class="bradcam_area breadcam_bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="bradcam_text text-center">
						<h3>HEYYO의 훈련사를 소개합니다!</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2" style="background-image:" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<br> <br> <br>
				</div>
			</div>
		</div>
	</section>

	<div class="col-lg-44">
		<form name="search-form">
			<div class="form-group">
				<div class="input-group mb-3">
					<%-- <select name="location">
						<option selected value="">선택</option>
						<option value="loc1" <c:if test="${trainerVO.work_loc2 == 'loc1' }">selected</c:if> >서울특별시</option>
						<option value="loc2" <c:if test="${trainerVO.work_loc2 == 'loc2' }">selected</c:if>>인천광역시</option>
						<option value="loc3" <c:if test="${trainerVO.work_loc2 == 'loc3' }">selected</c:if>>대전광역시</option>
						<option value="loc4" <c:if test="${trainerVO.work_loc2 == 'loc4' }">selected</c:if>>광주광역시</option>
						<option value="loc5" <c:if test="${trainerVO.work_loc2 == 'loc5' }">selected</c:if>>대구광역시</option>
						<option value="loc6" <c:if test="${trainerVO.work_loc2 == 'loc6' }">selected</c:if>>부산광역시</option>
						<option value="loc7" <c:if test="${trainerVO.work_loc2 == 'loc7' }">selected</c:if>>울산광역시</option>
					</select>  --%><select name="type">
						<option selected value="">선택</option>
						<option value="name" <c:if test="${trainerVO.type == 'name' }">selected</c:if>>이름</option>
						<option value="adres" <c:if test="${trainerVO.type == 'adres' }">selected</c:if>>주소</option>
					</select> <input type="text" id="keyword" name="keyword" class="form-control"
						placeholder='내용을 입력해주세요.' onfocus="this.placeholder = ''"
						onblur="this.placeholder = '내용을 입력해주세요.'" value="${trainerVO.keyword }">
				</div>
			</div>
			<button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="submit"
				>검색하기</button>
		</form>
	</div>


	<div class="testmonial_area" id="tTable">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-10">
					<c:forEach items="${trainers }" var="trainer">
						<form action="tDetail.do" id="tlistForm" name="tlistForm" method="post">
							<div class="testmonial_wrap">
								<div class="single_testmonial d-flex align-items-center"
									onclick="$(this).closest('form').submit()">
									<input type="hidden" id="client_id" name="client_id" value="${trainer.client_id }">
									<div class="test_thumb">
										<img src="img/testmonial/1.png" alt="">
									</div>
									<div class="test_content">
										<h4>${trainer.name }훈련사</h4>
										<span>${trainer.work_loc1 } ${trainer.work_loc2 }</span> <span>평점
											${trainer.trn_avrg }점</span>
										<p>${trainer.intro_ttl }</p>
									</div>
								</div>
							</div>
						</form>
						<br>
						<br>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<my:paging jsFunc="goList" paging="${paging}" />
	<br>
	<br>
	<br>
	<script>
		function goList(p) {
			//searchFrm.page.value=p; //페이지 번호 받아서 폼태그에 넣어서 submit(폼 안에 페이지번호가 히든으로, 검색조건과 정렬방식도 가지고 넘어감)
			//searchFrm.submit();
			location.href = "tList.do?page=" + p
		}
		
	</script>

</body>

</html>