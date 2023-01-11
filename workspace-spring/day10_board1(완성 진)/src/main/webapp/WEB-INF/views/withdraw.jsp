<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>아이디 삭제</h3>

<form method="POST">
	<p>비밀번호 입력 : <input type="text" name="userpw" placeholder="비밀번호 입력" required></p>
	<p><input type="submit" value="삭제하기"></p>
</form>
	<a href="${cpath }/mypage/${dto.idx }"><button>돌아가기</button></a>

</body>
</html>