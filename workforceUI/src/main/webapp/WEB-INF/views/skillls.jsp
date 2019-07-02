<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<%@include file="../include/header.jsp" %>
<script>

	var skill_teamId = ${teamId}

</script>
<body onload="javascript:skillsData()">
    <!-- <app-new-header></app-new-header>
<br>
<br> -->

 <div class="mainContr">

	 <%@include file="../include/menu.jsp" %>
	 
	 

</div>

<script src="<c:url value="resources/js/skill.js" />"></script>
<link href="<c:url value="/resources/css/workforceStyles.css" />" rel="stylesheet">

<%@include file="../include/footer.jsp" %>