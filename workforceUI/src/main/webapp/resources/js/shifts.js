
function shifftData(){
	
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

function prepTable(json) {
	
	var name = json.data.name;
	var starts = json.data.starts;
	var duration = json.data.duration;
	var myObj = json.data
	var html = '';
	
	for ( var x in myObj) {
		
		var str_time = myObj[x].starts ;
		var duration = myObj[x].duration ;
		var end_time = str_time + duration;
		
		if(end_time == 1440){
			end_time = end_time - 1;
		}
		else{
			 end_time = str_time + duration;
		}
		
		/*html += '<li class="a1"> <span class="shiftsBg" style="background: #'+myObj[x].bg_color+' !important;" > ';
		html += myObj[x].name + '</span>' + moment.utc().hours(str_time / 60 | 0).minutes(str_time % 60 | 0).format("hh:mm A")
				+ ' '  + ' ' + moment.utc().hours(end_time / 60 | 0).minutes(end_time % 60 | 0).format("hh:mm A") ;
		html += '</li></br>';*/
		
		html += '<tr>';
		html += '<th scope="row" style="background: #'+myObj[x].bg_color+' !important;">'+myObj[x].name+'</th>' ;
		html += '<td>'+moment.utc().hours(str_time / 60 | 0).minutes(str_time % 60 | 0).format("hh:mm A")+'</td>' ;
		html += '<td>'+ moment.utc().hours(end_time / 60 | 0).minutes(end_time % 60 | 0).format("hh:mm A") + '</td>' ;
		html += '<td><img src="resources/img/edit.png" width="30px" alt="" srcset=""><img src="resources/img/delete.png" width="30px" alt="" srcset=""></td>' ;
		html += '</tr>';
		
		
	}
	
	document.getElementById('labletime').innerHTML = html;
}

