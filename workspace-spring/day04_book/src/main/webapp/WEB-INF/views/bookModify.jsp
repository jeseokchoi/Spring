<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>도서 수정</h3>

<form method="POST">
	<p>책 제목 : <input type="text" name="name" value="${dto.name }" required autofocus></p>
	<p>작가명 : <input type="text" name="author" value="${dto.author }" required autofocus></p>
	<p>출판사 : <input type="text" name="publisher" value="${dto.publisher }" required autofocus></p>
	<p>출판일 : <input type="date" name="publishDate" value="${dto.publishDate }"></p>
	<p>가격 : <input type="number" name="price" value="${dto.price }" required autofocus></p>
	<a>줄거리 : </a>
	<p><textarea name="memo" required autofocus>${dto.memo }</textarea></p>
	<p>평점 : <input type="text" name="score" value="${dto.score }" required autofocus></p>
	<p>
		<input type="submit" value="수정하기">
		<a href="${cpath}/bookDtaile/${dto.idx }"><input type="button" value="뒤로가기"></a>
	</p>
</form>

</body>
</html>