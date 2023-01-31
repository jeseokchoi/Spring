function sortasc(data){
	data.sort((a, b) => a.날짜 > b.날짜 ? 1 : -1)
	return data
}

function loadHandler(){
	const url = cpath + "/airPolution"
		const root = document.getElementById('root')
		
		fetch(url)
		.then(resp => resp.json())
		.then(json => {		
			let data = json.response.body.items.map(e => {
				return {'서울': e.seoul, '부산': e.busan, '날짜': e.dataTime}
			})
		
			sortasc(data)

			data = data.filter(e => e.날짜.includes('2022') == false)
			
			const context = document.getElementById('myChart')
			const labels = data.map(e => e.날짜)
			const items = {
				labels: labels,
				datasets: [
					{
						label: '서울',
						data: data.map(e => e.서울),
						backgroundColor: 'lightskyblue',
						pointRadius: 5,
						borderWidth: 5,
						pointHoverRadius: 20
					},
					{
						label: '부산',
						data: data.map(e => e.부산),
						backgroundColor: 'lightpink',
						pointRadius: 5,
						borderWidth: 5,
						pointHoverRadius: 20
					}
				]
			}
			const config = {
				type: 'line',
				data: items,
				option: {}
			}
			const myChart = new Chart(context, config)
		})
}