<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../include/header.jsp" %>

<body>
    <!-- <app-new-header></app-new-header>
<br>
<br> -->

 <div class="mainContr">

	<%@include file="../include/menu.jsp" %>
	
	 <div class="tab-pane fade show active" id="constraints" role="tabpanel" aria-labelledby="constraints-tab"
            data-la-initdispnone="true">
            <div class="container">
                <div class="row col-12">
                    <ul class="cosntraintsMenu nav" id="myTab" role="tablist">
                        <li><a href="#customConst-tab" class="active customConstraints" id="customConst"
                                data-toggle="tab" role="tab" aria-controls="leaves" aria-selected="false">Custom
                                Constraints</a></li>

                        <li><a href="#groupList-tab" class=" ruleGrp" id="groupList" data-toggle="tab" role="tab"
                                aria-controls="avail" aria-selected="false">List Group</a></li>
                    </ul>
                </div>

                <div class="row">
                    <div class="col-12">
                        <div class="tab-pane fade active show" id="customConst-tab" role="tabpanel"
                            aria-labelledby="customConst-tab">
                            <div class="addConst">
                                <button class="btn btn-success" data-toggle="modal" data-target="#constraintsModal">Add
                                    Constraint</button>
                            </div>
                            <div class="modal fade show" id="constraintsModal" tabindex="-1" role="dialog"
                                aria-labelledby="constraintsModal" aria-modal="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="ConstraintModalLabel">Constraints</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">

                                            <div class="ruleLeftContr col-12">
                                                <div class="ruleCotnr">
                                                    <div class="selectRule">
                                                        <label for="selectRule"> Select Rule & Rule Groups : </label>
                                                        <select name="" id="selectRule">
                                                            <option value="female">Female</option>
                                                            <option value="2019">Joined in 2019</option>
                                                            <option value="2018">Joined in 2018</option>
                                                            <option value="2017">Joined in 2017</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="employeeShift">
                                                    <div class="selectShift">
                                                        <label for="selectShift"> Employee Shift Restriction : </label>
                                                        <button class="btn btn-info">I</button>
                                                        <select name="" id="selectShift">
                                                            <option value="a">A</option>
                                                            <option value="b">B</option>
                                                            <option value="c">C</option>
                                                        </select>
                                                        <button class="btn btn-danger">
                                                            <img src="./img/closebtn.png" width="25px" alt=""
                                                                srcset=""></button>
                                                        <div class="addShftBtnContr">
                                                            <button class="btn btn-success">Add</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="ruleRightContr col-12">
                                                <div class="constraintLevel">
                                                    <div class="selectLevel">
                                                        <label for="selectConstr">Select Constraint Level : </label>
                                                        <select name="" id="selectConstr">
                                                            <option value="hard">Hard</option>
                                                            <option value="medium">Medium</option>
                                                            <option value="easy">Easy</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="weight">

                                                    <div class="weightInp">
                                                        <label>Weight : </label>
                                                        <input type="text" class="weightInpu">
                                                    </div>
                                                </div>
                                                <div class="constrSubmitContr">
                                                    <button class="btn btn-success">Save</button>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <table class="table table-striped constraintTable ">
                                <thead>
                                    <tr>
                                        <th scope="col">Constraint</th>
                                        <th scope="col">Type</th>
                                        <th scope="col">Permitted Shifts</th>
                                        <th scope="col">Constraint Level</th>
                                        <th scope="col">Weight</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Female</th>
                                        <td>Rule</th>
                                        <td>A</th>
                                        <td>Medium</th>
                                        <td>12</th>

                                    </tr>
                                    <tr>
                                        <td>Joined in 2019 </th>
                                        <td>Rule Group</th>
                                        <td>C</th>
                                        <td>Soft</th>
                                        <td>82</th>

                                    </tr>
                                    <tr>
                                        <td>Joined in 2018</th>
                                        <td>Rule</th>
                                        <td>A,C</th>
                                        <td>Hard</th>
                                        <td>120</th>

                                    </tr>
                                    <tr>
                                        <td>Joined in 2017</th>
                                        <td>Rule</th>
                                        <td>B,C</th>
                                        <td>Medium</th>
                                        <td>87</th>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="tab-pane fade" id="groupList-tab" role="tabpanel" aria-labelledby="groupList-tab">
                            <div class="ruleGrpBtnContr">
                                <button class="btn btn-success" data-toggle="modal"
                                    data-target="#ruleModal">Rule</button>
                                <button class="btn btn-success" data-toggle="modal" data-target="#ruleGrpModal">Rule
                                    Group</button>
                            </div>
                            <div class="modal fade" id="ruleModal" tabindex="-1" role="dialog"
                                aria-labelledby="ruleModal" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="ConstraintModalLabel">Rule</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="leftRuleContr">
                                                <div class="ruleNameContr">
                                                    <label for="ruleText">Rule :</label>
                                                    <input type="text">
                                                </div>
                                                <div class="emplField">
                                                    <label for="emplField">Employee Details : </label>
                                                    <select name="emplField" id="emplFieldDrop">
                                                        <option value="gender">Gender</option>
                                                        <option value="joinDate">Joining Date</option>
                                                        <option value="exitDate">Exit Date</option>
                                                        <option value="dob">Date Of Birth</option>
                                                    </select>
                                                </div>
                                                <div class="oprField">
                                                    <label for="oprField">Operations : </label>
                                                    <select name="oprField" id="emplOprDrop">
                                                        <option value="equal">=</option>
                                                        <option value="greaterThan">
                                                            &#62; </option>
                                                        <option value="lessThan"> &#60;
                                                        </option>
                                                        <option value="greaterThanEqual"> =&#62; </option>
                                                        <option value="lessThanEqual">
                                                            &#60;= </option>
                                                    </select> </div>
                                            </div>
                                            <div class="rightRuleCotnr">
                                                <div class="ConstrDatePick">
                                                    <label for="startDateContr">Select Date : </label>
                                                    <input type="text" id="startDateContr">
                                                    <span class="constrChkBox">
                                                        <input type="checkbox" id="constrChkBox">
                                                        Use Current Date
                                                    </span>
                                                </div>
                                                <div class="constrDi">
                                                    <label for="difference">Difference : </label>
                                                    <input type="text" class="diffContr">
                                                </div>
                                            </div>
                                            <div class="clearFix"></div>
                                            <div class="ruleSubmitBtnContr">
                                                <button class="btn btn-success">Save</button>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="ruleGrpModal" tabindex="-1" role="dialog"
                                aria-labelledby="ruleGrpModal" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="ConstraintModalLabel">Rules Group</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <div class="ruleGrpInp ruleGrpDivs">
                                                <label for="ruleGrp">Name : </label>
                                                <input type="text" id="ruleGrp">
                                            </div>
                                            <div class="ruleDroDn ruleGrpDivs">
                                                <label for="ruleGrps" class="rulesGrps">Rule & Rule Groups : </label>
                                                <button class="btn btn-info">I</button>
                                                <select name="ruleGrps" id="ruleGrps">
                                                    <option value="rule1">rule 1</option>
                                                    <option value="ruleGroup">Rule Group</option>
                                                    <option value="rule1">rule 1</option>
                                                </select>
                                                <button class="btn btn-danger">
                                                    <img src="./img/closebtn.png" width="25px" alt=""
                                                        srcset=""></button>
                                            </div>
                                            <div class="joinerGrp ruleGrpDivs">
                                                <label for="joinDrpDwn">Use Operator : </label>
                                                <select name="join" id="join">
                                                    <option value="and">and</option>
                                                    <option value="and">or</option>
                                                </select>
                                            </div>
                                            <div class="rulesGrpBtnContr">
                                                <button class="btn btn-success">Save</button>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <table class="table table-striped groupListTable">
                                <thead>
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th scope="col">Type</th>
                                        <th scope="col">Content</th>
                                        <th scope="col">Created On</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Female
                                        </td>
                                        <td>Rule
                                        </td>
                                        <td>Gender is (Female)
                                        </td>
                                        <td>12-06-2018

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Join Date
                                        </td>
                                        <td>Rule Group
                                        </td>
                                        <td>Joined in 2018
                                        </td>
                                        <td>12-06-2018

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Female
                                        </td>
                                        <td>Rule Group
                                        </td>
                                        <td>Gender is (Female)
                                        </td>
                                        <td>12-06-2018

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Female
                                        </td>
                                        <td>Rule
                                        </td>
                                        <td>Gender is (Female)
                                        </td>
                                        <td>12-06-2018

                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>

<link href="<c:url value="/resources/css/workforceStyles.css" />" rel="stylesheet">
<%@include file="../include/footer.jsp" %>