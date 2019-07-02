
function roastData(){
	
	var basrURl = 'https://schedulerc8aaeac97.ap1.hana.ondemand.com/scheduler/' ;
	
//	var basrURl  = 'http://localhost:8080/' ;
	var method = 'GET';
	var apiurl = basrURl+'roster-setting/list?team='+roast_teamId ;
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
				
				prepTableRoaster(json);

			//	ajaxRoasterStatus(status, planning_token);

			} else if (xhr.status == 201) {
				//  output(xhr.responseText, xhr.status, 'Initiate Roster Generation Added')
				console.log('Initiate : ', xhr.responseText);
			} else {
				console.log(xhr.responseText, xhr.status, 'Initiate Roster Generation Error')
				alert('Something went wrong...!!!!');
				console.log('Initiate : ', xhr.responseText)
			}
		}
	}
	
}


function prepTableRoaster(json){
	
	document.getElementById('name').value  = json.data[0].name;
	document.getElementById('min_rest_mins').value  = json.data[0].min_rest_mins;
	document.getElementById('min_rest_weight').value  = json.data[0].min_rest_weight;
	document.getElementById('ideal_days_to_workoff').value  = json.data[0].ideal_days_to_workoff;
	document.getElementById('ideal_days_to_workoff_weight').value  = json.data[0].ideal_days_to_workoff_weight;
	document.getElementById('min_days_to_workoff').value  = json.data[0].min_days_to_workoff;
	document.getElementById('max_days_to_workoff').value  = json.data[0].max_days_to_workoff;
	document.getElementById('ideal_workoff_days').value  = json.data[0].ideal_workoff_days;
	document.getElementById('ideal_workoff_days_weight').value  = json.data[0].ideal_workoff_days_weight;
	document.getElementById('min_workoff_days').value  = json.data[0].min_workoff_days;
	document.getElementById('max_workoff_days').value  = json.data[0].max_workoff_days;
	document.getElementById('emp_pref_weight').value  = json.data[0].emp_pref_weight;
	document.getElementById('even_workoff_dist_weight').value  = json.data[0].even_workoff_dist_weight;
	document.getElementById('even_shift_dist_weight').value  = json.data[0].even_shift_dist_weight;
	document.getElementById('emp_shift_set_weight').value  = json.data[0].emp_shift_set_weight;
	document.getElementById('mid_week_shift_change_weight').value  = json.data[0].mid_week_shift_change_weight;
	document.getElementById('weekly_shift_rotation_weight').value  = json.data[0].weekly_shift_rotation_weight;
	document.getElementById('use_as_default').checked  = json.data[0].use_as_default;
	
	
	
}