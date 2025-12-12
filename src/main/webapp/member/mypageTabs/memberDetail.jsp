<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table>
	<tr>
		<th>유저번호</th>
		<td>${ userVO.no }</td>
	</tr>
	<tr>
		<th>아이디</th>
		<td>${ userVO.id }</td>
	</tr>
	<tr>
		<th>닉네임</th>
		<td>${ userVO.nickname }</td>
	</tr>
	<tr>
		<th>핸드폰번호</th>
		<td>${ userVO.phoneNumber }</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>${ userVO.email }</td>
	</tr>
	<tr>
		<th>가입일</th>
		<td>${ userVO.regDate }</td>
	</tr>
</table>