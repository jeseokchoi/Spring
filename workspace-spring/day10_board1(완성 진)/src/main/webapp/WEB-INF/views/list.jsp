<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<form method="POST" action="${cpath }/list">
	<input type="search" name="keyword" placeholder="검색어를 입력하세요" value="${param.keyword }">
	<input type="submit" value="검색">
</form>
<form action="${cpath }/write">
 	<input type="submit" value="글쓰기">
</form>

<table>
	<thead>
		<tr>
			<th>No.</th>
			<th>Title</th>
			<th>Writer</th>
			<th>Date</th>
			<th>view</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="dto" items="${list }">
			<tr>
				<td>${dto.idx }</td>
				<td><a href="${cpath }/read/${dto.idx}">${dto.title }</a></td>
				<td>${dto.writer }</td>
				<td>${dto.registdate }</td>
				<td>${dto.views }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>


</body>
</html>