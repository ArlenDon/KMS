<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="../images/kms_small.ico">
	  <title>知识管理系统-知识库</title>
	  
	  <link href="../css/bootstrap.min.css" rel="stylesheet">
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
                       <span class="glyphicon glyphicon-flag" aria-hidden="true"></span> 技术体系
                   </div>
					<div class="list-group"> 
						<a href="#" class="list-group-item">
						    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 新闻2 
						    <span class="badge">2</span>
						</a> 
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新闻3 <span class="badge">2</span></a> 
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新闻4 <span class="badge">2</span></a> 
						<a href="#" class="list-group-item"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 新闻5 <span class="badge">2</span></a>						
					</div>
				</div>
           </div>
           <div class="col-xs-9">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       <span class="glyphicon glyphicon-flag" aria-hidden="true"></span> 技术体系
                   </div>
					<div class="list-group">
						<a href="#" class="list-group-item"> 新闻1 <span class="pull-right">2018-01-06</span></a> 
						<a href="#" class="list-group-item"> 新闻2 <span class="pull-right">2018-01-06</span></a> 
						<a href="#" class="list-group-item"> 新闻3 <span class="pull-right">2018-01-06</span></a> 
						<a href="#" class="list-group-item"> 新闻4 <span class="pull-right">2018-01-06</span></a> 
						<a href="#" class="list-group-item"> 新闻5 <span class="pull-right">2018-01-06</span></a>						
					</div>
				</div>
           </div>
       </div>
   </div>
   <jsp:include page="public/footer.jsp"></jsp:include>
   
   
   <script src="../js/jquery-1.12.4.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
</body>
</html>