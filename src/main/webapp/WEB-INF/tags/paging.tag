<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paging" type="co.mngns.prj.common.vo.Paging"%>
<%@ attribute name="jsFunc" required="false" type="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<c:if test="${empty jsFunc}">
	<c:set var="jsFunc" value="go_page"></c:set>
</c:if>

<div class="row mt-5">
	<div class="col text-center">
		<div class="block-27">
			<ul>
				<li><a
					href="javascript:${jsFunc}(${paging.startPage>2?paging.startPage-1:1})">&lt;</a></li>
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
					var="i">
					<c:if test="${i != paging.page}">
						<li><a href="javascript:${jsFunc}(${i})">${i}</a></li>
					</c:if>
					<c:if test="${i == paging.page}">
						<li class="active"><span>${i}</span>
					</c:if>
				</c:forEach>
				<li><a
					href="javascript:${jsFunc}(${paging.endPage<paging.lastPage?paging.endPage+1:paging.endPage})">&gt;</a></li>
			</ul>
		</div>
	</div>
</div>