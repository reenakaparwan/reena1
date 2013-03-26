<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://displaytag.sf.net" prefix="display"%> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/QnA/css/FormStyle.css" rel="stylesheet" type="text/css"  />
<link href="/QnA/css/calendar.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js" ></script>

<script type="text/javascript" src="/QnA/js/validation.js"></script>

<script type="text/javascript">
$(document).ready(function(){
$('input[disabled]').css('color','red');
$('#tabs div.menu').hide();
$('#tabs div.menu:first').show();
$('#tabs ul li:first').addClass('active');
$('#tabs ul li a').click(function(){ 
$('#tabs ul li').removeClass('active');
$(this).parent().addClass('active'); 
var currentTab = $(this).attr('href'); 
$('#tabs div.menu').hide();
$(currentTab).show();
return false;
});
});
</script>

<title>Insert title here</title>

</head>

<body>
<div id="container">
  <div id="tabs" >
    <ul>
      <li><a href="#tab-1">Developer</a></li>
      <li><a href="#tab-2">Reviewer</a></li>
      <li><a href="#tab-3">QA</a></li>      
    </ul>
   <div id="tab-1" class="menu" >						
    
				<fieldset class="fieldset">
				  <legend>Developer Form:</legend>
				  	<form:form method="POST" action="addDeveloper.htm"  commandName="developermasterForm" name="developermasterForm" methodParam="developer">
				  
				  			 	<c:set var="reviewerName" value="txtStatusReviewer"/>
				  			 	<c:set var="testedByName" value="txtTestedBy"/>
				  			 	<c:set var="currentLoginName" value="${developermasterForm.asignee}" />
				  			 	<c:set var="loginname"><%=SecurityContextHolder.getContext().getAuthentication().getName()%></c:set>
				  			 	<c:set var="isDeveloper" value="${currentLoginName == loginname}"></c:set>
				  			 	<c:set var="isReviewer" value="${reviewerName == loginname}"></c:set>
	
			    	<label for="name">Description No</label> <form:input path="description"    name="txtDescription"  disabled="${isDeveloper}"/><br><br>
			    	<label for="name">Resolution Time:</label>  <form:input path="resolutionTime"    name="txtResolutionTime"   /><br><br>
			    	<label for="name">Resolution summary:</label>  <form:input path="resolutionSummary"    name="txtResolutionsummary"   /><br>     	<br>
			    	<label for="name">Dev Start Date:</label>  <form:input path="devStartDate" id="datepicker"    name="txtDevStartDate"   /><br><br>
			    	<label for="name">Planned Date:</label>  <form:input path="plannedDate" id="datepicker1"    name="txtPlannedDate"   /><br><br>
			    	<label for="name">Dev End Date:</label>  <form:input path="devEndDate" id="datepicker2"    name="txtDevEndDate"   /><br><br>
			    	<label for="name">Staging Date:</label>  <form:input path="stagingDate" id="datepicker3"    name="txtStagingDate"   /><br><br>
			    	<label for="name">Status:</label> <form:input path="status" name="txtStatus"   /><br><br>
			    	
			    	<input type="hidden" value="<%=request.getServletContext().getAttribute("roleName") %>"  name="roleName"/>
			    	<label for="name"><input type="submit" value="Submit" class="submit" ></input> </label>
			
			
			</form:form>
    		</fieldset>	 
    </div>
        <div id="tab-2" class="menu" >						
			    <fieldset class="fieldset">
			    <sec:authorize ifAllGranted="ROLE_ADMIN,ROLE_USER,ROLE_QA">
			 	<c:set var="reviewer" value="true"> </c:set>
			    </sec:authorize>
				  	<legend>Review Form:</legend>
						  	<form:form method="POST" action="addReview.htm"  commandName="developermasterForm" name="developermasterForm" methodParam="review">
						  	
						  <label for="name">	Status:</label>  <form:input path=""    name="txtStatusReviewer"   readonly="${isReviewer}"/><br>
					    	<label for="name">Reviewed By:</label> <form:input path="reviewedBy"    name="txtReviewedBy" title="Reviewed" alt="Reviewed By"/><br>
					    	<label for="name">Reviewed On:</label>  <form:input path="reviewedOn"    name="txtReviewedOn"   /><br>
					    	<label for="name">Review Comments:</label>  <form:input path="reviewComments"    name="txtReviewComments"   /><br>      	
					    	<label for="name">Verified Checklist:</label>  <form:input path="verifiedChecklist"    name="txtVerifiedChecklist"   /><br>
					    	<label for="name">Unit Testing:</label>  <form:input path="unitTesting"    name="txtUnitTesting"   /><br>
					    	<label for="name">Any Teamsite changes:</label>  <form:input path="anyTeamsitechanges"    name="txtAnyTeamsitechanges"   /><br>
					    	<label for="name">Any Library code changes:</label>  <form:input path="anyLibrarycodechanges"    name="txtAnyLibrarycodechanges"   /><br>    	
					    	<label for="name">Impact of Changes:</label>  <form:input path="impactofChanges"    name="txtImpactofChanges"   /><br>
							<label for="name"><input type="submit"  value="Submit" class="submit" ></input></label>
					    	</form:form>    	
				  </fieldset>
	  </div>
	  
	   <div id="tab-3" class="menu" >						
			  <fieldset class="fieldset">
			  	<legend>QA Form:</legend>
			  		 <sec:authorize ifAllGranted="ROLE_QA" var="role" >
					  	<form:form method="POST" action="addQA.htm"  commandName="developermasterForm" name="developermasterForm" methodParam="qa">
					  	<label for="name">QA Instructions:</label> <form:input path="QAInstructions"   name="txtQAInstructions"  /><br>
				    	<label for="name">Tested By:</label> <form:input path="testedBy"    name="txtTestedBy" /><br>
				    	<label for="name">QA Start Date:</label>  <form:input path="QAStartDate"  id="datepicker4"  name="txtQAStartDate"   /><br>
				    	<label for="name">QA End Date:</label>  <form:input path="QAEndDate"  id="datepicker5"  name="txtQAEndDate"   /><br>    	
				    	<label for="name">QA Issues found:</label>  <form:input path="QAIssuesfound"    name="txtQAIssuesfound"   /><br>
				    	<label for="name">QA Comments:</label>  <form:input path="QAComments"    name="txtQAComments"   /><br>
				    	<label for="name">Reopened:</label>  <form:input path="reopened"    name="txtReopened"   /><br>
				    	<label for="name">Reopened Tested Date:</label>  <form:input path="reopenedTestedDate"  id="datepicker6"  name="txtReopenedTestedDate"   /><br>
				    	<label for="name">Reopened Testing Comments:</label>  <form:input path="reopenedTestingComments"    name="txtReopenedTestingComments"   /><br>
				    	<label for="name"><input type="submit" onclick="" value="Submit" class="submit" ></input></label>
				    	</form:form>
				    	
				    </sec:authorize>
					<c:if test="${not role}">You are not QA</c:if>
			  </fieldset>
    	</div>
    	
    </div>
    </div>
    	

</body>

</html>