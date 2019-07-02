<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../include/header.jsp" %>

<script>

var roast_teamId = ${teamId}

</script>

<body onload="javascript:roastData()">
    <!-- <app-new-header></app-new-header>
<br>
<br> -->

 <div class="mainContr">

	 <%@include file="../include/menu.jsp" %>
	 
	 <div class="tab-pane fade show active" id="roster" role="tabpanel" aria-labelledby="roster-tab" data-la-initdispnone="true">
            <div class="container">
                <div class="row">
                    <div class="chkDefSettings">
                        <input type="checkbox" name="defalutChk" id="use_as_default">
                        <span>Make Default Settings</span>
                    </div>
                    <div class="rosterSetName rosterWorkOff">
                        <label for="rosterInpName">Name:</label>
                        <input type="text" class="rosterSetInput" id="name" />
                    </div>
                    <div class="minRest rostRow rosterWorkOff">
                        <div class="leftRosInp">
                            <label for="minRestLabel">Min Rest Minutes </label>
                            <input type="number" id="min_rest_mins">

                        </div>
                        <div class="rigRosInpu">
                            <label for="weiRestLabel">Weightage </label>
                            <input type="number" id="min_rest_weight">
                        </div>
                    </div>

                    <div class="rosterWorkOff">

                        <div class="workDays rostRow">
                            <div class="leftRosInp">
                                <label for="idealRestLabel">Ideal Days to WorkOffs</label>
                                <input type="number" id="ideal_days_to_workoff">

                            </div>
                            <div class="rigRosInpu">
                                <label for="weiRestLabel">Ideal Days To WorkOff Weight </label>
                                <input type="numnber" id="ideal_days_to_workoff_weight">
                            </div>
                        </div>
                        <div class="minNumRest rostRow">
                            <div class="leftRosInp">
                                <label for="minRestLabel">Min days to WorkOff</label>
                                <input type="number" id="min_days_to_workoff">

                            </div>
                            <div class="rigRosInpu">
                                <label for="weiRestLabel">Max days to WorkOff</label>
                                <input type="number" id="max_days_to_workoff">
                            </div>
                        </div>

                        <div class="idealWorkOff rostRow">
                            <div class="leftRosInp">
                                <label for="minRestLabel"> Ideal Work Off Days </label>
                                <input type="number" id="ideal_workoff_days">

                            </div>
                            <div class="rigRosInpu">
                                <label for="weiRestLabel">Weight </label>
                                <input type="number" id="ideal_workoff_days_weight">
                            </div>
                        </div>
                        <div class="minWorkDays rostRow ">
                            <div class="leftRosInp">
                                <label for="minRestLabel"> Minimum Work Days Off </label>
                                <input type="number" id="min_workoff_days">

                            </div>
                            <div class="rigRosInpu">
                                <label for="weiRestLabel">Maximum Work Days Off </label>
                                <input type="number" id="max_workoff_days">
                            </div>
                        </div>
                    </div>
                    <div class="rosterEmpShiftRow">

                        <div class="empPrefWeight rostRow ">
                            <div class="leftRosInp">
                                <label for="minRestLabel"> Employee Preference Weight </label>
                                <input type="number" id="emp_pref_weight">

                            </div>
                            <div class="rigRosInpu">
                                <label for="weiRestLabel" id="weiRestLbl">WeekOff Distribution Weight </label>
                                <input type="numnber" id="even_workoff_dist_weight">
                            </div>
                        </div>
                        <div class="evnShftDis rostRow ">
                            <div class="leftRosInp">
                                <label for="minRestLabel">Shift Distribution Weight </label>
                                <input type="number" id="even_shift_dist_weight">

                            </div>
                            <div class="rigRosInpu">
                                <label for="weiRestLabel">Employee Shift Set Weight </label>
                                <input type="number" id="emp_shift_set_weight">
                            </div>
                        </div>
                        <div class="midWeekSftChg rostRow ">
                            <div class="leftRosInp">
                                <label for="minRestLabel"> Mid Week Shift Change Weight </label>
                                <input type="number" id="mid_week_shift_change_weight">

                            </div>
                            <div class="rigRosInpu">
                                <label for="weiRestLabel">Weekly Shift Rotation Weight </label>
                                <input type="numnber" id="weekly_shift_rotation_weight">
                            </div>
                        </div>
                    </div>
                    <div class="rostSaveBtnContr ">
                        <button class="btn btn-success">Save</button>
                    </div>
                </div>
            </div>
        </div>
	 
</div>

<link href="<c:url value="/resources/css/workforceStyles.css" />" rel="stylesheet">
<script src="<c:url value="resources/js/roaster.js" />"></script>
<%@include file="../include/footer.jsp" %>