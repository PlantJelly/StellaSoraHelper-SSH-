<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<table class="data-table">
	<tr>
		<th width="7%">번호</th>
		<th>제목</th>
		<th width="20%">작성자</th>
		<th width="17%">등록일</th>
		<th width="7%">조회</th>
		<th width="7%">추천</th>
	</tr>
	<c:forEach items="${ list }" var = "build">
		<tr>
			<td>${ build.no }</td>
			<td>
				<a href="${ pageContext.request.contextPath }/build/detail.do?no=${ build.no }&page=build">
					<c:out value="${ build.title }"/>
				</a>
			</td>
			<td>${ build.nickname }</td>
			<td>${ build.regDate }</td>
			<td>${ build.viewCnt }</td>
			<td>${ build.recommendCnt }</td>
		</tr>
	</c:forEach>
</table>