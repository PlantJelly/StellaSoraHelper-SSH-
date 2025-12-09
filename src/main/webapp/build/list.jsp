<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : Build List</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/modern_style.css">
<script>
	window.onload = function(){
		let addBtn = document.querySelector("#addBtn")
		addBtn.addEventListener('click', function(){
			location.href = "${ pageContext.request.contextPath }/build/writeForm.do"
		})
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
		<div class="container">
		<h2>전체빌드 조회</h2>
		<table class="data-table">
			<tr>
				<th width="6%">번호</th>
				<th>제목</th>
				<th width="20%">작성자</th>
				<th width="15%">등록일</th>
				<th width="6%">조회</th>
				<th width="6%">추천</th>
			</tr>
			<c:forEach items="${ list }" var = "build">
				<tr>
					<td>${ build.no }</td>
					<td>
						<a href="detail.do?no=${ build.no }&page=${ page }">
							<c:out value="${ build.title }"/>
						</a>
					</td>
					<td>${ build.nickname }</td>
					<td>${ build.regDate }</td>
					<td>${ build.viewCnt }</td>
					<td>${ build.recommendCnt }</td>
				</tr>
			</c:forEach>
		</table>
		<div class="button-container-right">
			<button id="addBtn">새글등록</button>
		</div>
		<div class="pagination">
		    <c:if test="${startPage > 10}">
		        <a href="list.do?page=${startPage - 1}">[이전]</a>
		    </c:if>
		    <c:forEach var="i" begin="${startPage}" end="${endPage}">
		        <c:choose>
		            <c:when test="${i == page}">
		                <strong>${i}</strong>
		            </c:when>
		            <c:otherwise>
		                <a href="list.do?page=${i}">${i}</a>
		            </c:otherwise>
		        </c:choose>
		    </c:forEach>
		    <c:if test="${endPage < lastPage}">
		        <a href="list.do?page=${endPage + 1}">[다음]</a>
		    </c:if>
		</div>
	</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>