<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : Build Write</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/modern_style.css">
<script>
	window.onload = function(){
		let cancelBtn = document.querySelector("#cancelBtn")
		cancelBtn.addEventListener('click', function(){
			location.href="${ pageContext.request.contextPath }/build/list.do"
		})
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
		<div class="container" id="content">
		<h2>빌드 등록</h2>
		<form action="${ pageContext.request.contextPath }/build/${ empty buildVO ? 'write.do' : 'edit.do' }" method="post" name="writeForm" class="form-centered">
			<table>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" name="title" required="required" value="${ buildVO.title }">
						<c:if test="${ not empty buildVO }">
							<input type="hidden" name="buildNo" value="${ buildVO.no }">
						</c:if>
					</td>
				</tr>
				<c:if test="${ empty buildVO }">
					<tr>
						<c:if test="${ not empty userVO }">	
						<th>닉네임</th>
						<td>
							${ userVO.nickname }
							<input type="hidden" name="nickname" value="${ userVO.nickname }">
							<input type="hidden" name="userNo" value="${ userVO.no }">
						</td>
						</c:if>
						<c:if test="${ empty userVO }">
						<th>닉네임</th>
						<td>
							<input type="text" name="nickname" required="required" value="${ buildVO.nickname }">
						</td>
							<tr>
								<th>비밀번호</th>
								<td>
									<input type="password" name="password" required="required">
								</td>
							</tr>	
						</c:if>
					</tr>
				</c:if>
				<tr>
					<th>내용</th>
					<td>
						<textarea rows="15" name="content" required="required">${ buildVO.content }</textarea>
					</td>
				</tr>
			</table>
			<div class="form-actions">
				<button type="submit">${ not empty buildVO ? '수정' : '등록' }</button>
				<button type="reset">초기화</button>
				<button type="button" id="cancelBtn">취소</button>
			</div>
		</form>
	</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>