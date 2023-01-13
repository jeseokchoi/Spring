<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 v0.2</title>
</head>
<body>

<div class="root">
	<div class="wrap">
		<h2>지각하지마라</h2>
			<div class="header">
				<div id="login">
					<c:if test="${not empty login }">
						<h3>${login.userid } (${login.username })</h3>
						<c:set var="loginURL" value="logout" />
						<c:set var="loginMenu" value="로그아웃" />
					</c:if>
					<c:if test="${empty login }">
						<c:set var="loginURL" value="login" />
						<c:set var="loginMenu" value="로그인" />
					</c:if>
				</div>
				<ul>
					<li><a href="${cpath }/">홈</a></li>
						<c:if test="${not empty login }">
							<li><a href="${cpath }/member/mypage">마이페이지</a></li>
						</c:if>
						<c:if test="${empty login }">
							<li><a href="${cpath }/member/join">회원가입</a></li>
						</c:if>
					<li><a href="${cpath }/member/${loginURL }">${loginMenu }</a></li>
					<li><a href="${cpath }/board/list">게시판</a></li>
				</ul>
			</div>
	</div>
</div>


</body>
</html>