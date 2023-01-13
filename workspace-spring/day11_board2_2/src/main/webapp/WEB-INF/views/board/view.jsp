<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
    
<table>
	<thead>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>IP</th>
			<th>내용</th>
			<th>파일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>${dto.title }</th>
			<th>${dto.writer }</th>
			<th>${dto.writeDate }</th>
			<th>${dto.ipaddr }</th>
			<th>${dto.content }</th>
			<th><img src="${cpath }/pic/${dto.uploadFile }" height="100" width="100"></th>
			<th>${dto.viewCount }</th>
		</tr>
	</tbody>
</table>




	<c:if test="${login.userid == dto.writer}">
		<a href="${cpath }/board/modify/${dto.idx}"><button>수정하기</button></a>
		<a href="${cpath }/board/delete/${dto.idx}"><button>삭제하기</button></a>
	</c:if>
		
	<a href="${cpath }/board/list"><button>목록</button></a>
	
	

</body>
</html>