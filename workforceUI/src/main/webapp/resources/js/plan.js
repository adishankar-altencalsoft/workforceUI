
		$(window).load(function(){
			
			  document.getElementById("startDate").value = moment().add(1, 'months').startOf('month').format('DD-MM-YYYY'); 
			  document.getElementById("endDate").value = moment().add(1, 'months').endOf('month').format('DD-MM-YYYY');
			  
			/* $('#btnclick').toggle(
						function() {
							$('#aside').animate({display: 'none'})
							$('#aside').animate({width:0+'%'})
						}, function() {
							$('#mainContent').animate({width:100+'%'})
						})*/
			  
		});
		
		

    	var isMatrixPreped = false;
    	
    	
    	document.addEventListener("DOMContentLoaded", function(event) {
    		 var evn = document.querySelector('button[name="sender"]')
    				.addEventListener('click', makeRequest) 
    	});
    		
    		
    	
    	document.addEventListener("DOMContentLoaded", function(event) {
    		var evn = document.querySelector('button[name="stop"]')
    				.addEventListener('click', stopCallingApi)

    	});

    	var btn = document.getElementById('sender') ;
    	var btn_stp = document.getElementById('stop') ;
    	var loader = document.getElementById("loader");

    	var intv;
    	var basrURl = 'https://schedulerc8aaeac97.ap1.hana.ondemand.com/scheduler/' ;
    //	var global_teamId = '${jspvar}';
    //    var basrURl  = 'http://localhost:8080/' ;
    	

    	var startDateGet  ; 
    	var endDateGet  ;

    	/*  **********        Initiate Roster Generation API   Start     **********      */

    	function makeRequest() {
    		
    		isMatrixPreped = false;
    		
    		startDateGet =  moment(document.getElementById("startDate").value, 'DD-MM-YYYY').format('YYYY-MM-DD')
    		endDateGet = moment(document.getElementById("endDate").value, 'DD-MM-YYYY').format('YYYY-MM-DD')
    		
    		var url = basrURl+'roster/plan/init?team='+global_teamId+'&from_date='+startDateGet+'&to_date='+endDateGet;
    		console.log('init url',url);
    		var method = 'POST';
    		var formd = 'Initiate Roster Generation API'

    			ajaxJS(url, method, formd);
    		
    	
    	}
    	
    	
    	 var glob_planning_token ;

    	function ajaxJS(url, method, formd) {
    		var xhr = new XMLHttpRequest();

    		xhr.open(method, url, true);
    		xhr.setRequestHeader('Content-Type',
    				'application/x-www-form-urlencoded');
    		xhr.send('Initiate Roster Generation API');

    		xhr.onreadystatechange = function() {
    			if (xhr.readyState == 4) {
    				if (xhr.status == 200) {
    					//  output(xhr.responseText, xhr.status, 'Initiate Roster Generation response')
    					var dataget = xhr.responseText;
    					var json = JSON.parse(dataget);
    					var status = json.status;
    					var planning_token = json.planning_token;
    					
    					if( status === 'SCHEDULED' || status === 'SUCCESS'){
    						
    						btn.disabled = true;
        					document.getElementById("startDate").disabled = true;
        					document.getElementById("endDate").disabled = true;
        					loader.style.display = "block";
        					
    					}
    					
    					glob_planning_token = json.planning_token ;
    					console.log('init api :: ',status,glob_planning_token)
    					ajaxRoasterStatus(status, planning_token);

    				} else if (xhr.status == 201) {
    					
    				} else {
    					//   output(xhr.responseText, xhr.status, 'Initiate Roster Generation Error')
    					btn.disabled = false;
    					document.getElementById("startDate").disabled = false;
    					document.getElementById("endDate").disabled = false;
    					loader.style.display = "none";
    					alert('Something went wrong...!!!!');
    					return false ;
    				}
    			}
    		}

    		//  xhr.timeout = 1000;

    	}

    	

    	/*  **********       Initiate Roster Generation API   End   **********       */

    	/*  **********       Roster Generation Status API   Start   **********       */

    	function ajaxRoasterStatus(status, planning_token) {

    		if (status == 'SCHEDULED' && planning_token != null) {

    			setTimeout(function() {
    				scheduledStatusCalls(planning_token)
    			}, 5000);

    		}

    		else {
    			console.log('Something Went wrong ..!!!');
    		}

    	}

    	var interval_token;

    	function scheduledStatusCalls(planning_token) {

    		var urlroaster = basrURl +'roster/plan/status?planning_token='
    				+ planning_token;
    		var methodroaster = 'GET';
    		var formdroaster = 'Roster Generation Status API';
    				
    		interval_token = setInterval(function() {
    			ajaxRoasterStatusSend(urlroaster, methodroaster, formdroaster);
    		}, 5000);

    		// ajaxRoasterStatusSend(urlroaster, methodroaster, formdroaster);
    	}
    	
    	

    	/*  Status API Start */

    	function ajaxRoasterStatusSend(urlroaster, methodroaster, formdroaster) {
    				
    		var xhrs = new XMLHttpRequest();
    		var urlt = urlroaster;
    		xhrs.abort();
    		xhrs.open("GET", urlroaster, true);
    		xhrs.send();
    		// xhrs.setRequestHeader("Content-Type", "application/json");

    		xhrs.onreadystatechange = function() {
    			if (xhrs.readyState === 4 && xhrs.status === 200) {
    				var json = JSON.parse(xhrs.responseText);
    				if (json.status === undefined || json.status === 'SUCCESS'
    						|| json.status === 'STOPPED' || json.status === 'ERROR'
    						|| interval_token === null) {
    					
    					var datagets = xhrs.responseText;
    					var jsonv = JSON.parse(datagets);
    					var sts = jsonv.status;
    					
    					console.log('OP:: ',sts) ;
    					
    					if(sts === 'SUCCESS' || sts === 'STOPPED' || sts === 'ERROR'){
    						
    						loader.style.display = "none";
    						btn_stp.disabled = true ;
    						btn.disabled = false;
    						document.getElementById("startDate").disabled = false;
        					document.getElementById("endDate").disabled = false;
        					
        					
        					
        					if (json.data != null) {

            					if (!isMatrixPreped) {
            						prepTable(json);
            						isMatrixPreped = true;
            					}

            					prepCountTable(json) ;
            				}
    						
    					}

    					clearInterval(interval_token);

    					interval_token = null;

    				}

    				if (json.data != null) {

    					if (!isMatrixPreped) {
    						prepTable(json);
    						isMatrixPreped = true;
    					}

    					plotAssignments(json);
    				}
    			}
    		};

    		xhrs.open(methodroaster, urlt, true);
    		xhrs.setRequestHeader('Content-Type',
    				'application/x-www-form-urlencoded');
    		xhrs.send('Initiate Roster Status API');

    	}
    	
    	

    	/*  ajaxRoasterStatusSend end */

    	function prepTable(json) {
    		
    		var planning_token = json.planning_token;
    		var score = json.data.score;
    		var shifts = json.data.shifts;
    		var team_members = json.data.team_members;

    		
    		var startDate = startDateGet ;
    		var endDate = endDateGet ;
    		
    		var range = moment().range(startDate, endDate);
    		var diff = range.diff('days');
    		var array = range.toArray('days');
    		
    		
    			$.each(array, function(i, e) {
    			  $(".dateContr").append("<span>" + moment(e).format("DD-MM-YYYY") + "</span>");
    			});
    			
    			$.each(array, function(i, e) {
    			  $(".dayCotnr").append("<span>" + moment(e).format("ddd") + "</span>");
    			});

    		var ulScore = document.getElementById("ulScore");
    		
    		
    		ulScore.innerHTML = '<li> Hard Score : <span id="hard-score"></span></li>'
    				+ '<li> Medium Score : <span id="medium-score"></span></li>'
    				+ '<li> Soft Score : <span id="soft-score"></span></li>';

    		var html = '';
    		var ulshiftTime = document.getElementById("ulshiftTime");

    		var myObj = json.data.shifts
    		var users = myObj.shifts;

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
    			
    			html += '<li class="a1"> <span class="shiftsBg" style="background: #'+myObj[x].bg_color+' !important;" > ';
    			html += myObj[x].name + '</span>' + moment.utc().hours(str_time / 60 | 0).minutes(str_time % 60 | 0).format("hh:mm A")
    					+ ' '  + ' ' + moment.utc().hours(end_time / 60 | 0).minutes(end_time % 60 | 0).format("hh:mm A") ;
    			html += '</li></br>'; 
    			
    		}

    		document.getElementById('ulshiftTime').innerHTML = html;

    		var matrixArr = document.getElementsByClassName("qaBox");
    		if (matrixArr.length == 0) {
    			return;
    		}

    		var matrix = matrixArr[0];
    		
    		for (var key = 0; key < json.data.team_members.length; key++) {
    			
    			var startDate = startDateGet ;
    			var endDate = endDateGet ;
    			
    			
    			var from_date = moment(startDate, "YYYY-MM-DD");
    			var to_date = moment(endDate, "YYYY-MM-DD");
    			var days = to_date.diff(from_date, 'days') + 1;
    			
    			
    			var divWrapper = document.createElement("div");
    			divWrapper.className = "developersDiv qaDiv";
    			divWrapper.setAttribute("data-team-emp",
    					json.data.team_members[key].employee.id);

    			var divElem = document.createElement("div");
    			divElem.className = "developerRow";

    			var empNameWrapper = document.createElement("h4");
    			empNameWrapper.className = "empName";

    			var empName = document.createElement("span");
    			empName.innerHTML = json.data.team_members[key].employee.first_name; // TODO: add full name of employee from employees list in json
    			
    			empNameWrapper.appendChild(empName);
    			divElem.appendChild(empNameWrapper);

    			var assignmentCluster = document.createElement("div");
    			assignmentCluster.className = "empRosDet";
    			var num = days; // Moment.js: calculate number of days between from and to dates
    			// console.log(days);
    			var date = moment(from_date);
    			for (var i = 0; i < num; ++i) {

    				var calculated_date = date.format('YYYY-MM-DD');//TODO: calculate date starting from from_date (from_date + i) -> moment.js
    				var assigmentCell = document.createElement("span");
    				assigmentCell.setAttribute("data-assignment-date", calculated_date); // save date as string in the format yyyy-mm-dd

    				assignmentCluster.appendChild(assigmentCell);
    				date.add(1, "days");
    			}

    			divElem.appendChild(assignmentCluster);
    			divWrapper.appendChild(divElem);

    			matrix.appendChild(divWrapper);
    		}
    		
    		generateDynamicCssForShifts(shifts);
    	}
    	
    	function plotAssignments(json) {
    		var score = json.data.score;
    		
    		var hardScore = document.getElementById("hard-score");
    		var mediumScore = document.getElementById("medium-score");
    		var softScore = document.getElementById("soft-score");
    		
    		if(hardScore) {
    			hardScore.innerHTML = score.hard_score;
    		}
    		if(mediumScore) {
    			mediumScore.innerHTML = score.medium_score;
    		}
    		if(softScore) {
    			softScore.innerHTML = score.soft_score;
    		}
    	
    			
    		var shifts = json.data.shifts;
    		var assignments =  json.data.assignments ;
    	//	loader.style.display = "none";
    		
    		  for(var key = 0; key < assignments.length; key++) {
    			var assignment = assignments[key];
    			var date = assignment.date;
    			var empId = assignment.employee_id;
    			var planType = assignment.type;
    			if(!planType) {
    				continue;
    			}
    			
    			var elem = document.querySelector("div[data-team-emp='" + empId + "'] span[data-assignment-date='" + date + "']");
    			if(elem === null) {
    				continue;
    			}
    			
    			if(planType === "SHIFT") {
    			   for(var i = 0; i < shifts.length; i++){
    					if(assignment.shift_id === shifts[i].id){
    						elem.innerHTML = shifts[i].name ;
    						break;
    					}
    				}
    			   elem.className = "shift" + assignment.shift_id;
    				
    			} else if(planType === "WORKOFF") {
    				elem.className = "holidayCls";
    				elem.innerHTML = "WO";
    			} else if(planType === "HOLIDAY") {
    				elem.className = "leaveCls";
    				elem.innerHTML = "H";
    			} else if(planType === "LEAVE") {
    				elem.className = "leaveCls";
    				elem.innerHTML = "L";
    			}
    		}
    		  
    		  btn_stp.disabled = false ;
    		
    	}
    	
    	function prepCountTable(json){
    		
    		console.log('prepCountTable',json)
    		var html1 = '';
    		var shiftdayCount = document.getElementById("shiftdayCount");

    		var myCount = json.data.shifts
    		var users = myCount.shifts;
    		
    		for ( var x in myCount) {
    			
    				
    			
    			html1 += '<tr>';
    			html1 += '<td  style="background: #'+myCount[x].bg_color+' !important;" >' + myCount[x].name + '</td>';
    			html1 += 
    			html1 += '</tr>';
    			
    		}

    		document.getElementById('shiftdayCount').innerHTML = html1;
    		
    	}

    	 function generateDynamicCssForShifts(shifts) {
    		 var css = "";
    		for(var key = 0; key < shifts.length; key++) {
    			var shift = shifts[key];
    		
    			css += " .shift" + shift.id + "{";
    			if(shift.bg_color) {
    				css += "background-color: #" + shift.bg_color + " !important";
    			}
    			
    			if(shift.text_color) {
    				css += "color: #" + shift.text_color + " !important";
    			}
    			
    			css += "}";
    		}
    		
    		var style = document.createElement('style');
    		style.type = 'text/css';
    		style.innerHTML = css;
    		document.getElementsByTagName('head')[0].appendChild(style);
    	} 
    	
    	
    	
    	
    function stopCallingApi(){
    		
    		/* btn.disabled = false;
    		btn_stp.disabled = true ; */
    		
    		var method = 'POST' ;
    		var url = basrURl+'roster/plan/halt?planning_token='+glob_planning_token ;
    		var xhr = new XMLHttpRequest();
    		
    		
    		xhr.onreadystatechange = function() {
    			if (xhr.readyState === 4 && xhr.status === 200) {
    				var json = JSON.parse(xhr.responseText);
    				if (json.status === undefined || json.status === 'SUCCESS'
    						|| json.status === 'STOPPED' || json.status === 'ERROR'
    						|| interval_token === null) {
    					
    					btn.disabled = false;
    					btn_stp.disabled = true ;
    					document.getElementById("startDate").disabled = false;
    					document.getElementById("endDate").disabled = false;

    					clearInterval(interval_token);
    					interval_token = null;

    				}
    				else {
    					//   output(xhr.responseText, xhr.status, 'Initiate Roster Generation Error')
    					alert('Something went wrong...!!!!');
    					return false ;
    				}

    				if (json.data != null) {

    					if (!isMatrixPreped) {
    						prepTable(json);
    						isMatrixPreped = true;
    					}

    					
    				}
    			}
    		};

    		xhr.open(method, url, true);
    		xhr.setRequestHeader('Content-Type',
    				'application/x-www-form-urlencoded');
    		xhr.send('Halt Roster Generation API');
    		
    		// window.location.reload();
    	}
