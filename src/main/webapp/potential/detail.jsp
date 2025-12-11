<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : Book Detail</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/modern_style.css">
<style>
    /* 상단 캐릭터 정보 중앙 정렬 */
    .character-header {
        text-align: center;
        padding: 20px;
        background: #1f1f1f;
        border-bottom: 2px solid #444;
    }
    .character-header img {
        width: 100px; /* 캐릭터 이미지 크기 */
        height: 100px;
        border-radius: 50%;
        border: 3px solid #f0a500; /* 금색 테두리 */
        margin-bottom: 10px;
    }
    .character-header p {
        font-size: 24px;
        font-weight: bold;
        color: #eee;
        margin: 0;
    }

    /* 잠재능력 카드 그리드 */
    .wiki-container {
        display: flex; /* Flexbox 사용 */
        flex-wrap: wrap; /* 자동 줄바꿈 */
        justify-content: center; /* 가운데 정렬 */
        gap: 20px;
        padding: 20px;
    }

    /* 개별 잠재능력 카드 */
    .pot-card {
        display: flex; /* 내부 아이템을 flex로 관리 */
        align-items: center; /* 세로 중앙 정렬 */
        background: #2a2a2a;
        border-radius: 8px;
        padding: 15px;
        color: white;
        box-shadow: 0 4px 8px rgba(0,0,0,0.4);
        width: 300px; /* 카드 가로 너비 고정 */
    }
    
    /* 이미지 겹치기 영역 */
    .image-wrapper {
        position: relative;
        width: 70px;  /* 이미지 컨테이너 크기 축소 */
        height: 70px;
        margin-right: 15px; /* 이미지와 텍스트 사이 간격 */
        flex-shrink: 0; /* 컨테이너 크기 유지 */
    }
    
    /* 1. 배경 (등급 테두리) */
    .bg-img {
        position: absolute;
        top: 0; left: 0;
        width: 100%;
        height: 100%;
        z-index: 1;
    }
    
    /* 2. 아이콘 (스킬 그림) */
    .icon-img {
        position: absolute;
        top: 10%; left: 10%;
        width: 80%;
        height: 80%;
        z-index: 2;
        object-fit: contain;
    }

    /* 잠재능력 이름 */
    .pot-name {
        font-size: 16px;
        font-weight: bold;
        text-align: left;
    }
</style>
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
        <!-- 캐릭터 정보 (중앙 상단) -->
        <div class="character-header">
            <img src="${ pageContext.request.contextPath }${ character.imgPath }">
            <p>${ character.name }</p>
        </div>

        <!-- 잠재능력 목록 (가로 나열) -->
		<div class="wiki-container">
			<c:forEach items="${ potentialList }" var="pot">
                <div class="pot-card">
                    <div class="image-wrapper">
                        <img src="${pageContext.request.contextPath}${pot.bgPath}" class="bg-img">
                        <img src="${pageContext.request.contextPath}${pot.iconPath}" class="icon-img">
                    </div>
                    <div class="pot-name">${ pot.name }</div>
                </div>
			</c:forEach>
		</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>