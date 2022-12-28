<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h1>memberAdd.jsp</h1>
<hr>

	<form method="POST">
		<p>아이디 : <input type="text" name="userId" placeholder="아이디 입력" required autofocus></p>
		<p>비밀번호 : <input type="text" name="userPw" placeholder="비밀번호 입력" required autofocus></p>
		<p>이름 : <input type="text" name="userName" placeholder="이름 입력" required autofocus></p>
		<p>생년월일 : <input type="date" name="birth" placeholder="생년월일 입력" required autofocus></p>
		<p><input type="radio" name="gender" value="남성">남 <input type="radio" name="gender" value="여성">여</p>
		<p><input type="submit" value="등록하기"></p>
	</form>

</body>
</html>