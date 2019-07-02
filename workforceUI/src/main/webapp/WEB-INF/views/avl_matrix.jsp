<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../include/header.jsp" %>

<body>
    <!-- <app-new-header></app-new-header>
<br>
<br> -->


<div class="mainContr">

<%@include file="../include/menu.jsp" %>
       
       <div class="tab-pane fade show active" id="avail" role="tabpanel" aria-labelledby="avail-tab">
            <div class="aside">
                <div class="dateRange">
                    <h3>Date Range Picker</h3>
                    <input type="text" placeholder="From Date" class="form-control fromDate">
                    <input type="text" placeholder="To Date" class="form-control toDate">
                    <button class="btn btn-primary leaveBtn"> GO </button>
                </div>
                <div class="colorIndex">
                    <h3>Color Index</h3>
                    <ul>
                        <li><span class="availSpan"></span>Availability</li>
                        <li><span class="prefSpan"></span>Preferences</li>
                        <li><span class="teamSpan"></span>Team Restrictions</li>
                        <li><span class="leaveSpan"></span>Leaves</li>
                        <li><span class="holidaySpan"></span>Holiday</li>
                    </ul>
                </div>
                <div class="shiftsAside">
                    <h3><span class="stIcon"></span>Shifts</h3>
                    <ul>
                        <li><span></span> A - 03:00Pm - 11:00Pm</li>
                        <li><span></span>B - 10:00Pm - 07:00Am</li>
                        <li><span></span>C - 10:00Am - 07:00Pm</li>
                        <li><span></span>WO - Week Off</li>
                        <li><span></span>L - Leave</li>
                    </ul>
                </div>
            </div>

            <div class="mainavailContent">
                <ul class="availContentMenu nav" id="myTab" role="tablist">
                    <li><a href="#" class=" allFilter" id="allFilter-tab" data-toggle="tab" href="#allFilter" role="tab"
                            aria-controls="allFilter" aria-selected="true">All</a></li>
                    <li><a href="#leavesFilter-tab" class=" leavesFilter active" id="leavesFilter" data-toggle="tab"
                            href="#leaves" role="tab" aria-controls="leaves" aria-selected="false">Leaves</a></li>
                    <li><a href="#availa-tab" class="availFilter " id="avail" data-toggle="tab" href="#avail" role="tab"
                            aria-controls="avail" aria-selected="false">Availability</a></li>
                    <li><a href="#pref-tab" class=" preferFilter" id="pref" data-toggle="tab" href="#pref" role="tab"
                            aria-controls="avail" aria-selected="false">Preferences</a></li>
                    <li><a href="#team-tab" class=" teamFilter" id="team" data-toggle="tab" href="#team" role="tab"
                            aria-controls="team" aria-selected="false">Team Restrictions</a></li>
                </ul>
                <div class="tab-content" id="myTabContent">

                    <div class="leaveBtnCont tab-pane fade show active" id="leavesFilter-tab" role="tabpanel"
                        aria-labelledby="home-tab">
                        <button class="btn btn-primary leaveBtn" type="button">Leave Request</button>
                    </div>
                    <div class="availTabCont tab-pane fade show" id="availa-tab" role="tabpanel"
                        aria-labelledby="home-tab">
                        <button class="btn btn-primary leaveBtn" type="button" data-toggle="modal"
                            data-target="#availReqModal">Availability Request</button>
                    </div>
                    <div class="prefTabCont tab-pane fade show" id="pref-tab" role="tabpanel"
                        aria-labelledby="home-tab">
                        <button class="btn btn-primary leaveBtn" type="button">Preference Request</button>
                    </div>
                    <div class="teamTabCont tab-pane fade show" id="team-tab" role="tabpanel"
                        aria-labelledby="home-tab">
                        <button class="btn btn-primary leaveBtn" type="button">Team Request</button>
                    </div>
                </div>

                <div class="modal fade" id="availReqModal" tabindex="-1" role="dialog" aria-labelledby="availLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="availModalLabel">Availability Request List</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>

                            </div>



                            <div class="modal-body tabbable-panel">
                                <div class="tabbable-line">
                                    <ul class="availRequestTab nav nav-tabs" id="myTab" role="tablist">
                                        <li><a href="#" class="pending" id="pending-tab" data-toggle="tab" role="tab"
                                                aria-controls="allFilter" aria-selected="true">Pending</a>
                                        </li>
                                        <li><a href="#approved-tab" class="approved" id="approved-tab" data-toggle="tab"
                                                role="tab" aria-controls="leaves" aria-selected="false">Approved</a>
                                        </li>
                                        <li><a href="#reject-tab" class="reject" id="reject-tab" data-toggle="tab"
                                                role="tab" aria-controls="avail" aria-selected="true">Reject</a></li>

                                    </ul>
                                </div>
                                <table id="availReq" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Employee Name</th>
                                            <th>Requested from - Requested To</th>
                                            <th>Shifts</th>
                                            <th>Reason</th>
                                            <th>Request date</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Rahul</td>
                                            <td>12-03-2019 to 18-03-2019</td>
                                            <td>A</td>
                                            <td>Personal</td>
                                            <td>22-02-2019</td>
                                            <td>
                                                <button class="btn btn-success">Accept</button>
                                                <button class="btn btn-danger">Decline</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Ajith</td>
                                            <td>02-05-2019 to 01-04-2019</td>
                                            <td>B</td>
                                            <td>Sick</td>
                                            <td>10-02-2019</td>
                                            <td>
                                                <button class="btn btn-success">Accept</button>
                                                <button class="btn btn-danger">Decline</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Prajay</td>
                                            <td>02-05-2019 to 01-04-2019</td>
                                            <td>C</td>
                                            <td>Personal</td>
                                            <td>12-08-2019</td>
                                            <td>
                                                <button class="btn btn-success">Accept</button>
                                                <button class="btn btn-danger">Decline</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td> Kelly</td>
                                            <td>02-05-2019 to 01-04-2019</td>
                                            <td>C</td>
                                            <td>Personal</td>
                                            <td>22-08-2019</td>
                                            <td>
                                                <button class="btn btn-success">Accept</button>
                                                <button class="btn btn-danger">Decline</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Airi </td>
                                            <td>02-05-2019 to 01-04-2019</td>
                                            <td>A</td>
                                            <td>Personal</td>
                                            <td>05-01-2019</td>
                                            <td>
                                                <button class="btn btn-success">Accept</button>
                                                <button class="btn btn-danger">Decline</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Williamson</td>
                                            <td>02-05-2019 to 01-04-2019</td>
                                            <td>B</td>
                                            <td>Personal</td>
                                            <td>10-06-2019</td>
                                            <td>
                                                <button class="btn btn-success">Accept</button>
                                                <button class="btn btn-danger">Decline</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="modal fade" id="availModal" tabindex="-1" role="dialog" aria-labelledby="availLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="availModalLabel">Availability Request</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="availDatePicker">
                                    <div class="inputDate">
                                        <h4>Select your Availability dates</h4>
                                        <input type="text" placeholder="Date Range picker"
                                            class="form-control inputDate">
                                    </div>
                                    <div class="shiftAvail">
                                        <h4>Shift Availability List:</h4>
                                        <div class="shiftBlock">
                                            <div class="shiftRow">
                                                <label>Shift</label><select placeholder="Select">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>C</option>
                                                </select>

                                                <button class="btn btn-danger">Delete</button>
                                            </div>

                                            <div class="shiftRow">
                                                <label>Shift</label><select placeholder="Select">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>C</option>
                                                </select>

                                                <button class="btn btn-danger">Delete</button>
                                            </div>

                                            <div class="shiftRow">
                                                <label>Shift</label><select placeholder="Select">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>C</option>
                                                </select>

                                                <button class="btn btn-danger">Delete</button>
                                            </div>

                                            <div class="AddShiftBtn">
                                                <button class="btn btn-info">Add</button>
                                            </div>
                                        </div>
                                    </div>
                                    <h4>Reason:</h4>

                                    <div class="availReason">
                                        <textarea name="availInp" id="availReasonInp" cols="30" rows="3">

                                    </textarea>

                                        <button class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="modal fade" id="leaveReqModal" tabindex="-1" role="dialog"
                    aria-labelledby="leaveReqModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="leaveReqModalLabel">Leave Request</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="leaveDatePicker">
                                    <div class="inputDate">
                                        <h4>Select your leave dates:</h4>
                                        <input type="text" placeholder="From Date" class="form-control fromDate">
                                        <input type="text" placeholder="To Date" class="form-control toDate">
                                    </div>
                                    <div class="leaveReason">
                                        <h4>Leave Reason: </h4>
                                        <textarea name="leaveReasonInp" id="leaveReasonInp" cols="30" rows="5">

                                        </textarea>

                                        <button class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="modal fade" id="manPrefModal" tabindex="-1" role="dialog" aria-labelledby="prefLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="availModalLabel">Preferences</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="availDatePicker">
                                    <div class="inputDate">
                                        <h3>From Date:
                                            <span class="manFromDate">12-06-2019 - </span>
                                            To Date:
                                            <span class="manToDate">18-06-2019</span>
                                        </h3>
                                        <!-- <input id="manPrefStartDate" class="fromDate" placeholder="From Date" /> -->
                                        <!-- <input id="manPrefEndDate" class="toDate" placeholder="To Date" /> -->
                                    </div>
                                    <div class="shiftAvail">
                                        <h4>Shifts Preferences :</h4>
                                        <div class="shiftBlock">

                                            <div class="shiftOrder">
                                                <table class="table shiftOrderTable">
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">Shift</th>
                                                            <th scope="col">Preference Order</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <span>A</span>
                                                            </td>
                                                            <td>
                                                                1
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>C</td>
                                                            <td>
                                                                3
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>A</td>
                                                            <td>
                                                                2
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shiftPrefSave">
                                        <h3 class="createdOn">Created On:
                                            <span class="createdOnDate">
                                                12-06-2019
                                            </span>
                                        </h3>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="modal fade" id="prefModal" tabindex="-1" role="dialog" aria-labelledby="prefLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="availModalLabel">Preferences</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="availDatePicker">
                                    <div class="inputDate">
                                        <h4>Select your Prefered dates</h4>
                                        <input type="text" placeholder="Date Range picker"
                                            class="form-control inputDate">
                                    </div>
                                    <div class="shiftAvail">
                                        <h4>Prefered Shifts:</h4>
                                        <div class="shiftBlock">
                                            <div class="shiftRow">
                                                <label>Shift</label><select placeholder="Select">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>C</option>
                                                </select>

                                                <button class="btn btn-danger">Delete</button>
                                            </div>

                                            <div class="shiftRow">
                                                <label>Shift</label><select placeholder="Select">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>C</option>
                                                </select>

                                                <button class="btn btn-danger">Delete</button>
                                            </div>
                                            <div class="shiftRow">
                                                <label>Shift</label><select placeholder="Select">
                                                    <option>A</option>
                                                    <option>B</option>
                                                    <option>C</option>
                                                </select>

                                                <button class="btn btn-danger">Delete</button>
                                            </div>
                                            <div class="AddShiftBtn">
                                                <button class="btn btn-info">Add</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shiftPrefSave">
                                        <button class="btn btn-primary">Save</button>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="availContent">
                    <div class="emplList">
                        <h3>Employee Name</h3>
                        <ul>
                            <li><a href="#">Ajay</a></li>
                            <li><a href="#">Sujith</a></li>
                            <li><a href="#">Rahul</a></li>
                            <li><a href="#">Jacki</a></li>
                            <li><a href="#">Komal</a></li>
                        </ul>
                    </div>
                    <table class="table table-info1">
                        <thead>
                            <tr>
                                <th scope="col">Employee Name</th>
                                <th scope="col">10-July</th>
                                <th scope="col">11-July</th>
                                <th scope="col">12-July</th>
                                <th scope="col">13-July</th>
                                <th scope="col">14-July</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">Ajay</th>
                                <td>

                                    <span class="teamSpan" data-toggle="modal" data-target="#teamModal">C</span>
                                </td>
                                <td class="leaveSpan" data-toggle="modal" data-target="#leaveReqModal">
                                    <span></span>
                                </td>
                                <td>
                                    <span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">A,B,C</span>
                                </td>
                                <td> <span class="availSpan" data-toggle="modal" data-target="#availModal">C</span>
                                </td>
                                <td> <span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">A</span>
                                </td>

                            </tr>
                            <tr>
                                <th scope="row">Rahul</th>
                                <td><span class="availSpan" data-toggle="modal" data-target="#availModal">A</span></td>
                                            <td class="holidaySpan"><span></span></td>
                                <td><span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">B,C</span>
                                </td>
                                <td><span class="availSpan" data-toggle="modal" data-target="#availModal">A</span></td>
                                <td><span class="teamSpan">C</span></td>
                            </tr>
                            <tr>
                                <th scope="row">Sanjay</th>
                                <td class="leaveSpan" data-toggle="modal" data-target="#leaveReqModal"><span></span>
                                </td>
                                <td><span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">C</span></td>
                                <td><span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">A</span></td>
                                <td><span class="teamSpan">B</span>
                                    <span class="availSpan" data-toggle="modal" data-target="#availModal">A</span>
                                    <span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">C</span>
                                </td>
                                <td class=""><span></span></td>
                            </tr>
                            <tr>
                                <th scope="row">Nikhil</th>
                                <td><span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">A</span></td>
                                <td><span class="teamSpan">C</span>
                                    <span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">A</span>
                                    <span class="availSpan" data-toggle="modal" data-target="#availModal">A,C</span>
                                </td>
                                <td class=""><span></span></td>
                                <td><span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">C,A</span>
                                </td>

                                <td class="leaveSpan" data-toggle="modal" data-target="#leaveReqModal"><span
                                        class="prefSpan" data-toggle="modal" data-target="#manPrefModal">C</span></td>
                            </tr>
                            <tr>
                                <th scope="row">Anil</th>
                                <td><span class="teamSpan">C</span>
                                    <span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">B</span>
                                    <span class="availSpan" data-toggle="modal" data-target="#availModal">A</span>
                                </td>
                                <td><span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">A</span></td>
                                <td><span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">C</span></td>
                                <td class=""><span></span></td>

                                <td class="leaveSpan" data-toggle="modal" data-target="#leaveReqModal"><span>
                                        <span class="availSpan" data-toggle="modal" data-target="#availModal">B,C</span>
                                        <span class="teamSpan">A</span>
                                        <span class="prefSpan" data-toggle="modal" data-target="#manPrefModal">C</span>
                                    </span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
       
</div>

<link href="<c:url value="/resources/css/workforceStyles.css" />" rel="stylesheet">
<%@include file="../include/footer.jsp" %>