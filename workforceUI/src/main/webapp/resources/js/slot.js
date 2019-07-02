function slotsData(){
	
	var basrURl = 'https://schedulerc8aaeac97.ap1.hana.ondemand.com/scheduler/' ;
	
//	var basrURl  = 'http://localhost:8080/' ;
	var method = 'GET';
	var apiurl = basrURl+'slot/list?team='+slots_teamId ;
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
				
				prepTableSlot(json);

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

function prepTableSlot(json){
	
	var name = json.data.name;
	var starts = json.data.starts;
	var duration = json.data.duration;
	var myObj = json.data
	var html = '';
	
	for ( var x in myObj) {
		
		html += '<tr>';
		html += '<td>' +myObj[x].name+ '</td>';
		html += '<td>' +myObj[x].slot_skills[x].proficiency+'</td>' ;
		html += '<td>' +myObj[x].slot_skills[x].skill.name+ '</td>';
		html += '<td><img src="resources/img/edit.png" width="30px" alt="" srcset=""><img src="resources/img/delete.png" width="30px" alt="" srcset=""></td>' ;
		html += '</tr>';
		
	}
	
	document.getElementById('slotdata').innerHTML = html;
}