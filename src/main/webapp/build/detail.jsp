<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : build.title</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
		<hr>
		<span>${ buildDetail.title }</span>
		<p style="text-align:right;">닉네임 : ${ buildDetail.nickname } | 작성일 : ${ buildDetail.regDate }</p>
		<hr>
		<p style="text-align:right;">조회수 : ${ buildDetail.viewCnt } | 추천수 : ${ buildDetail.recommendCnt }</p>
		<hr>
		<p>${ buildDetail.content }</p>
		<button>추천</button>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>