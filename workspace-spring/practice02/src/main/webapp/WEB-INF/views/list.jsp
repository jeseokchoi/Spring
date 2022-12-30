<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h1>Apple Product List</h1>
<hr>

<table border="1">
	<tr>
		<th>제품</th>
		<th>가격</th>
		<th>카테고리</th>
		<th>상세페이지</th>
	</tr>
	<tbody>
		<c:forEach var="dto" items="${list }">
			<tr>
				<th>${dto.product }</th>
				<th><fmt:formatNumber>${dto.price }</fmt:formatNumber></th>
				<th>${dto.category }</th>
				<th><a href="${cpath }"><button>제품보기</button></a></th>
			</tr>
		</c:forEach>
	</tbody>
</table>
			<form method="POST">
				<p><input type="text" name="product" placeholder="검색어" required autofocus><button type="submit">검색</button></p>
			</form>
				<a href="${cpath }"><button>홈으로 돌아가기</button></a>

</body>
</html>