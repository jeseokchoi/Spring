<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<h3>로그인</h3>

<form method="POST">
	<p><input type="text" name="userid" placeholder="아이디" required></p>
	<p><input type="password" name="userpw" placeholder="비밀번호" required></p>
	<p><input type="submit" value="로그인"></p>
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
				<th>${dto.userid }</th>
				<th>${dto.userpw }</th>
				<th>${dto.username }</th>
				<th>${dto.birth }</th>
				<th>${dto.gender }</th>
			</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>