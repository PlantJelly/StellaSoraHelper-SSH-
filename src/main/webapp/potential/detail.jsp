<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : Book Detail ${ character.name }</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/modern_style.css">
<style>
    .character-header {
        text-align: center;
        padding: 20px;
        border-bottom: 2px solid #444;
    }
    .character-header img {
        width: 100px; 
        height: 100px;
        border-radius: 50%;
        border: 3px solid #f0a500; 
        margin-bottom: 10px;
    }
    .character-header p {
        font-size: 24px;
        font-weight: bold;
        color: #333; 
        margin: 0;
    }

    .wiki-container {
        display: flex; 
        flex-wrap: wrap; 
        justify-content: center; 
        gap: 20px;
        padding: 20px;
    }

    .pot-card {
        display: flex; 
        flex-direction: column; 
        align-items: center; 
        background: #2a2a2a;
        border-radius: 8px;
        padding: 15px;
        color: white;
        box-shadow: 0 4px 8px rgba(0,0,0,0.4);
        width: 150px; 
    }

    .image-wrapper {
        position: relative;
        width: 100px;  
        height: 100px;
        margin-bottom: 10px; 
        flex-shrink: 0; 
    }

    .bg-img {
        position: absolute;
        top: 0; left: 0;
        width: 100%;
        height: 110%; 
        z-index: 1;
        object-fit: contain;
    }

    .icon-img {
        position: absolute;
        top: 5%; 
        left: 10%;
        width: 80%;
        height: 90%; 
        z-index: 2;
        object-fit: contain;
    }

    .pot-name {
        font-size: 18px; 
        font-weight: bold;
        text-align: center; 
    }
</style>
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
        <div class="character-header">
            <img src="${ pageContext.request.contextPath }${ character.imgPath }">
            <p>${ character.name }</p>
        </div>

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