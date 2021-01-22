<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Task List</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css"/>
<body>

<div class="container-fluid">





	<div class="panel panel-success">
		<div class="panel-heading"><h3>ASSIGNED TASK LIST</h3></div>
		<div class="panel-body">
			<table id="taskview" class="table table-striped table-bordered table-condensed dt-responsive" width="100%" cellspacing="0" >
			  <thead>
			  	<tr>
			  		<th>S.No</th>
			  		<th>Issue</th>
				    <th>Developer Name</th>
				    <th>Priority</th>
				    <th>Raised Date</th>
				    <th>Completion Date</th>
				    
				  
				        
				</tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="TL" items="${tasklist}">
			  		<tr>
			  			<td>${TL.id}</td>
			  			<td>${TL.issue}</td>
			  			<td>${TL.developer}</td>
			  			<td>${TL.priority}</td>
			  			<td>${TL.raised_Date}</td>
			  			<td>${TL.completion_date}</td>
			  		    
			  		    <td>
				  		<button class="btn btn-success btnSelect btnCenter" id="taskid" onclick="deleteTask()">Delete</button>
				  		</td>
			  		</tr>
			  	</c:forEach>
			  </tbody>
			</table>
		</div>
	</div>
	
	                         <form>
	                         <input type ="text" value=>
	                         
					  		<button class="btn btn-success btnSelect btnCenter" id="taskid" onclick="deleteTask()">Delete</button>
	                         </form>
	
</div>




<script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/DataTables/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/DataTables/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/DataTables/js/dataTables.responsive.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/DataTables/js/responsive.bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>

<script type="text/javascript">



$('#taskview').DataTable({
	"sDom" : 'T<"clear">lfrtip',
	"aLengthMenu": [[ 10, 25,100,-1], [10,25,100,"All"]],
	"bJQueryUI":true
});





 $("#taskview").on('click','#taskid',function(){
	var currentRow=$(this).closest("tr"); 
	
	var taskid=currentRow.find("td:eq(0)").text();
    
	var url = "deletetask";
	var formData = {
			'taskid' : taskid
		};
	
	alert("hello");
	$.ajax({
		type : 'POST',
		url : url,
		data : formData,
		dataType : "json",
		success : function(data){
			 if(data.success==true)
				{
				location.reload();
				} 
		}
	});
  
}); 



/* function deleteTask(){
var currentRow=$(this).closest("tr"); 
	
	var taskid=currentRow.find("td:eq(0)").text();
    
	var url = "deletetask";
	var formData = {
			'taskid' : taskid
		};
	
	alert(taskid);
	$.ajax({
		type : 'POST',
		url : url,
		data : formData,
		dataType : "json",
		success : function(data){
			 if(data.success==true)
				{
				location.reload();
				} 
		}
	});
}
 */





</script>



</body>
</html>