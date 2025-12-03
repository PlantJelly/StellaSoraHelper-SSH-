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
	let tapOpen = (tab) => {
	let tabContents = document.getElementsByClassName("tabContent")
	for(i = 0; i < tabContents.length; i++){
		tabContents[i].style.display = "none"
	}
	
	document.getElementById(tab).style.display = "block"
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
		<button onclick="tapOpen('detail')">회원 정보</button>
		<button onclick="tapOpen('build')">내 빌드</button>
		<button onclick="tapOpen('edit')">정보 수정</button>
		<button onclick="tapOpen('delete')">회원 탈퇴</button>
		<hr>
		<div class="tabContent" id="detail" style="display:block;">
			<h3>회원 정보</h3>
			<jsp:include page="/member/mypageTabs/memberDetail.jsp" />
		</div>
		<div class="tabContent" id="build" style="display:none;">
			<h3>내 빌드</h3>
			<jsp:include page="/member/mypageTabs/myBuild.jsp" />
		</div>
		<div class="tabContent" id="edit" style="display:none;">
			<h3>정보 수정</h3>
			<jsp:include page="/member/mypageTabs/editMember.jsp" />
		</div>
		<div class="tabContent" id="delete" style="display:none;">
			<h3>회원 탈퇴</h3>
			<jsp:include page="/member/mypageTabs/memberDelete.jsp" />
		</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>