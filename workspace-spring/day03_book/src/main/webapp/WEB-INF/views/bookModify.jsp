<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="home.jsp" %>

<form method="POST">
	<p>책 제목 : <input type="text" name="name" value="${dto.name }" required autofocus></p>
	<p>작가명 : <input type="text" name="author" value="${dto.author }" required autofocus></p>
	<p>출판사 : <input type="text" name="publisher" value="${dto.publisher }" required autofocus></p>
	<p>출판일 : <input type="date" name="publishdate" value="${dto.publishdate }"></p>
	<p>가격 : <input type="number" name="price" value="${dto.price }" required autofocus></p>
	<p>줄거리 :<input type="text" name="memo" value="${dto.memo }" required autofocus></p>
	<p>평점 : <input type="text" name="score" value="${dto.score }" required autofocus></p>
	<p><input type="submit" value="등록하기"></p>
</form>

</body>
</html>