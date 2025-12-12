<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
	function checkDelete(){
		let passwordInput = document.getElementById("delPassword").value;
		if(passwordInput == '${ userVO.password }'){
			if(confirm("정말로 탈퇴하시겠습니까?"))
			location.href="${ pageContext.request.contextPath }/member/delete.do?no=${ userVO.no }"
		}else{
			alert("비밀번호가 잘못되었습니다.")
		}
	}
</script>
<div class="delete-member-container">
    <h3>회원 탈퇴</h3>
    <p class="warning-text">
        이 작업은 되돌릴 수 없습니다.
    </p>
        <div class="input-group">
            <label>비밀번호 재확인</label>
            <input type="password" name="password" id="delPassword" placeholder="비밀번호를 입력하세요" required>
        </div>
        
        <div class="btn-group">
            <button type="button" onclick="checkDelete()" class="btn-danger">탈퇴하기</button>
        </div>
</div>