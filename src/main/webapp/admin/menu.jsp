<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Stella Sora Helper : Admin Menu</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/modern_style.css">
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section class="admin-menu-container">
		<div class="admin-menu-item" onclick="location.href='#'">
			회원 관리
		</div>
		<div class="admin-menu-item" onclick="location.href='#'">
			캐릭터 등록 / 수정
		</div>
		<div class="admin-menu-item" onclick="location.href='#'">
			잠재능력 등록 / 수정
		</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>