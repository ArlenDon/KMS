<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
	  <head>
	  <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="images/kms_small.ico">
	  <title>知识管理系统-登录</title>
	  
	  <link href="css/bootstrap.min.css" rel="stylesheet">
	  <link href="css/bootstrapValidator.min.css" rel="stylesheet">
	  <link href="css/signin.css" rel="stylesheet">
	 
	  <!--[if lt IE 9]>
      	<script src="js/html5shiv.min.js"></script>
      	<script src="js/respond.min.js"></script>
      <![endif]-->
</head>

<body ondragstart="return false;" oncontextmenu="return false;">
	<div class="banner">
		<img class="logo" src="./images/kms_large.ico" /> 
		<span class="header">KMS知识管理系统</span>
		<span class="secret">秘密★</span>
	</div>

	<div class="content">
		<form class="form-signin" data-toggle="validator" role="form" method="post" action="signin/validateUser">
			<div class="form-signin-heading">账号登录</div>
			<div class="form-group">
			    <input type="text" class="form-control" placeholder="用户名"
				name="username" maxlength="12" autocomplete="off" required autofocus>
			</div>
			<div class="form-group">
			    <input type="password" class="form-control" placeholder="密码"
				name="password" maxlength="32" autocomplete="off" required>
			</div>
			<div class="form-group">
			    <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">登录</button>
			</div>
			
		</form>
	</div>
	<div class="footer">
		<span>&copy; 中国船舶重工集团公司第七一七研究所质量与技术部 2018</span>
	</div>

	<script src="js/jquery-1.12.4.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrapValidator.min.js"></script>
    <script src="js/signin.js"></script>
</body>
</html>
