<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="paging" type="co.mngns.prj.common.vo.Paging"%>
<%@ attribute name="jsFunc" required="false" type="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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