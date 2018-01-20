<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="../images/kms_small.ico">
	  <title>科技成果上传</title>
	  
	  <link href="../css/bootstrap.min.css" rel="stylesheet">
	  <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	  <link href="../css/bootstrapValidator.min.css" rel="stylesheet">
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
          <ol class="breadcrumb">
			<li><a href="space.jsp">个人空间</a></li>
			<li class="active">科技成果上传</li>
		  </ol>
      </div>
      <div class="row">
          <form class="form-horizontal">
				<div class="form-group">
				    <div class="rowGroup">
						<label for="productTitle" class="col-xs-1 control-label">成果名称</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" id="productTitle"
								name="productTitle" placeholder="验收、鉴定材料或获奖证书上的成果名称"
								maxlength="50" required>
						</div>
					</div>
				    <div class="rowGroup">
						<label for="productAuthors" class="col-xs-1 control-label">成果完成人</label>
						<div class="col-xs-3">
							<div class="input-group">
								<input type="text" class="form-control" id="productAuthors"
									name="productAuthors" placeholder="" readonly required>
								<span class="input-group-addon"><span
									class="glyphicon glyphicon-search"></span></span>
							</div>
						</div>
					</div>
				    <div class="rowGroup">
						<label for="productUnits" class="col-xs-1 control-label">完成单位</label>
						<div class="col-xs-3">
							<div class="input-group">
								<input type="text" class="form-control" id="productUnits" name="productUnits"
									placeholder="" readonly required> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-search"></span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
				    <div class="rowGroup">
				        <label for="libraryCode" class="col-xs-1 control-label">中图分类号</label>
					<div class="col-xs-3">
						<input type="text" class="form-control" id="libraryCode" name="libraryCode"
							placeholder="按照中图分类号分类，多值用英文逗号间隔" maxlength="20" required							
						>
					</div>
				    </div>
				    <div class="rowGroup">
				        <label for="subjectCode" class="col-xs-1 control-label">学科分类号</label>
					<div class="col-xs-3">
						<input type="text" class="form-control" id="subjectCode" name="subjectCode"
							placeholder="按照学科分类号分类，多值用英文逗号间隔" maxlength="50" required>
					</div>
				    </div>
				    <div class="rowGroup">
				        <label for="completionDate" class="col-xs-1 control-label">完成日期</label>
					<div class="col-xs-3">					
						<div class="input-group date form_date"
							data-date="" data-date-format="yyyymmdd"
							data-link-field="dtp_input1" data-link-format="yyyymmdd">
							<input id="completionDate" name="completionDate" class="form-control" type="text" maxlength="10" readonly required> 
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
						<input type="hidden" id="dtp_input1" value="" />
					</div>
				    </div>
					
					
					
				</div>
				<div class="form-group">
				    <div class="rowGroup">
				        <label for="prizeType" class="col-xs-1 control-label">获奖类别</label>
					<div class="col-xs-3">
						<div class="input-group">
							<input type="text" class="form-control" id="prizeType" name="prizeType"
								placeholder="" readonly required> 
							<span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
						</div>
					</div>
				    </div>
				    <div class="rowGroup">
						<label for="prizeLevel" class="col-xs-1 control-label">获奖级别</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" id="prizeLevel"
								name="prizeLevel" placeholder="" readonly required>
						</div>
					</div>
				    <div class="rowGroup">
						<label for="securityLevel" class="col-xs-1 control-label">密级</label>
						<div class="col-xs-3">
							<select class="form-control" id="securityLevel" required
								name="securityLevel">
								<option>非密</option>
								<option>限制</option>
								<option>秘密</option>
								<option>机密</option>
								<option>绝密</option>
							</select>
						</div>
					</div>					
				</div>
				<div class="form-group">
				    <div class="rowGroup">
						<label for="keyword" class="col-xs-1 control-label">关键词</label>
						<div class="col-xs-11">
							<input type="text" class="form-control" id="keyword"
								name="keyword" placeholder="多值用英文逗号间隔" maxlength="50" required>
						</div>
					</div>
				</div>
				<div class="form-group">
				    <div class="rowGroup">
						<label for="productBrief" class="col-xs-1 control-label">成果简介</label>
						<div class="col-xs-11">
							<textarea class="form-control" rows="6" id="productBrief" name="productBrief"
								placeholder="" maxlength="2000" required></textarea>
						</div>
					</div>
				</div>
				
				
				<div class="form-group">
				    <div class="rowGroup">
						<label for="field" class="col-xs-1 control-label">产业领域</label>
						<div class="col-xs-3">
							<select class="form-control" id="field" name="field" required>
								<option>领域1</option>
								<option>领域2</option>
							</select>
						</div>
					</div>
				    <div class="rowGroup">
						<label for="direction" class="col-xs-1 control-label">产业方向</label>
						<div class="col-xs-3">
							<select class="form-control" id="direction" name="direction" required>
								<option>方向1</option>
								<option>方向2</option>
							</select>
						</div>
					</div>
					<div class="rowGroup">
						<label for="classification" class="col-xs-1 control-label">技术分类</label>
						<div class="col-xs-3">
							<div class="input-group">
								<input type="text" class="form-control" id="classification" name="classification"
									placeholder="" readonly required> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-search"></span></span>
							</div>
						</div>
					</div>
					
					
				</div>
				
				<div class="form-group">
				    <div class="rowGroup">
						<label for="attachment" class="col-xs-1 control-label">附件</label>
						<div class="col-xs-11">
							<div class="input-group">
								<input type="text" class="form-control" id="attachment" name="attachment"
									placeholder="" readonly required> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-search"></span></span>
							</div>
						</div>
					</div>
					
				</div>
				<div class="form-group">
					<div class="col-xs-offset-1 col-xs-11">
						<button type="submit" class="btn btn-primary">提交</button>
					</div>
				</div>
			</form>
      </div>
		
	</div>
  <jsp:include page="public/footer.jsp"></jsp:include>
   
   
   <script src="../js/jquery-1.12.4.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap.min.js" type="text/javascript"></script>
   <script src="../js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
   <script type="text/javascript" src="../js/bootstrap-datetimepicker.min.js"></script>
   <script type="text/javascript" src="../js/bootstrap-datetimepicker.zh-CN.js"></script>
   <script src="../js/date-style.js" type="text/javascript"></script>
   <script src="../js/bootstrapValidator.min.js"></script>
   <script src="../js/product.js" type="text/javascript"></script>
</body>
</html>