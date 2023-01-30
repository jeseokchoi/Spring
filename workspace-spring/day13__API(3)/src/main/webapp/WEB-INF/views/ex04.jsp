<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
	#root {
		max-width: 1800px;
		width: 1200px;
		margin: auto;
	}
</style>
</head>
<body>

<h1>ex04 - 연습용</h1>
<hr>

<div id="root">
	<canvas id="myChart"></canvas>
</div>

<script>
	const url = '${cpath}/getAirPolution'
	const root = document.getElementById('root')
	
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
		console.log(json)
		
		const date = new Date()
 		const data = json.response.body.items.map(e => {
				return {'서울': e.seoul, '부산': e.busan, '충북': e.chungbuk, '충남': e.chungnam,
				'대구': e.daegu, '인천': e.incheon, '대전': e.daejeon, '경북': e.gyeongbuk,
				'세종': e.sejong, '광주': e.gwangju, '전북': e.jeonbuk, '강원도': e.gangwon,
				'울산': e.ulsan, '전남': e.jeonnam, '제주': e.jeju, '경남': e.gyeongnam, '경기': e.gyeonggi,
				'날짜': getYYYYMMDD(date)} 
		})
		
		function getYYYYMMDD(date) {
			const yyyy = date.getFullYear()
			let mm = date.getMonth() + 1
			let dd = date.getDate()
			
			mm = mm < 10 ? '0' + mm : mm
			dd = dd < 10 ? '0' + dd : dd
			
			const ret = yyyy + '-' + mm + '-' + dd
			return ret
		}
	

		console.log(data)
		console.log(data[0].부산)
		
		const context = document.getElementById('myChart')
		const labels = data.map(e => e.날짜)
		const items = {
			labels: labels,
			datasets: [
				{
					label: '강원도',
					data: data.map(e => e.강원도)
					
				},
				{
					label: '경기',
					data: data.map(e => e.경기)
					
				},
				{
					label: '경남',
					data: data.map(e => e.경남)
					
				},
				{
					label: '경북',
					data: data.map(e => e.경북)
					
				},
				{
					label: '광주',
					data: data.map(e => e.광주)
					
				},
				{
					label: '대구',
					data: data.map(e => e.대구)
					
				},
				{
					label: '대전',
					data: data.map(e => e.대전)
					
				},
				{
					label: '부산',
					data: data.map(e => e.부산)
					
				},
				{
					label: '서울',
					data: data.map(e => e.서울)
					
				},
				{
					label: '세종',
					data: data.map(e => e.세종)
					
				},
				{
					label: '울산',
					data: data.map(e => e.울산)
					
				},
				{
					label: '인천',
					data: data.map(e => e.인천)
					
				},
				{
					label: '전남',
					data: data.map(e => e.전남)
					
				},
				{
					label: '전북',
					data: data.map(e => e.전북)
					
				},
				{
					label: '제주',
					data: data.map(e => e.제주)
					
				},
				{
					label: '충남',
					data: data.map(e => e.충남)
					
				},
				{
					label: '충북',
					data: data.map(e => e.충북)
					
				}
			]
		}
		const config = {
			type: 'line',
			data: items,
			option: {}
		}
		
		console.log(items)
		const myChart = new Chart(context, config)

	})
</script>

</body>
</html>