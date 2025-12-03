<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<table border="1" style="width:100%;">
	<tr>
		<td rowspan="2" style="width:260px; height:85px;">
			<a href="${ pageContext.request.contextPath }/index.jsp">
				<img src="${ pageContext.request.contextPath }/resources/images/logo.png">
			</a>
		</td>
		<c:if test="${ empty userVO }">
			<td align="right">로그인을 해주세요.</td>
		</c:if>
		<c:if test="${ not empty userVO }">
			<td align="right">${ userVO.nickname }(${ userVO.id })님</td>		
		</c:if>
	</tr>
	<tr>
		<td>
			<a href="${ pageContext.request.contextPath }/build/list.do">빌드목록</a> | 
			<a href="${ pageContext.request.contextPath }/book/list.do">도감</a> | 
			<c:choose>
				<c:when test="${ not empty userVO }">
					<a href="${ pageContext.request.contextPath }/member/mypage.do">마이페이지</a> | 				
					<a href="${ pageContext.request.contextPath }/member/logout.do">로그아웃</a>
				</c:when>
				<c:otherwise>
					<a href="${ pageContext.request.contextPath }/member/registerForm.do">회원가입</a> | 				
					<a href="${ pageContext.request.contextPath }/member/loginForm.do">로그인</a>
				</c:otherwise>
			</c:choose>
		</td>
	</tr>
</table>