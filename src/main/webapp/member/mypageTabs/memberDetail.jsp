<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<div align="center">
		<table style="width:40%; text-align:center;">
			<tr>
				<th style="width:50%;">유저번호</th>
				<td style="width:20%;">${ userVO.no }</td>
			</tr>
			<tr>
				<th style="width:50%;">아이디</th>
				<td style="width:20%;">${ userVO.id }</td>
			</tr>
			<tr>
				<th style="width:50%;">비밀번호</th>
				<td style="width:20%;">${ userVO.password }</td>
			</tr>
			<tr>
				<th style="width:50%;">닉네임</th>
				<td style="width:20%;">${ userVO.nickname }</td>
			</tr>
			<tr>
				<th style="width:50%;">핸드폰번호</th>
				<td style="width:20%;">${ userVO.phoneNumber }</td>
			</tr>
			<tr>
				<th style="width:50%;">이메일</th>
				<td style="width:20%;">${ userVO.email }</td>
			</tr>
			<tr>
				<th style="width:50%;">가입일</th>
				<td style="width:20%;">${ userVO.regDate }</td>
			</tr>
		</table>
	</div>
</body>
</html>