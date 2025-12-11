<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SSH : ${ buildDetail.title }</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/myStyle.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/modern_style.css">
<script>
    window.onload = () => {
        const isLogin = "${ not empty userVO }" === "true";
        const isGuestPost = "${ empty buildDetail.userNo }" === "true";
        const postPassword = "${ buildDetail.password }";

        let listBtn = document.querySelector("#listBtn");
        listBtn.addEventListener('click', () => {
            let pageInt = Number("${page}");
            if (isNaN(pageInt)) {
                location.href = "${ pageContext.request.contextPath }/build/list.do"; // page가 없으면 그냥 목록으로
            } else {
                location.href = "${ pageContext.request.contextPath }/build/list.do?page=${ page }";
            }
        });

        let editBtn = document.querySelector("#editBtn");
        if (editBtn) {
            editBtn.addEventListener('click', () => {
                if (isLogin && isGuestPost) {
                    alert("로그인 상태에서는 비회원 글을 수정할 수 없습니다.");
                } else if (isGuestPost) {
                    let password = prompt("게시글 비밀번호를 입력하세요.");
                    if (password === postPassword) {
                        location.href = "${ pageContext.request.contextPath }/build/editForm.do?no=${ buildDetail.no }";
                    } else if (password !== null) {
                        alert("잘못된 비밀번호입니다.");
                    }
                } else {
                    location.href = "${ pageContext.request.contextPath }/build/editForm.do?no=${ buildDetail.no }";
                }
            });
        }

        let delBtn = document.querySelector("#delBtn");
        if (delBtn) {
            delBtn.addEventListener('click', () => {
                if (isLogin && isGuestPost) {
                    alert("로그인 상태에서는 비회원 글을 삭제할 수 없습니다.\n로그아웃 후 이용해 주세요.");
                } else if (isGuestPost) {
                    let password = prompt("게시글 비밀번호를 입력하세요.");
                    if (password === postPassword) {
                        if (confirm("정말 삭제하시겠습니까?")) {
                            location.href = "${ pageContext.request.contextPath }/build/delete.do?no=${ buildDetail.no }";
                        }
                    } else if (password !== null) {
                        alert("잘못된 비밀번호입니다.");
                    }
                } else {
                    if (confirm("정말 삭제하시겠습니까?")) {
                        location.href = "${ pageContext.request.contextPath }/build/delete.do?no=${ buildDetail.no }";
                    }
                }
            });
        }
    }

    function toggleReplyEdit(replyNo, replyPassword, replyUserNo) {
        const isLogin = "${ not empty userVO }" === "true";
        const isGuestReply = (replyUserNo === "" || replyUserNo === "null"); 

        let viewMode = document.getElementById('reply-view-' + replyNo);
        let editMode = document.getElementById('reply-edit-' + replyNo);

        if (isLogin && isGuestReply) {
            alert("로그인 상태에서는 비회원 댓글을 수정할 수 없습니다.");
            return;
        }

        if (isGuestReply && editMode.style.display === 'none') {
            let password = prompt("댓글 비밀번호를 입력하세요.");
            if (password !== replyPassword) {
                alert("잘못된 비밀번호입니다.");
                return;
            }
        }

        if (editMode.style.display === 'none') {
            viewMode.style.display = 'none';
            editMode.style.display = 'block';
        } else {
            viewMode.style.display = 'block';
            editMode.style.display = 'none';
        }
    }

    function deleteReply(replyNo, replyPassword, replyUserNo) {
        const isLogin = "${ not empty userVO }" === "true";
        const isGuestReply = (replyUserNo === "" || replyUserNo === "null");

        if (isLogin && isGuestReply) {
            alert("로그인 상태에서는 비회원 댓글을 삭제할 수 없습니다.");
            return;
        }

        if (isGuestReply) {
            let password = prompt("댓글 비밀번호를 입력하세요.");
            if (password === replyPassword) {
                if(confirm("댓글을 삭제하시겠습니까?")) {
                    location.href = "${ pageContext.request.contextPath }/reply/delete.do?no=" + replyNo + "&buildNo=${ buildDetail.no }&page=${ page }";
                }
            } else if (password !== null) {
                alert("잘못된 비밀번호입니다.");
            }
        } else {
            if(confirm("댓글을 삭제하시겠습니까?")) {
                location.href = "${ pageContext.request.contextPath }/reply/delete.do?no=" + replyNo + "&buildNo=${ buildDetail.no }&page=${ page }";
            }
        }
    }
</script>
</head>
<body>
    <header>
        <jsp:include page="/include/topMenu.jsp" />
    </header>
    <section>
        <div class="container">
            <div class="detail-header">
                <h3>${ buildDetail.title }</h3>
                <div class="detail-meta">
                    <span>닉네임 : ${ buildDetail.nickname }</span> | <span>작성일 : ${ buildDetail.regDate }</span>
                </div>
                <div class="detail-header-buttons">
                    <c:if test="${ empty buildDetail.userNo or (not empty userVO and userVO.no eq buildDetail.userNo) }">
                        <button id="editBtn">수정</button>
                        <button id="delBtn">삭제</button>
                    </c:if>
                </div>
            </div>
            <div class="detail-meta-counts">
                <span>조회수 : ${ buildDetail.viewCnt }</span> | <span>추천수 : ${ buildDetail.recommendCnt }</span>
            </div>
            <div class="detail-content">
                <p>${ buildDetail.content }</p>
            </div>
            <div class="detail-actions">
                <button>추천</button>
            </div>
            <div class="reply-section">
                <h4>댓글</h4>
                <c:forEach items="${ replyList }" var="reply">
                    <div class="reply-box" id="reply-box-${ reply.no }">
                        <div id="reply-view-${ reply.no }" class="reply-view-mode">
                            <div class="reply-meta">
                                <strong>${ reply.nickname }</strong>
                                <small>${ reply.regDate }</small>
                            </div>
                            <div class="reply-content">
                                <p>${ reply.content }</p>
                            </div>
                            <div class="reply-actions">
                                <c:if test="${ empty reply.userNo or (not empty userVO and userVO.no eq reply.userNo) }">
                                    <button type="button" onclick="toggleReplyEdit('${ reply.no }', '${ reply.password }', '${ reply.userNo }')">수정</button>
                                    <button type="button" onclick="deleteReply('${ reply.no }', '${ reply.password }', '${ reply.userNo }')">삭제</button>
                                </c:if>
                            </div>
                        </div>
                        <div id="reply-edit-${ reply.no }" class="reply-edit-mode" style="display: none;">
                            <div class="reply-form-container">
                                <form action="${ pageContext.request.contextPath }/reply/edit.do" method="post">
                                    <input type="hidden" name="no" value="${ reply.no }">      
                                    <input type="hidden" name="buildNo" value="${ param.no }"> 
                                    <input type="hidden" name="page" value="${ param.page }">  
                                    <div class="reply-textarea-wrapper">
                                        <textarea rows="5" cols="100" name="content" required="required">${ reply.content }</textarea>
                                    </div>
                                    <div class="reply-form-buttons">
                                        <button type="submit">수정</button>
                                        <button type="button" onclick="toggleReplyEdit('${ reply.no }', '', '')">취소</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <%@ include file="/reply/reply.jsp" %>
            </div>
            <button id="listBtn">목록</button>
        </div>
    </section>
    <footer>
        <%@ include file="/include/footer.jsp" %>
    </footer>
</body>
</html>