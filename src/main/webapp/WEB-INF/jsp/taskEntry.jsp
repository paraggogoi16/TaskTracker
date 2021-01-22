<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Task Entry Form</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/Datepicker/css/bootstrap-datetimepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css"/>
</head>
<body>





<div class="container-fluid">
	<div class="panel panel-default">
		<div class="panel-heading grievanceHeader"><h3>TASK ENTRY FORM</h3></div>
		<div class="panel-body">
			<form action="saveTask" method="POST" id="taskeEntryForm" >
				<div class="form-group row">
					<label class="col-sm-2 col-form-label">Add issue: </label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="issue" name="issue" placeholder="Add issue" autofocus autocomplete="off" required/>
					</div>
				</div>
				<br>
				
				<div class="form-group row">
					<label class="col-sm-2 col-form-label">Developer: </label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="developer" name="developer" placeholder="Add Developer Name" autofocus autocomplete="off" required/>
					</div>
				 </div>
				 <br>
				
					<div class="form-group row">
					<label class="col-sm-2 col-form-label">Priority: </label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="priority" name="priority" placeholder="Add Priority" autofocus autocomplete="off" required/>
					</div>
				   </div>
				  <br>
					
				
				
				
				
				    <div class="form-group row">
					<label class="col-sm-2 col-form-label">Add Raised Date: </label>
					<div class="col-sm-3">
						<input class="form-control pull-right mandatory datepicker" type="text" id="raisedDate" name="raisedDate" placeholder="Raised Date"  autocomplete="off">
					</div>
					</div>
					
					<div class="form-group row">
					<label class="col-sm-2 col-form-label">Add Completion Date: </label>
					<div class="col-sm-3">
						<input class="form-control pull-right mandatory datepicker" type="text" id="compDate" name="compDate" placeholder="Completion Date"  autocomplete="off">
					</div>
					
					
					
					<div class="col-sm-1"></div>
					
				
				</div>
				<br>
				
				
				
				
				<div class="row">
					<div class="btncenter">
						<button class="btn btn-success" id="btnSave" name="btnSave" type="submit">SUBMIT</button>
						<button class="btn btn-primary" type="reset">RESET</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>



<script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/sweetalert/dist/sweetalert.min.js"></script>
<script src="${pageContext.request.contextPath}/static/Datepicker/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/DataTables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/DataTables/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/DataTables/js/dataTables.responsive.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/DataTables/js/responsive.bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

<script type="text/javascript">

$('#raisedDate').datetimepicker({
	format : 'dd/mm/yyyy',
	orientation : "auto",
	weekStart : 1,
	todayBtn : 1,
	autoclose : 1,
	todayHighlight : 1,
	startView : 2,
	minView : 2,
	keyboardNavigation : 1,
	forceParse : 0
});


$('#compDate').datetimepicker({
	format : 'dd/mm/yyyy',
	orientation : "auto",
	weekStart : 1,
	todayBtn : 1,
	autoclose : 1,
	todayHighlight : 1,
	startView : 2,
	minView : 2,
	keyboardNavigation : 1,
	forceParse : 0
});



</script>
</body>
</html>