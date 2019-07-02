<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../include/header.jsp" %>

<script>

	var shift_teamId = ${teamId}

</script>
<body onload="javascript:shifftData()">

    <!-- <app-new-header></app-new-header>
<br>
<br> -->

 <div class="mainContr">

 <%@include file="../include/menu.jsp" %>
 <c:set var="context" value="${pageContext.request.contextPath}" />
 
 <div class="tab-pane fade show active" id="slot" role="tabpanel" aria-labelledby="slot-tab" data-la-initdispnone="true">
            <div class="slotAddBtnCotnr">
                <button class="btn btn-success">Add Shift</button>
            </div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Label</th>
                        <th scope="col">Start Time</th>
                        <th scope="col">End Time</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody id="labletime">
                     
                </tbody>
            </table>
            
            
            


        </div>

	<div class="tab-pane fade show active" id="shifts" role="tabpanel" aria-labelledby="shifts-tab" >
			
			<div class="nameInputContr">
                <label for="nameInput">Name:</label>
                <input type="text" class="nameInput">
            </div>
            <div class="descContr">
                <label for="descTextarea">Decsription: </label>
                <textarea name="descTextarea" id="descTextarea" cols="10" rows="5"></textarea>

            </div>
            <div class="shiftTimePicker">
                <h4> <span class="shiftFromTime">
                        Start Time:
                    </span>
                    <input type="text">
                </h4>
                <h4>

                    <span class="shiftToTime"> End Time:</span>
                    <input type="text">
                </h4>

            </div>
            <div class="reprContr">
                <span>Representation:</span>
                <div class="shiftBgTextColor">
                    <h3>
                        <span class="colorPicker"></span>
                        <span class="CPBgText">Select BG Color</span>
                    </h3>
                    <h3>
                        <span class="colorPicker"></span>
                        <span class="CPTextColor">Select Text Color</span>
                    </h3>
                </div>
            </div>
			
	</div>
	
	<div class="tab-pane fade show active" id="slot" style="width:100%" role="tabpanel" aria-labelledby="slot-tab" data-la-initdispnone="true">
	
            
            
            
            <!-- <div class="slotsContr">
                <span>Slot:</span>
                <div class="slotsContent">
                    <div class="AddBtnContr">
                        <button class="btn btn-success" data-toggle="modal" data-target="#slotForm" aria-controls="home"
                            aria-selected="true">Add</button>
                    </div>
                    <h3>
                        <span> Label</span>
                        <button class="btn btn-danger">Del</button>
                        <button class="btn btn-warning">Edit</button>
                    </h3>
                    <h3>
                        <span> Label</span>
                        <button class="btn btn-danger">Del</button>
                        <button class="btn btn-warning">Edit</button>
                    </h3>
                    <h3>
                        <span> Label</span>

                        <button class="btn btn-danger">Del</button>
                        <button class="btn btn-warning">Edit</button>
                    </h3>
                </div>
            </div> -->
            
            
            <div class="scheduleCOnt">
                <h3>Schedule :</h3>
                
              <table class="table table-striped" >
            <thead>
                <tr>
                    <th>Days</th>
                    <th>Minimum Strength</th>
                    <th >Maximum Strength</th>
                    <th colspan="4">Actions</th>
					<th>Add Shifts</th>
                </tr>
            </thead>
			
            <tbody>
            
				<!--- table loop start -->
                <tr>
                    <td rowspan="4"><input type="checkbox"  id="sund"> &nbsp; Sunday</td>
                    <td rowspan="4"><input type="text" placeholder="Minimum Strength" /></td>
                    <td rowspan="4"><input type="text" placeholder="Maximum Strength" /></td>
                    <td colspan="4"></td>
					<td rowspan="4"><button class="btn btn-success">Add Slot</button></td>
                </tr>
                <tr>
                    <td>
						<select name="" id="">
                                    <option value="1">Slot 1</option>
                                    <option value="1">Slot 2</option>
                                    <option value="1">Slot 3</option>
                                </select>
					</td>
                    <td><input type="text" placeholder="Minimum Strength" /></td>
					<td><input type="text" placeholder="Maximum Strength" /></td>
					<td><button class="btn btn-danger">Del</button></td>
                </tr>
                
				<!--- table loop end -->
				
            </tbody>
			
        </table>
             
            </div>

        </div>
        
	
 </div>

<link href="<c:url value="/resources/css/workforceStyles.css" />" rel="stylesheet">
<script src="<c:url value="resources/js/shifts.js" />"></script>

<%@include file="../include/footer.jsp" %>