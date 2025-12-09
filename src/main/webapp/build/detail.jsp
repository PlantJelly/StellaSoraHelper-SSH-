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
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/modern_style.css">
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
		<div class="container">
			<div class="detail-header">
				<h3>${ buildDetail.title }</h3>
				<div class="detail-meta">
					<span>닉네임 : ${ buildDetail.nickname }</span> | <span>작성일 : ${ buildDetail.regDate }</span>
				</div>
				<button id="editBtn">수정</button> <!-- Move button here -->
			</div>
			<div class="detail-meta-counts">
				<span>조회수 : ${ buildDetail.viewCnt }</span> | <span>추천수 : ${ buildDetail.recommendCnt }</span>
			</div>
			<div class="detail-content">
				<p>${ buildDetail.content }</p>
			</div>
			<div class="detail-actions">
				<button>추천</button>
			</div>

			<div class="reply-section">
				<h4>댓글</h4>
				<c:forEach items="${ replyList }" var="reply">
					<div class="reply-box">
						<div class="reply-meta">
							<strong>${ reply.nickname }</strong>
							<small>${ reply.regDate }</small>
						</div>
						<div class="reply-content">
							<p>${ reply.content }</p>
						</div>
						<div class="reply-actions">
							<button id="editReplyBtn">수정</button>
							<button id="deleteReplyBtn">삭제</button>
						</div>
					</div>
				</c:forEach>
				<%@ include file="/reply/reply.jsp" %>
			</div>
			<button id="listBtn">목록</button>
		</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>