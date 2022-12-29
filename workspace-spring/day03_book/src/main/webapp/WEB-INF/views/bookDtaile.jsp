<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="home.jsp" %>

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
			<th>Modify</th>
		</tr>
	</thead>
	<tbody>
			<tr>
				<th>${dto.idx }</th>
				<th>${dto.name }</th>
				<th>${dto.author }</th>
				<th>${dto.publisher }</th>
				<th>${dto.publishdate }</th>
				<th>${dto.price }</th>
				<th>${dto.memo }</th>
				<th>${dto.score }</th>
				<td><a href="${cpath }/bookModify?idx=${dto.idx}"><button>수정하기</button></a></td>
			</tr>

	</tbody>
	</table>
	<a href="${cpath }/bookList"><button>돌아가기</button></a>

</body>
</html>