<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="navbar navbar-default navbar-static-top">
	<div class="navbar-inner">
		<div class="container">

			<!-- <div class="navbar-header">
				<a class="navbar-brand" href="./home.jsp">KMS</a>
			</div> -->
			<div id="navbar">
				<ul class="nav navbar-nav">
					<li id="home"><a href="./home.jsp">知识门户</a></li>
					<li id="dividerHome" class="divider-vertical"></li>

					<li id="library"><a href="./library.jsp">知识库</a></li>
					<li id="dividerLibrary" class="divider-vertical"></li>

					<li id="map"><a href="./map.jsp">知识地图</a></li>
					<li id="dividerMap" class="divider-vertical"></li>

					<li id="wikipedia"><a href="./wikipedia.jsp">知识百科</a></li>
					<li id="dividerWikipedia" class="divider-vertical"></li>

					<li id="expert"><a href="./expert.jsp">专家库</a></li>
					<li id="dividerExpert" class="divider-vertical"></li>

					<li id="quiz"><a href="./quiz.jsp">知识问答</a></li>
					<li id="dividerQuiz" class="divider-vertical"></li>

					<li id="forum"><a href="./forum.jsp">知识社区</a></li>
					<li id="dividerForum" class="divider-vertical"></li>

					<li id="space"><a href="./space.jsp">个人空间</a></li>
					<li id="dividerSpace" class="divider-vertical"></li>
					
					<li id="space"><a href="./toplist.jsp">知识统计</a></li>
					<li id="dividerSpace" class="divider-vertical"></li>

					<li>
						<ul class="nav navbar-nav">
							<li id="system" class="dropdown">
							    <a role="button" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" href="#"> 系统管理 
							        <b class="caret"></b>
							    </a>

								<ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu">
									<li id="user">
									    <a href="users.jsp"><img src="../images/users.png" class="iconStyle" /> 用户管理</a>
									</li>
									<li id="headline">
									    <a href="headline.jsp"><img src="../images/headline.ico" class="iconStyle" /> 资讯管理</a>
									</li>
									<li id="database">
									    <a href="database.jsp"><img src="../images/database.ico" class="iconStyle" /> 基础数据管理</a>
									</li>
									<li id="security">
									    <a href="security.jsp"><img src="../images/security.ico" class="iconStyle" /> 安全参数设置</a>
									</li>
									<li id="log">
									    <a href="log.jsp"><img src="../images/log.ico" class="iconStyle" /> 日志管理</a>
									</li>
								</ul>
						    </li>
						</ul>
					</li>
				</ul>
				<ul class="nav navbar-nav pull-right">
					<li class="dropdown">
					    <a role="button" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown" href="#"> 
					        <img src="../images/person.ico" class="iconStyle" /> 
					        <span id="userName">Admin</span> 
					        <span class="caret"></span>
					    </a>
						<ul class="dropdown-menu pull-right">
							<li>
							    <a href="#"><img src="../images/explore.ico" class="iconStyle" /> 个人信息</a>
							</li>
							<li>
							    <a href="#"><img src="../images/edit.ico" class="iconStyle" /> 修改个人信息</a>
							</li>
							<li class="divider"></li>
							<li>
							    <a href="#"><img src="../images/shutdown.ico" class="iconStyle" /> 注销</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>


		</div>
	</div>
</div>
