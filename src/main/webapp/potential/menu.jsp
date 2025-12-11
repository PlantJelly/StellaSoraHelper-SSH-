<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : Book</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/modern_style.css">
<style>
    .wiki-container {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); /* 화면 크기에 따라 열 개수가 바뀌는 반응형 그리드 */
        gap: 25px; /* 카드 사이의 간격 */
        padding: 20px;
        justify-items: center; /* 그리드 아이템을 수평 중앙에 배치 */
    }

    .char-card {
        display: block; /* a 태그를 블록 요소로 만듦 */
        background: #2a2a2a;
        border-radius: 10px;
        text-align: center;
        padding: 15px;
        color: white;
        text-decoration: none; /* 링크 밑줄 제거 */
        transition: transform 0.2s, box-shadow 0.2s;
        box-shadow: 0 4px 8px rgba(0,0,0,0.4);
    }
    
    .char-card:visited { /* 방문한 링크도 흰색 유지 */
        color: white;
    }

    .char-card:hover {
        transform: translateY(-5px); /* 호버 시 살짝 위로 이동 */
        box-shadow: 0 8px 16px rgba(0,0,0,0.5);
    }

    .char-card img {
        width: 100px;
        height: 100px;
        border-radius: 50%; /* 원형 이미지 */
        border: 3px solid #777;
        margin-bottom: 10px;
    }

    .char-card p {
        margin: 0;
        font-weight: bold;
        font-size: 16px;
    }
</style>
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
		<div class="container">
		    <h2 style="text-align: center; color: #333; margin-top: 20px;">잠재능력 도감</h2>    
		    <div class="wiki-container">
		        <c:forEach items="${charList}" var="character">
		            <a href="${ pageContext.request.contextPath }/potential/detail.do?no=${ character.no }" class="char-card">
			            <img src="${ pageContext.request.contextPath }${ character.imgPath }">
			            <p>${ character.name }</p>
		            </a>
		        </c:forEach>
		    </div>
		</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>