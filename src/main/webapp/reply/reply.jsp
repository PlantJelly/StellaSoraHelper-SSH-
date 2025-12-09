<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
	<form action="${ pageContext.request.contextPath }/reply/write.do" method="post" name="writeForm">
		<table border="1">
			<tr>
				<c:if test="${ not empty userVO }">
					
				<th width="25%">닉네임</th>
				<td>
					${ userVO.nickname }
					<input type="hidden" name="nickname" value="${ userVO.nickname }">
					<input type="hidden" name="userNo" value="${ userVO.no }">
				</td>
				</c:if>
				<c:if test="${ empty userVO }">
				<th width="25%">닉네임</th>
				<td>
					<input type="text" name="nickname" required="required">
				</td>
					<tr>
						<th width="25%">비밀번호</th>
						<td>
							<input type="password" name="password" required="required">
						</td>
					</tr>	
				</c:if>
			</tr>
			<tr>
				<th width="25%">내용</th>
				<td>
					<textarea rows="8" cols="100" name="content" required="required"></textarea>
					<input type="hidden" name="buildNo" value="${ param.no }">
					<input type="hidden" name="page" value="${ param.page }">
				</td>
			</tr>
		</table>
		<div align="right">
		<button type="submit">등록</button>
		<button type="reset">초기화</button>
		</div>
	</form>
</div>