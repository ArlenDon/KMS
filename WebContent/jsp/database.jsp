<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="../images/kms_small.ico">
	  <title>基础数据管理</title>
	  
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
				<div class="panel panel-default">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>
						基础数据库
					</div>
					<div class="list-group" id="leftMenu">
						<button type="button" class="list-group-item" id="menu_secret" onclick="leftMenuClick(event, 1, '密级')"> 
						    <span class="glyphicon glyphicon-tag" aria-hidden="true"></span> 密级
						</button> 
						<button type="button" class="list-group-item" id="menu_state" onclick="leftMenuClick(event,1, '用户状态')"> 
						    <span class="glyphicon glyphicon-tag" aria-hidden="true"></span> 用户状态
						</button> 
						<button type="button" class="list-group-item" id="menu_title" onclick="leftMenuClick(event,1, '职称')"> 
						    <span class="glyphicon glyphicon-tag" aria-hidden="true"></span> 职称
						</button> 
						<button type="button" class="list-group-item" id="menu_education" onclick="leftMenuClick(event,1, '学历')"> 
						    <span class="glyphicon glyphicon-tag" aria-hidden="true"></span> 学历
						</button>
					</div>
				</div>
			</div>
           <div class="col-xs-9">
				<div class="row">
				    <div class="col-xs-11">
						<ol class="breadcrumb">
							<li><a href="database.jsp">数据管理</a></li>
							<li class="active" id="leftMenuName">密级</li>
						</ol>
					</div>
				    <div class="col-xs-1">
						<button type="button" class="btn btn-primary" onclick="addData()">添加</button>
					</div>
					
					
				</div>
				<div class="row">
					<table id="databaseTable">
						
					</table>
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
   <script src="../js/database.js" type="text/javascript"></script>
</body>
</html>