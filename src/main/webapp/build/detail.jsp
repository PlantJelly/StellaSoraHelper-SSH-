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
			}else if(typeof(pageInt) == "int"){
				location.href = "${ pageContext.request.contextPath }/build/list.do?page=${ page }"
			}else{
				location.href = "${ pageContext.request.contextPath }/build/list.do"
			}
		})
		let editBtn = document.querySelector("#editBtn")
		editBtn.addEventListener('click', () => {
			if("${ empty userVO }" == "true"){
				let password = prompt("게시글 비밀번호를 입력하세요.")
				if(password == "${ buildDetail.password }"){
					location.href = "${ pageContext.request.contextPath }/build/editForm.do?no=${ buildDetail.no }"
				}else{
					alert("잘못된 비밀번호입니다.")
				}
			}else if("${ empty buildDetail.password }" == "true"){
				location.href = "${ pageContext.request.contextPath }/build/editForm.do?no=${ buildDetail.no }"				
			}else{
				alert("로그인상태에서 비회원 글은 수정할 수 없습니다.")
			}
		})
		let delBtn = document.querySelector("#delBtn")
		delBtn.addEventListener('click', () => {
			if("${ empty userVO }" == "true"){
				let password = prompt("게시글 비밀번호를 입력하세요.")
				if(password == "${ buildDetail.password }"){
					if(confirm("삭제하시겠습니까?")){						
						location.href = "${ pageContext.request.contextPath }/build/delete.do?no=${ buildDetail.no }"
					}
				}else{
					alert("잘못된 비밀번호입니다.")
				}
			}else if("${ empty buildDetail.password }" == "true"){
				if(confirm("삭제하시겠습니까?")){
					location.href = "${ pageContext.request.contextPath }/build/delete.do?no=${ buildDetail.no }"	
				}
			}else{
				alert("로그인상태에서 비회원 글은 삭제할 수 없습니다.")
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
				<div class="detail-header-buttons">
					<button id="editBtn">수정</button>
					<button id="delBtn">삭제</button>
				</div>
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