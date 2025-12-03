<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : Build Write</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
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
		<div align="center" id="content">
		<hr>
		<h2>빌드 등록폼</h2>
		<hr>
		<br>
		<form action="${ pageContext.request.contextPath }/build/write.do" method="post" name="writeForm">
			<table border="1">
				<tr>
					<th width="25%">제목</th>
					<td>
						<input type="text" name="title" required="required">
					</td>
				</tr>
				<tr>
					<th width="25%">작성자</th>
					<td>
						<input type="text" name="writer" required="required">
					</td>
				</tr>
				<tr>
					<th width="25%">내용</th>
					<td>
						<textarea rows="8" cols="100" name="content" required="required"></textarea>
					</td>
				</tr>
			</table>
			<br>
			<button type="submit">등록</button>
			<button type="reset">초기화</button>
			<button type="button" id="cancelBtn">취소</button>
		</form>
	</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>