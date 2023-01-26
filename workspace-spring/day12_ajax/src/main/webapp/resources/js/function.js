function dtoToHTML(dto) {
	const tag = `
	<div class="item">
		<div class="idx">${dto.idx}</div>
		<div class="category">${dto.category}</div>
		<div class="productName">${dto.productName}</div>
		<div class="price">${dto.price}</div>
		<div class="score">${dto.score}</div>
		<div class="registDate">${dateFormat(dto.registDate)}</div>
	</div>
	`
		return tag
}

function dateFormat(date) {
	const d = new Date(date)
	const yyyy = d.getFullYear()
	let mm = d.getMonth() + 1
	let dd = d.getDate()
	mm = mm < 10 ? '0' + mm : mm
	dd = dd < 10 ? '0' + dd : dd
	return `${yyyy}-${mm}-${dd}`
}

function loadHandler() {
	const url = cpath + '/homeplus/product'
	const opt = {
			method: 'GET'
	}
	fetch(url, opt)
	.then(resp => resp.text())	//  resp.JSON() = JSON 문자열을 Javascript 객체로 변환
	.then(text => {
		console.log(text)
		const arr = JSON.parse(text)	// JSON형식의 문자열을 객체로 변환
		console.log(arr)
		const jsonString = JSON.stringify(arr)	// JS객체를 JSON문자열로 변환
		console.log(jsonString)
		
		items.innerHTML = ''	// 이미지 파일 제거
		arr.forEach(dto => items.innerHTML += dtoToHTML(dto))
	})
}