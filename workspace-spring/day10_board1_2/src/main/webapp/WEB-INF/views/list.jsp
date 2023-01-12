<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>게시판</h3>
<div class="test">
	<div class="search">
		<form method="POST" action="${cpath }/list">
			<p class="ptest">
				<input type="search" name="keyword" placeholder="검색어를 입력하세요" value="${param.keyword }">
				<input type="submit" value="검색">
			</p>
		</form>
	<div class="write_sub">
				<form action="${cpath }/write">
				 	<input type="submit" value="글쓰기">
				</form>
	</div>
	</div>
</div>
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

<div class="pageNumber">
	<c:forEach var="i" begin="1" end="${pageCount }">
		<a class="${param.page == i ? 'bold' : '' }"
			 href="${cpath }/list?page=${i}">[${i }]</a>
	</c:forEach>
</div>


</body>
</html>