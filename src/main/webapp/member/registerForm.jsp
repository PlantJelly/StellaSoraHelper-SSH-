<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : Register</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<script>
	let checkedId = false
	let checkedNickname = false
	let checkForm = () => {
		let regForm = document.registerForm
		if (regForm.id.value == ''){
			alert('아이디는 필수항목입니다.')
			regForm.id.focus()
			return false
		} 
		if (regForm.password.value == ''){
			alert('비밀번호는 필수항목입니다.')
			regForm.password.focus()
			return false
		}
		if (regForm.nickname.value == ''){
			alert('닉네임은 필수항목입니다.')
			regForm.password.focus()
			return false
		}
		if (!checkedId){
			alert('ID 중복확인을 진행해주세요.')
			return false
		}
		if (!checkedNickname){
			alert('닉네임 중복확인을 진행해주세요.')
			return false
		}
		document.getElementById("submitBtn").disabled = true;
		return true
	}
	let checkId = () => {
		let id = document.getElementById("id")
		if(id.value){
			fetch('check.do?type=id&check=' + id.value)
			.then(response => response.text())
			.then(data => {
				if(data.trim() == 'true'){
					alert("이미 존재하는 ID입니다.")
				}
				else{
					alert("사용 가능합니다.")
					let checkConfirm = confirm("사용하시겠습니까?")
					if(checkConfirm){
						id.readOnly = true
						checkedId = true
					}
				}
			})
		}else{
			alert("ID를 입력해주세요.")
			return
		}
	}
	let checkNickname = () => {
		let nickname = document.getElementById("nickname")
		if(nickname.value){
			fetch('check.do?type=nickname&check=' + nickname.value)
			.then(response => response.text())
			.then(data => {
				if(data.trim() == 'true'){
					alert("이미 존재하는 닉네임입니다.")
				}
				else{
					alert("사용 가능합니다.")
					let checkConfirm = confirm("사용하시겠습니까?")
					if(checkConfirm){
						nickname.readOnly = true
						checkedNickname = true
					}
				}
			})
		}else{
			alert("닉네임을 입력해주세요.")
			return
		}
	}
	let cancelBtn = () => {
		location.href="${ pageContext.request.contextPath }"
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
		<h2>회원가입</h2>
		<hr>
		<br>
		<form action="${ pageContext.request.contextPath }/member/register.do" method="post" name="registerForm" onsubmit="return checkForm()">
			<table border="1">
				<tr>
					<th>ID*</th>
					<td>
						<input type="text" name="id" id="id">
						<button type="button" onclick="checkId()">중복확인</button>
					</td>
				</tr>
				<tr>
					<th>PASSWORD*</th>
					<td>
						<input type="password" name="password">
					</td>
				</tr>
				<tr>
					<th>이름*</th>
					<td>
						<input type="text" name="nickname" id="nickname">
						<button type="button" onclick="checkNickname()">중복확인</button>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>
						<input type="text" name="phoneNumber">
					</td>
				</tr>
				<tr>
					<th>E-Mail</th>
					<td>
						<input type="text" name="email">
					</td>
				</tr>
			</table>
			<br>
			<button type="submit" id="submitBtn">가입</button>
			<button type="reset">초기화</button>
			<button type="button" onclick="cancelBtn()">취소</button>
		</form>
	</div>
	</section>
	<footer>
		<%@ include file="/include/footer.jsp" %>
	</footer>
</body>
</html>