<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="../images/kms_small.ico">
	  <title>标准文献上传</title>
	  
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
			<li class="active">标准文献上传</li>
		  </ol>
      </div>
      <div class="row">
          <form class="form-horizontal">
				<div class="form-group">
				    <div class="rowGroup">
						<label for="stdCode" class="col-xs-1 control-label">标准号</label>
						<div class="col-xs-3">
						    <div class="input-group">
						        <div class="input-group-btn">
						            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">GB/T <span class="caret"></span></button>
									<ul class="dropdown-menu">										
										<li><a href="#">GB/T</a></li>
										<li><a href="#">GJB</a></li>
										<li><a href="#">Q/717G1.R</a></li>
									</ul>
								</div>
								<input type="text" class="form-control" id="stdCode"
								name="stdCode" placeholder="584-2008"
								maxlength="20" required>
						    </div>
							
						</div>
					</div>
					
					<div class="rowGroup">
						<label for="typeCode" class="col-xs-1 control-label">标准分类号</label>
						<div class="col-xs-3">
							<input type="text" class="form-control" id="typeCode"
								name="typeCode" placeholder="标准的《中国标准文献分类法(CCS)》分类号"
								maxlength="20" required>
						</div>
					</div>
					<div class="rowGroup">
						<label for="belongUnit" class="col-xs-1 control-label">归口单位</label>
						<div class="col-xs-3">
							<select class="form-control" id="belongUnit" required
								name="belongUnit">
								<option>中国船舶重工集团公司</option>
							</select>
						</div>
			   </div>
				</div>
				<div class="form-group">
				    <div class="rowGroup">
						<label for="stdTitle" class="col-xs-1 control-label">标准名称</label>
						<div class="col-xs-11">
							<input type="text" class="form-control" id="stdTitle"
								name="stdTitle" placeholder="" maxlength="50" required>
						</div>
					</div>
				</div>
				<div class="form-group">
				    <div class="rowGroup">
						<label for="langType" class="col-xs-1 control-label">语种</label>
						<div class="col-xs-1">
							<select class="form-control" id="langType" required
								name="langType">
								<option>Eng</option>								
							</select>
						</div>
					</div>
					<div class="rowGroup">
						<label for="securityLevel" class="col-xs-1 control-label">密级</label>
						<div class="col-xs-1">
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
				<div class="rowGroup">
						<label for="draftUnits" class="col-xs-1 control-label">起草单位</label>
						<div class="col-xs-3">
							<div class="input-group">
								<input type="text" class="form-control" id="draftUnits" name="draftUnits"
									placeholder="" readonly required> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-search"></span></span>
							</div>
						</div>
					</div>
					<div class="rowGroup">
						<label for="draftAuthors" class="col-xs-1 control-label">起草人</label>
						<div class="col-xs-3">
							<div class="input-group">
								<input type="text" class="form-control" id="draftAuthors" name="draftAuthors"
									placeholder="" readonly required> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-search"></span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
				    <div class="rowGroup">
						<label for="releaseUnits" class="col-xs-1 control-label">发布(批准)单位</label>
						<div class="col-xs-3">
							<div class="input-group">
								<input type="text" class="form-control" id="releaseUnits" name="releaseUnits"
									placeholder="" readonly required> <span
									class="input-group-addon"><span
									class="glyphicon glyphicon-search"></span></span>
							</div>
						</div>
					</div>
					<div class="rowGroup">
				        <label for="releaseDate" class="col-xs-1 control-label">发布(批准)日期</label>
					<div class="col-xs-3">					
						<div class="input-group date form_date"
							data-date="" data-date-format="yyyymmdd"
							data-link-field="dtp_input1" data-link-format="yyyymmdd">
							<input id="releaseDate" name="releaseDate" class="form-control" type="text" maxlength="10" readonly required> 
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
						<input type="hidden" id="dtp_input1" value="" />
					</div>
				    </div>
					<div class="rowGroup">
				        <label for="actionDate" class="col-xs-1 control-label">实施(试行)日期</label>
					<div class="col-xs-3">					
						<div class="input-group date form_date"
							data-date="" data-date-format="yyyymmdd"
							data-link-field="dtp_input2" data-link-format="yyyymmdd">
							<input id="actionDate" name="actionDate" class="form-control" type="text" maxlength="10" readonly required> 
							<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
						</div>
						<input type="hidden" id="dtp_input2" value="" />
					</div>
				    </div>
				    
				</div>
			   <div class="form-group">
				    <div class="rowGroup">
						<label for="stdScope" class="col-xs-1 control-label">使用范围</label>
						<div class="col-xs-11">
							<textarea class="form-control" rows="4" id="stdScope" name="stdScope"
								placeholder="" maxlength="500" required></textarea>
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
   <script src="../js/standard.js"></script>
</body>
</html>