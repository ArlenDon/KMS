<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="../images/kms_small.ico">
	  <title>个人空间</title>
	  
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
           <div class="col-xs-2">
               <div class="thumbnail">
                   <img src="../images/head.png" class="img-rounded" style="width:100px">
                   <div class="caption">
                       <p class="text-center">姓名</p>
                       <p class="text-center">等级 <a href="#">进入个人空间</a></p>
                       <div class="btn-group">
							<button type="button"
								class="btn btn-success dropdown-toggle"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<span class="glyphicon glyphicon-upload" aria-hidden="true"></span>
								上传我的文档 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu">
								<li><a href="#">科技报告</a></li>
								<li><a href="standard.jsp">标准文献</a></li>
								<li><a href="#">专利文献</a></li>
								<li><a href="product.jsp">科技成果</a></li>
								<li><a href="#">科技文献</a></li>
							</ul>
						</div>
                       
						<div class="list-group" style="margin-top:10px">   
					       <a class="list-group-item active" data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					           <span class="glyphicon glyphicon-file" aria-hidden="true"></span> 我的文档
					       </a>
					       <div id="collapseOne" class="panel-collapse collapse in">
					           <div class="list-group" style="margin-bottom:0px;">
					               <a href="#" class="list-group-item">&nbsp;&nbsp;&nbsp;&nbsp;我的贡献</a>
					               <a href="#" class="list-group-item">&nbsp;&nbsp;&nbsp;&nbsp;我的收藏</a>
					               <a href="#" class="list-group-item">&nbsp;&nbsp;&nbsp;&nbsp;我的下载</a>
					           </div>
					       </div>					       
					       <a href="#" class="list-group-item"><span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> 我的消息</a>
					       <a href="#" class="list-group-item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> 我的信息</a>
					   </div>
					</div>
               </div>
           </div>
           <div class="col-xs-10">
           </div>
       </div>
   </div>
   <jsp:include page="public/footer.jsp"></jsp:include>
   
   
   <script src="../js/jquery-1.12.4.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
</body>
</html>