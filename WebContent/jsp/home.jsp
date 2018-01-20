<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="../images/kms_small.ico">
	  <title>知识管理系统-知识门户</title>
	  
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
           <div class="col-xs-4" style="padding:0px;">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active">
						    <a href="#"> 
					            <img src="../images/background.jpg" alt="First">
						    </a>							
							<div class="carousel-caption">First Slider</div>
						</div>
						<div class="item">
							<img src="../images/background.jpg" alt="Second">
							<div class="carousel-caption">Second Slider</div>
						</div>
						<div class="item">
							<img src="../images/background.jpg" alt="Third">
							<div class="carousel-caption">Third Slider</div>
						</div>
					</div>

					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
					    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> 
					<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> 
					    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
           <div class="col-xs-6">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       <span class="glyphicon glyphicon-bullhorn" aria-hidden="true"></span> 知识头条
                       <a href="#" class="pull-right">更多</a>
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
           <div class="col-xs-2">
               <div class="media">
                   <div class="media-left">
                       <img src="../images/head.png" class="img-circle" style="width:80px">
                   </div>
                   <div class="media-body">
                       <p>姓名，部门</p>
                       <p>职称：工程师</p>
                       <p>总积分：12568</p>
                   </div>
               </div>
               <div class="row" style="margin-top:15px">
					<div class="btn-group btn-group-justified" role="group">
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-primary" style="height:50px">消息 <span class="badge">4</span></button>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-primary" style="height:50px">待办 <span class="badge">4</span></button>
						</div>
						<div class="btn-group" role="group">
							<button type="button" class="btn btn-primary" style="height:50px">问答 <span class="badge">4</span></button>
						</div>
					</div>
               </div>
               <div class="row" style="margin-top:20px">
                   <a type="button" class="btn btn-lg btn-success btn-block" href="space.jsp">创建知识</a>
               </div>              
           </div>
           
       </div>
       
       <div class="row">
           <div class="panel panel-default">
			<div class="panel-heading"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> 推荐地图
			    <a href="#" class="pull-right">更多</a>
			</div>
			<div class="panel-body">
			    <div class="row">
			        <div class="col-xs-3">
						<a href="#" class="thumbnail"> 
					        <img src="../images/background.jpg" alt="First">
						</a>
					</div>
					<div class="col-xs-3">
						<a href="#" class="thumbnail"> 
					        <img src="../images/background.jpg" alt="First">
						</a>
					</div>
					<div class="col-xs-3">
						<a href="#" class="thumbnail"> 
					        <img src="../images/background.jpg" alt="First">
						</a>
					</div>
					<div class="col-xs-3">
						<a href="#" class="thumbnail"> 
					        <img src="../images/background.jpg" alt="First">
						</a>
					</div>
			    </div>
            </div>
		</div>
       </div>
		
	</div>
   <jsp:include page="public/footer.jsp"></jsp:include>
   
   
   <script src="../js/jquery-1.12.4.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
   <script src="../js/home.js" type="text/javascript"></script>
</body>
</html>