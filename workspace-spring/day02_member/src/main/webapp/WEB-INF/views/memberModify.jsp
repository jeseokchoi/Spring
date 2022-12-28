<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h1>memberModify</h1>
<hr>

<form method="POST">
	<p>아이디 : <input type="text" name="userId" placeholder="아이디 입력" value="${dto.userId }" required autofocus></p>
	<p>비밀번호 : <input type="text" name="userPw" placeholder="비밀번호 입력" value="${dto.userPw }" required></p>
	<p>이름 : <input type="text" name="userName" placeholder="이름 입력" value="${dto.userName }" required></p>
	<p>생년월일 : <input type="date" name="birth" value="${dto.birth }" ></p>
	<p>성별 : <input type="radio" name="gender" value="남성" ${dto.gender == '남성' ? 'checked' : '' }>남성 
			<input type="radio" name="gender" value="여성" ${dto.gender == '여성' ? 'checked' : '' }>여성</p>
	 <p><input type="submit" value="수정"></p>
</form>

</body>
</html>