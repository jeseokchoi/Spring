<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST">
		<p><input type="text" name="userId" placeholder="아이디 입력" autocomplete="off" autofocus></p>
		<p><input type="password" name="userPw" placeholder="비밀번호 입력"></p>
		<p><input type="text" name="userName" placeholder="이름 입력"></p>
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
<hr>

<table>
	<thead>
		<tr>
			<th>USERID</th>
			<th>USERPW</th>
			<th>USERNAME</th>
			<th>BIRTH</th>
			<th>GENDER</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dto" items="${list }">
			<tr>
				<th>${dto.userId }</th>
				<th>${dto.userPw }</th>
				<th>${dto.userName }</th>
				<th>${dto.birth }</th>
				<th>${dto.gender }</th>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>