<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.ADDR1, .ADDR2, .LAT, .CNTCT_TEL, .LNG, .PLACE, .TRFC_INFO, .UC_SEQ, .USAGE_AMOUNT, .USAGE_DAY {
		display: none;
	}
	.item {
		font-size: 25px;
		cursor: pointer;
		overflow: hidden;
	}
	.detail {
		border: 1px solid black;
		box-sizing: border-box;
		z-index: 1;
		
		padding: 0;
        height: 0;
        opacity: 0;
        transition-duration: 0.5s;
	}
	.dtail.selected {
		height: auto;
        padding: 20px;
        opacity: 1;
        transition-duration: 0.5s;
	}
</style>
</head>
<body>

<h1>ex02.jsp</h1>
<hr>

<div id="root"></div>


<script>
	const url = 'https://apis.data.go.kr/6260000/FestivalService/getFestivalKr?serviceKey=jGp9rOmm%2Bg6%2FZ8XO3NfViOUBt8Ng%2FfDXVkE7kple%2BKgtpugvK9mTKCmUIWI%2BsWPK%2Fa2a%2FI%2FHXOltgwoouyyiYA%3D%3D&pageNo=1&numOfRows=20&resultType=json'
		fetch(url)
		.then(resp => resp.json())
		.then(json => {
			console.log(json)
	 		const arr = json.getFestivalKr.item
	 		console.log(arr)
	 		
			const root = document.getElementById('root')
			
	 		arr.forEach(dto => {
	 			const item = document.createElement('div')
	 			item.className = 'item'
	 			
	 			const detail = document.createElement('div')
	 			detail.className = 'detail'
	 			
	 			for(let key in dto) {
	 				console.log(key, dto[key])
	 				const div = document.createElement('div')
	 				div.className = key
	 				div.innerText = dto[key]
	 				
	 					if(key == "MAIN_TITLE") {
	 						item.appendChild(div)
	 					}else {
	 						detail.appendChild(div)
	 					}
		 				root.appendChild(item)
		 				item.appendChild(detail)
	 				}
	 			
	 			const imgNormal = item.querySelector('.MAIN_IMG_NORMAL')
	 			
	 			imgNormal.style.backgroundImage = 'url(' + imgNormal.innerText + ')'
	 			imgNormal.style.backgroundPosition = 'center center'
 	 			imgNormal.style.backgroundSize = 'auto 100%'
 	 			imgNormal.style.width = '200px'
 	 			imgNormal.style.height = '200px'
	 			imgNormal.innerText = ''
	 			
	 		})
			const titleArray = Array.from(document.querySelectorAll('.item > .MAIN_TITLE'))
			const contentList = document.querySelectorAll('.item > .detail')
			console.log(titleArray)
			console.log(contentList)
			
			function clickHandler(event) {
				const i = titleArray.indexOf(event.target)
				const content = contentList[i]
				
				if(content.classList.contains('selected')) {
					content.classList.remove('selected')
					return
				}
				contentList.forEach(c => c.classList.remove('selected'))
				content.classList.add('selected')
			}
			titleArray.forEach(t => t.onclick = clickHandler)
		})
</script>


</body>
</html>