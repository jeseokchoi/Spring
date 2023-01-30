<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#root{
		max-width: 1200px;
		width: 800px;
		margin: 50px auto;
	}
	.item {
		display: flex;
		width: 700px;
		margin: auto;
		border: 1px solid black;
		padding: 10px;
		text-align: center;
	}
	.item > div {
		flex: 1;
	}
	.item > .name {
		font-weight: bold;
	}
	.header {
		background-color: #dadada;
	}
	.mychart {
		width: 800px;
	}
</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>

<h1>ex03 - CORS 정책에 의해 자바스크립트에서 호출할 수 없을 경우</h1>
<hr>

<div id="root">
	<canvas id="myChart"></canvas>
</div>

<script>
	// 실제로는 fetch 호출이 가능하지만, 연습을 위해 CORS로 막혔다고 가정하고 진행
//	const url = 'https://apis.data.go.kr/1360000/MidFcstInfoService/getMidTa?serviceKey=jGp9rOmm%2Bg6%2FZ8XO3NfViOUBt8Ng%2FfDXVkE7kple%2BKgtpugvK9mTKCmUIWI%2BsWPK%2Fa2a%2FI%2FHXOltgwoouyyiYA%3D%3D&pageNo=1&numOfRows=10&dataType=json&regId=11H20201&tmFc=202301270600'
	const root = document.getElementById('root')
	const url ='${cpath}/getMidFcst'
	fetch(url)
	.then(resp => resp.json())
	.then(json => {
		const data = json.response.body.items.item[0]
		console.log(data)
		
		for(let key in data) {
			if(key.includes('High') || key.includes('Low')) {
				delete data[key]
			}
		}
		console.log(data)

		let min = []
		let max = []
		let today = new Date()
		let year = today.getFullYear()
		let month = today.getMonth() + 1
		let date = today.getDate()
		
		console.log(year + '-' + month + '-' + date)
			
		const day = year + '-' + month + '-' + date
		console.log(day)
		
		const a= document.createElement('div')
		a.className = 'item'
		a.className += ' header'
		a.innerHTML+= '<div class="dDay">' + day + '</div>'
		a.innerHTML+= '<div class="dDayhead">예상 기온</div>'
		root.appendChild(a)
			
			for(let key in data) {
				if(key.includes('Min')){
					min.push(data[key])
				}
				if(key.includes('Max')){
					max.push(data[key])
				}
			}
		
		
		
			for(let i = 0; i < min.length; i++){
				const item = document.createElement('div')
				item.className = 'item'
				item.innerHTML += '<div class="name">' + (i+3) + '일후' + '</div>'
				item.innerHTML += '<div class="temp">' + min[i] + '℃ ~ ' + max[i] +'℃</div>'
				root.appendChild(item)
			}

			console.log(max)
			console.log(min)		
			
			
			const context = document.getElementById('myChart')
			
			let labels = []
			today.setDate(today.getDate() + 3)
			
			for(let i = 0; i < min.length; i++){
				year = today.getFullYear()
				month = today.getMonth() + 1
				date = today.getDate()
				today.setDate(today.getDate() + 1)
				labels.push(year + '-' + month + '-' + date)
			}
			
			const meta = {
				labels: labels,
				datasets: [
					{
						label: '최저온도',
						data: min,
						backgroundColor: 'lightskyblue',
						borderWidth: 10,
						pointRadius: 35,
						borderColor: 'lightskyblue',
						hoverBackgroundColor: 'black'
					},
					{
						label: '최고온도',
						data: max,
						backgroundColor: 'lightpink',
						borderWidth: 10,
						pointRadius: 35,
						borderColor: 'lightpink',
						hoverBackgroundColor: 'yellow'
					}
				]
			}
			const config = {
				type: 'line',
				data: meta,
				option: {}
			}
			const myChart = new Chart(context, config)
			console.log(labels)
		
	})
		
</script>










</body>
</html>