<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="home.jsp" %>

<h1>Book 테이블 목록</h1>
<hr>

<table border="1">
	<tr>
		<th>IDX</th>
		<th>NAME</th>
		<th>AUTHOR</th>
		<th>PUBLISHER</th>
		<th>PUBLISHDATE</th>
		<th>PRICE</th>
		<th>MEMO</th>
		<th>SCORE</th>
		<th>조회</th>
		<th>삭제</th>
	</tr>
	<tbody>
		<c:forEach var="dto" items="${list }">
			<tr>
				<th>${dto.idx }</th>
				<th>${dto.name }</th>
				<th>${dto.author }</th>
				<th>${dto.publisher }</th>
				<th>${dto.publishdate }</th>
				<th>${dto.price }</th>
				<th>${dto.memo }</th>
				<th>${dto.score }</th>
				<th><a href="${cpath }/bookDtaile?idx=${dto.idx}"><button>상세보기</button></a></th>
				<th><a href="${cpath }/delete?idx=${dto.idx}"><button>삭제하기</button></a></th>
			</tr>
		</c:forEach>
	</tbody>
</table>
			<form method="POST">
				<p><input type="text" name="name" placeholder="검색어" required autofocus><button type="submit">검색</button></p>
			</form>
				<a href="${cpath }"><button>홈으로 돌아가기</button></a>

</body>
</html>