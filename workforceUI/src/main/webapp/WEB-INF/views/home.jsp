<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../include/header.jsp" %>

<script>

var global_teamId = ${teamId}

</script>

<body>
    <!-- <app-new-header></app-new-header>
<br>
<br> -->
    <div class="mainContr">
       
       <%@include file="../include/menu.jsp" %>

        <div class="tab-pane fade show active" id="plan" role="tabpanel"
			aria-labelledby="plan-tab">
			<div id="aside" class="aside">
				<div class="rosterViews">
					<h3 class="roster">
						<span class="roIcon"></span> Roster Planning
					</h3>
					<select name="rosterSettings" id="rosterSettings">
						<option value="rosterSettings">Roster Settings</option>
					</select> <input autocomplete="off" id="startDate" class="fromDate"
						data-date-end-date="0d" /> <input autocomplete="off" id="endDate"
						class="toDate" data-date-start-date />

					<button name="sender" id="sender" class="btn btn-success btn-start">Start</button>
					<button name="stop" id="stop" class="btn btn-danger btn-stop" disabled>Stop</button>


				</div>
				<div class="availableRosters" style="display: none;">
					<h3>Available Rosters</h3>
					<ul>
						<li><a href="#">Label 1</a></li>
						<li><a href="#">Label 2</a></li>
						<li><a href="#">Label 3</a></li>
						<li><a href="#">Label 4</a></li>
					</ul>
				</div>
				<div class="score">
					<h3>
						<span class="starIcon"></span>Score
					</h3>
					<ul id="ulScore">

					</ul>
				</div>
				<div class="shiftTime">
					<h3>
						<span class="stIcon"></span>Shift & Timings
					</h3>
					<ul id="ulshiftTime">

					</ul>

					<ul>
						<li class="l"><span class=""></span><span
							class="shiftsBg leaveCls">L</span> - Leave</li>
						<li class="wo"><span class=""></span><span
							class="shiftsBg holidayCls">WO</span>- Week Off</li>
					</ul>

				</div>

			</div>
			<div id="mainContent" class="mainContent">
				<button id="btnclick" ><img src="<c:url value="resources/img/left_arrow.png" />" style="height: 27px;width: 45px;"></button>
				<h3 class="rosterDate">Roster Date Range: ${serverTime} ${teamId}</h3> 
				<span class="loading"> loading </span>

				<div id="loader" class="loader">
					<img src="<c:url value="resources/img/loader.gif" />" />
				</div>

				<div class="dateDayContr">

					<div class="dayCotnr"></div>

					<div class="dateContr"></div>

				</div>
				<div class="mainRoster">

					<div class="qaBox"></div>
				</div>

			</div>
			
			<div id="mainContent" class="mainContent">
				
				<div id="counttable" class="counttable">
					
				</div>
				
			</div>
			
		 <div  class="mainContent"> <!-- qaBox -->
				<table class="table table-striped">
						<tbody id="shiftdayCount">
								
								
						</tbody>
				  </table>
			</div>
	</div>
</div>
                        
<script src="<c:url value="resources/js/plan.js" />"></script>
<link href="<c:url value="/resources/css/ui.css" />" rel="stylesheet">

<%@include file="../include/footer.jsp" %>
