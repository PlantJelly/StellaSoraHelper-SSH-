<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div class="top-menu-container">
    <div class="header-left">
        <div class="logo">
            <a href="${ pageContext.request.contextPath }/">
                <img src="${ pageContext.request.contextPath }/resources/images/common/logo.png" alt="Logo">
            </a>
        </div>
        <nav class="main-nav">
            <a href="${ pageContext.request.contextPath }/build/list.do">빌드목록</a>
            <a href="${ pageContext.request.contextPath }/book/list.do">도감</a>
            <c:choose>
                <c:when test="${ not empty userVO }">
                    <a href="${ pageContext.request.contextPath }/member/mypage.do">마이페이지</a>
                    <a href="${ pageContext.request.contextPath }/member/logout.do">로그아웃</a>
                </c:when>
                <c:otherwise>
                    <a href="${ pageContext.request.contextPath }/member/registerForm.do">회원가입</a>
                    <a href="${ pageContext.request.contextPath }/member/loginForm.do">로그인</a>
                </c:otherwise>
            </c:choose>
            <c:if test="${ userVO.type eq 'ADMIN' }">
            	<a href="${ pageContext.request.contextPath }/admin/menu.do">관리</a>
            </c:if>
        </nav>
    </div>
    <div class="user-info">
        <c:if test="${ empty userVO }">
            <span>로그인을 해주세요.</span>
        </c:if>
        <c:if test="${ not empty userVO }">
            <span>${ userVO.nickname }(${ userVO.id })님</span>
        </c:if>
    </div>
</div>
