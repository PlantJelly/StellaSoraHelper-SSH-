<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : ${ buildDetail.title }</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<script>
	window.onload = () =>{
		let listBtn = document.querySelector("#listBtn")
		listBtn.addEventListener('click', () => {
			let pageInt = Number("${page}")
			if (isNaN(pageInt)){
				location.href = "${ pageContext.request.contextPath }/member/mypage.do?tab=${ page }"
			}else{
				location.href = "${ pageContext.request.contextPath }/build/list.do?page=${ page }"
			}
		})
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
		<hr>
		<h3>${ buildDetail.title }</h3>
		<button id="editBtn">수정</button>
		<p style="text-align:right;">닉네임 : ${ buildDetail.nickname } | 작성일 : ${ buildDetail.regDate }</p>
		<hr>
		<p style="text-align:right;">조회수 : ${ buildDetail.viewCnt } | 추천수 : ${ buildDetail.recommendCnt }</p>
		<hr>
		<p>${ buildDetail.content }</p>
		<button>추천</button>
		<br>
		<c:forEach items="${ replyList }" var="reply">
			<div style="border: 1px solid black;">
				<p>${ reply.nickname }</p>
				<p>${ reply.regDate }</p>
				<button id="editReplyBtn">수정</button>
				<button id="deleteReplyBtn">삭제</button>
				<hr>
				<p>${ reply.content }</p>
			</div>
		</c:forEach>
		<%@ include file="/reply/reply.jsp" %>
		<button id="listBtn">목록</button>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>