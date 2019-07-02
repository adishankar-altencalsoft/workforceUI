function skillsData(){
	
	var basrURl = 'https://schedulerc8aaeac97.ap1.hana.ondemand.com/scheduler/' ;
	
//	var basrURl  = 'http://localhost:8080/' ;
	var method = 'GET';
	var apiurl = basrURl+'shift/list?team='+shift_teamId ;
	console.log(apiurl);
	var formd = 'Initiate Roster Generation API'
	
	var xhr = new XMLHttpRequest();

	xhr.open(method, apiurl, true);
	xhr.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	xhr.send('Initiate Roster Generation API');
	
	xhr.onreadystatechange = function() {
		console.log('readyState Fisrt: ', xhr.readyState, xhr.status)
		if (xhr.readyState == 4) {
			if (xhr.status == 200) {
				
				console.log('Initiate : ', xhr.responseText);
				var dataget = xhr.responseText;
				var json = JSON.parse(xhr.responseText);
				var status = json.status;
				console.log(status);
				
				prepTable(json);

			//	ajaxRoasterStatus(status, planning_token);

			} else if (xhr.status == 201) {
				//  output(xhr.responseText, xhr.status, 'Initiate Roster Generation Added')
				console.log('Initiate : ', xhr.responseText);
			} else {
				console.log(xhr.responseText, xhr.status, 'Initiate Roster Generation Error') ;
				alert('Something went wrong...!!!!');
				console.log('Initiate : ', xhr.responseText)
			}
		}
	}
	
}