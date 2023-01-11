<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST">
		<p><input type="text" name="userid" placeholder="아이디 입력" autocomplete="off" autofocus></p>
		<p><input type="password" name="userpw" placeholder="비밀번호 입력"></p>
		<p><input type="text" name="username" placeholder="이름 입력"></p>
		<p>생년월일 : <input type="date" name="birth" placeholder="생년월일 입력"></p>
		<p>
			<label>
				<input type="radio" name="gender" value="남성" style="margin-left: 50px">남
			</label>
			<label> 
				<input type="radio" name="gender" value="여성">여
			</label>
		</p>
		<p><input type="submit" value="회원가입"></p>
</form>

</body>
</html>