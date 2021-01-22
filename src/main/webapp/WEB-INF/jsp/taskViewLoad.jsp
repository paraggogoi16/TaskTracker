<!DOCTYPE html>

<html>
<%@include file="header.jsp"%>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">
		<%@include file="mainheader.jsp"%>
		<%@include file="sidebar.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Main content -->
			<section class="content container-fluid">
				<jsp:include page="taskList.jsp"></jsp:include>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<%@include file="mainfooter.jsp"%>
		<!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>