<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../include/header.jsp" %>

 <script>

	var slots_teamId = ${teamId}

</script>

<body onload="javascript:slotsData()">
    <!-- <app-new-header></app-new-header>
<br>
<br> -->

 <div class="mainContr">
 
 	 <%@include file="../include/menu.jsp" %>
 	 
 	  <div class="tab-pane fade show active" id="slot" role="tabpanel" aria-labelledby="slot-tab" data-la-initdispnone="true">
            <div class="slotAddBtnCotnr">
                <button class="btn btn-success">Add Skill</button>
            </div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Label</th>
                        <th scope="col">Skills</th>
                        <th scope="col">Proficiency</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody id="slotdata">
                     
                </tbody>
            </table>


        </div>
 	 
</div>

<script src="<c:url value="resources/js/slot.js" />"></script>
<link href="<c:url value="/resources/css/workforceStyles.css" />" rel="stylesheet">
<%@include file="../include/footer.jsp" %>