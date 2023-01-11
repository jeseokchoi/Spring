<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST" action="${cpath }/list">
	<input type="search" name="keyword" placeholder="검색어를 입력하세요" value="${param.keyword }">
	<input type="submit" value="검색">
</form>

<table>
	<thead>
		<tr>
			<th>No.</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Date</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dto" items="${boardList }">
			<tr>
				<th>${dto.idx }</th>
				<th>${dto.title }</th>
				<th>${dto.writer }
				<th>${dto.registdate }</th>
			</tr>
		</c:forEach>
	</tbody>
</table>


</body>
</html>