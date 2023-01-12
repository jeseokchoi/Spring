<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<table>
	<thead>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>내용</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>${dto.title }</th>
			<th>${dto.writer }</th>
			<th>${dto.registdate }</th>
			<th>${dto.content }</th>
			<th>${dto.views }</th>
		</tr>
	</tbody>
</table>

<div>
	<p>No. ${dto.idx }</p>
	<p>제목 : ${dto.title }</p>
	<p></p>
	<p></p>
	<p></p>
	<p></p>
</div>



<!-- 			절대 까먹지마, 이건 게시글 수정, 삭제 -->
	<c:if test="${login.userid == dto.writer}">
		<a href="${cpath }/modify/${dto.idx}"><button>수정하기</button></a>
		<a href="${cpath }/delete/${dto.idx}"><button>삭제하기</button></a>
	</c:if>
		
	<a href="${cpath }/list"><button>목록</button></a>
	
	
<script>
	const deleteBtn = document.getElementById('deleteBtn')
	deleteBtn.onclick = function(event) {
		const idx = event.target.getAttribute('idx')
		const url = '${cpath}/delete/' + idx
		const flag = confirm(idx + '게시물을 삭제하시겠습니까?')
		if(flag) {
			location.href = url
		}
	}
</script>
	
	
	
	
</body>
</html>