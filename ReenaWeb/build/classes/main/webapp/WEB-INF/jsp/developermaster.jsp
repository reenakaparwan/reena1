<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.hck.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@taglib uri="http://displaytag.sf.net" prefix="display"%> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="../css/FormStyle.css" rel="stylesheet" type="text/css"  />
<link href="../css/calendar.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js" ></script>

<script type="text/javascript" src="../js/calendar.js"></script>
<script type="text/javascript" src="../js/validation.js"></script>

<script type="text/javascript">
$(document).ready(function(){
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
<script type="text/javascript">
$(function() {
	$( "#datepicker" ).datepicker({ dateFormat: 'yy-mm-dd' });
	$( "#datepicker1" ).datepicker({ dateFormat: 'yy-mm-dd' });
	$( "#datepicker2" ).datepicker({ dateFormat: 'yy-mm-dd' });
	$( "#datepicker3" ).datepicker({ dateFormat: 'yy-mm-dd' });
	$( "#datepicker4" ).datepicker({ dateFormat: 'yy-mm-dd' });
	$( "#datepicker5" ).datepicker({ dateFormat: 'yy-mm-dd' });
	$( "#datepicker6" ).datepicker({ dateFormat: 'yy-mm-dd' });	
});
</script>

</head>
<body>
<div id="container">
  <div id="tabs" >
    <ul>
      <li><a href="#tab-1">Developer</a></li>
      <li><a href="#tab-2">Reviewer</a></li>
      <li><a href="#tab-3">QA</a></li>      
    </ul>
    
    
     <form:form method="POST" action="add.htm"  commandName="developermasterForm" name="developermasterForm" >
    
    	<div id="tab-1" class="menu" >						
    	<fieldset class="fieldset">
		    	<div class="text_label">Ticket No:</div><form:input path="ticketNo" class="text"  name="txtTicketNo"  />
		    	<div class="text_label">Description:</div><form:input path="description" class="text"   name="txtDescription" /><br></br>
		    	<div class="text_label">Resolution Time:</div>  <form:input path="resolutionTime" class="text"   name="txtResolutionTime"   />
		    	<div class="text_label">Resolution summary:</div>  <form:input path="resolutionSummary" class="text"   name="txtResolutionsummary"   /><br></br>     	
		    	<div class="text_label">Dev Start Date:</div>  <form:input path="devStartDate" id="datepicker" class="text"   name="txtDevStartDate"   />
		    	<div class="text_label">Planned Date:</div>  <form:input path="plannedDate" id="datepicker1" class="text"   name="txtPlannedDate"   /><br></br>
		    	<div class="text_label">Dev End Date:</div>  <form:input path="devEndDate" id="datepicker2" class="text"   name="txtDevEndDate"   />
		    	<div class="text_label">Staging Date:</div>  <form:input path="stagingDate" id="datepicker3" class="text"   name="txtStagingDate"   /><br></br>
		    	<div class="text_label">Status:</div>  <form:input path="status" class="text"   name="txtStatus"   /><br></br>
		    	
		    	<div class="btn_middle"><input type="submit" onclick="" value="" class="submit" name="btnDeveloper"></input>
		    							<input type="button" onclick="enableText()" value=""  name="btnEdit" class="btn_edit"></input>
		    							<input type="button" onclick="disableText()" value=""  name="btnUpdate" class="btn_update"></input>
		    	</div>
	    		</fieldset>	                     
    	</div>
    	
    	<div id="tab-2" class="menu">						
		    	<fieldset class="fieldset">
		    	<div class="text_label">Status:</div>  <form:input path="" class="text"   name="txtStatusReviewer"   re/>
		    	<div class="text_label">Reviewed By:</div><form:input path="reviewedBy" class="text"   name="txtReviewedBy" /><br></br>
		    	<div class="text_label">Reviewed On:</div>  <form:input path="reviewedOn" class="text"   name="txtReviewedOn"   />
		    	<div class="text_label">Review Comments:</div>  <form:input path="reviewComments" class="text"   name="txtReviewComments"   /><br></br>      	
		    	<div class="text_label">Verified Checklist:</div>  <form:input path="verifiedChecklist" class="text"   name="txtVerifiedChecklist"   />
		    	<div class="text_label">Unit Testing:</div>  <form:input path="unitTesting" class="text"   name="txtUnitTesting"   /><br></br>
		    	<div class="text_label">Any Teamsite changes:</div>  <form:input path="anyTeamsitechanges" class="text"   name="txtAnyTeamsitechanges"   />
		    	<div class="text_label">Any Library code changes:</div>  <form:input path="anyLibrarycodechanges" class="text"   name="txtAnyLibrarycodechanges"   /><br></br>    	
		    	<div class="text_label">Impact of Changes:</div>  <form:input path="impactofChanges" class="text"   name="txtImpactofChanges"   /><br></br>
		    	
		    	<div class="btn_middle"><input type="submit" value="" class="submit" name="btnReviewer"></input></div>
		    	</fieldset>      
    	</div>
    	
    	<div id="tab-3" class="menu">						
		    	<fieldset class="fieldset">
		    	<div class="text_label">QA Instructions:</div><form:input path="QAInstructions" class="text"  name="txtQAInstructions"  />
		    	<div class="text_label">Tested By:</div><form:input path="testedBy" class="text"   name="txtTestedBy" /><br></br>
		    	<div class="text_label">QA Start Date:</div>  <form:input path="QAStartDate" class="text" id="datepicker4"  name="txtQAStartDate"   />
		    	<div class="text_label">QA End Date:</div>  <form:input path="QAEndDate" class="text" id="datepicker5"  name="txtQAEndDate"   /><br></br>    	
		    	<div class="text_label">QA Issues found:</div>  <form:input path="QAIssuesfound" class="text"   name="txtQAIssuesfound"   />
		    	<div class="text_label">QA Comments:</div>  <form:input path="QAComments" class="text"   name="txtQAComments"   /><br></br>
		    	<div class="text_label">Reopened:</div>  <form:input path="reopened" class="text"   name="txtReopened"   />
		    	<div class="text_label">Reopened Tested Date:</div>  <form:input path="reopenedTestedDate" class="text" id="datepicker6"  name="txtReopenedTestedDate"   /><br></br>
		    	<div class="text_label">Reopened Testing Comments:</div>  <form:input path="reopenedTestingComments" class="text"   name="txtReopenedTestingComments"   /><br></br>
		    	
		    	<div class="btn_middle"><input type="submit" value="" class="submit" name="btnQA"></input></div>    	
		    	</fieldset>	 
    	</div>
    </form:form>	
  </div>
</div>
</body>
</html>
