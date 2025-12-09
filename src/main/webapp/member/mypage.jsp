<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : Mypage</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<script>
const showTab = (tabId) => {
    let tabContents = document.getElementsByClassName("tabContent")
    for(let i = 0; i < tabContents.length; i++){
        tabContents[i].style.display = "none"
    }
    document.getElementById(tabId).style.display = "block"
}

const openTab = (tabId) => {
    showTab(tabId)
    
    const url = new URL(window.location.href);
    url.searchParams.set("tab", tabId)
    window.history.pushState({}, "", url)
}

window.onload = () => {
    let openTab = "${param.tab}"
    if(openTab) showTab(openTab)
}

window.onpopstate = (event) => {
    const url = new URL(window.location.href)
    const tabId = url.searchParams.get('tab')
    if(tabId) {
    	showTab(tabId)
    	}
    else{
    	showTab("detail")
    }
}
</script>
</head>
<body>
	<header>
		<jsp:include page="/include/topMenu.jsp" />
	</header>
	<section>
		<h2 align="center">마이페이지</h2>
		<hr>
		<button onclick="openTab('detail')">회원 정보</button>
		<button onclick="openTab('build')">내 빌드</button>
		<button onclick="openTab('edit')">정보 수정</button>
		<button onclick="openTab('delete')">회원 탈퇴</button>
		<hr>
		<div class="tabContent" id="detail" style="display:block;">
			<jsp:include page="/member/mypageTabs/memberDetail.jsp" />
		</div>
		<div class="tabContent" id="build" style="display:none;">
			<jsp:include page="/member/mypageTabs/myBuild.jsp" />
		</div>
		<div class="tabContent" id="edit" style="display:none;">
			<jsp:include page="/member/mypageTabs/editMember.jsp" />
		</div>
		<div class="tabContent" id="delete" style="display:none;">
			<jsp:include page="/member/mypageTabs/memberDelete.jsp" />
		</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>