<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="../images/kms_small.ico">
	  <title>用户管理</title>
	  
	  <link href="../css/bootstrap.min.css" rel="stylesheet">
	  <link href="../css/bootstrapValidator.min.css" rel="stylesheet">
	  <link href="../css/bootstrap-treeview.min.css" rel="stylesheet">
	  <link href="../css/bootstrap-table.min.css" rel="stylesheet">
	  <link href="../css/toastr.min.css" rel="stylesheet">
	  <link href="../css/style.css" rel="stylesheet">
	 
	  <!--[if lt IE 9]>
      	<script src="js/html5shiv.min.js"></script>
      	<script src="js/respond.min.js"></script>
      <![endif]-->
</head>
<body>
<jsp:include page="public/header.jsp"></jsp:include>
   <div class="container">
       <div class="row">
           <div class="col-xs-3">
               
               <div id="treeview">
                   
				</div>
           </div>
           <div class="col-xs-9">
				<div class="row">
					<ol class="breadcrumb">
						<li><a href="users.jsp">用户管理</a></li>
						<li class="active">用户列表</li>
					</ol>
				</div>
				<div class="row">
					<div id="toolbar" class="btn-group">
						<button id="btn_add" type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新增
						</button>
						<button id="btn_edit" type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 修改
						</button>
						<button id="btn_delete" type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-remove" aria-hidden="true"></span> 删除
						</button>
					</div>
					<table id="usersTable">
						
					</table>
				</div>
			</div>
       </div>
   </div>


	<div class="modal fade" id="deptAddModal" tabindex="-1" role="dialog"
		aria-labelledby="deptAddModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">添加部门</h4>
				</div>
				<div class="modal-body">
					<form id="deptAddForm">						
						<div class="form-group">
							<label for="message-text" class="control-label">部门名称:</label>
							<input type="text" class="form-control" id="deptAddName" name="deptAddName" maxlength="30" required>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="validateDeptAddBtn">保存</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="deptEditModal" tabindex="-1" role="dialog"
		aria-labelledby="deptEditModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">编辑部门</h4>
				</div>
				<div class="modal-body">
					<form id="deptEditForm">						
						<div class="form-group">
							<label for="message-text" class="control-label">部门名称:</label>
							<input type="text" class="form-control" id="deptEditName" name="deptEditName" maxlength="30" required>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" id="validateDeptEditBtn">保存</button>
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="public/footer.jsp"></jsp:include>
   
   
   <script src="../js/jquery-1.12.4.min.js" type="text/javascript"></script>
   <script src="../js/colResizable-1.5.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap.min.js" type="text/javascript"></script>
   <script src="../js/bootstrapValidator.min.js"></script>
   <script src="../js/bootstrap-treeview.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
   <script src="../js/BootstrapMenu.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap-table.min.js" type="text/javascript"></script>
   <script src="../js/language/bootstrap-table-zh-CN.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap-table-resizable.min.js" type="text/javascript"></script>
   <script src="../js/toastr.min.js" type="text/javascript"></script>
   <script src="../js/util.js" type="text/javascript"></script>
   <script src="../js/users.js" type="text/javascript"></script>
</body>
</html>