<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h3>상세페이지</h3>

<table border="1">
	<thead>
		<tr>
			<th>IDX</th>
			<th>NAME</th>
			<th>AUTHOR</th>
			<th>PUBLISHER</th>
			<th>PUBLISHDATE</th>
			<th>PRICE</th>
			<th>MEMO</th>
			<th>SCORE</th>
			<th>MODIFY</th>
			<th>DELETE</th>
		</tr>
	</thead>
	<tbody>
			<tr>
				<th>${dto.idx }</th>
				<th>${dto.name }</th>
				<th>${dto.author }</th>
				<th>${dto.publisher }</th>
				<th>${dto.publishDate }</th>
				<th>${dto.price }</th>
				<th>${dto.memo }</th>
				<th>${dto.score }</th>
				<th><a href="${cpath }/bookModify/${dto.idx}"><button>수정하기</button></a></th>
				<th><a href="${cpath }/delete?idx=${dto.idx}"><button>삭제하기</button></a></th>
			</tr>

	</tbody>
	</table>
	<a href="${cpath }/bookList"><button>돌아가기</button></a>

</body>
</html>