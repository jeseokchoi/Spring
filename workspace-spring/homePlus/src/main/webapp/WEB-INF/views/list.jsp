<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<h1>HomePlus 제품리스트</h1>
<hr>

<div class="list">
	<div class="wrap">
		<c:forEach var="dto" items="${list }">
			<div class="item" idx=${dto.idx }>
				<div class="img"><img src="${cpath }/homePlus/${dto.thumbnail }"height="150"></div>
				<div class="name">${dto.productName }</div>
				<div class="price">
					<fmt:formatNumber value="${dto.price }" />원
				</div>
				<div class="category">${dto.category }</div>
			</div>
		</c:forEach>
	</div>
</div>

<script>
	// item 요소를 클릭하면 페이지가 이동되도록
	const itemList = document.querySelectorAll('.item')
	itemList.forEach(item => {
		const idx = item.getAttribute('idx')
		const url = '${cpath}/dtaile/' + idx
		item.onclick = () => location.href = url
	})
</script>

</body>
</html>