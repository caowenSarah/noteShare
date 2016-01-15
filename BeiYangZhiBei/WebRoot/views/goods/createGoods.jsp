<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>添加商品</title>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, 

initial-scale=1.0" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/b

ootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/b

ootstrap-responsive.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/c

olorpicker.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/d

atepicker.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/u

niform.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/se

lect2.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/m

atrix-style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/m

atrix-media.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/b

ootstrap-wysihtml5.css" />
<link
	href="${pageContext.request.contextPath}/resources/font-

awesome/css/font-awesome.css"
	rel="stylesheet" />
<link href='http://fonts.useso.com/css?family=Open

+Sans:400,700,800'
	rel='stylesheet' type='text/css'>
<style type="text/css">
#zhuce {
	margin-left: auto;
	margin-right: auto;
}
</style>

</head>
<body>

	<!--Header-part-->
	<div id="header">
		<h1>
			<a href="dashboard.html">添加商品</a>
		</h1>
	</div>
	<!--close-Header-part-->

	<!--top-Header-menu-->
	<div id="user-nav" class="navbar navbar-inverse">
		<ul class="nav">
			<li class="dropdown" id="profile-messages"><a title="" href="#"
				data-toggle="dropdown" data-target="#profile-

messages"
				class="dropdown-toggle"><i class="icon icon-

user"></i> <span
					class="text">Welcome User</span><b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="#"><i class="icon-user"></i> My Profile</a></li>
					<li class="divider"></li>
					<li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
				</ul></li>
			<li class="dropdown" id="menu-messages"><a href="#"
				data-toggle="dropdown" data-target="#menu-messages"
				class="dropdown-toggle"><i class="icon icon-

envelope"></i> <span
					class="text">Messages</span> <span class="label label-important">5</span>
					<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a class="sAdd" title="" href="#"><i
							class="icon-

plus"></i> new message</a></li>
					<li class="divider"></li>
					<li><a class="sInbox" title="" href="#"><i
							class="icon-envelope"></i> inbox</a></li>
					<li class="divider"></li>
					<li><a class="sOutbox" title="" href="#"><i
							class="icon-arrow-up"></i> outbox</a></li>
					<li class="divider"></li>
					<li><a class="sTrash" title="" href="#"><i
							class="icon-trash"></i> trash</a></li>
				</ul></li>
			<li class=""><a title="" href="#"><i
					class="icon icon-

cog"></i> <span class="text">Settings</span></a></li>
			<li class=""><a title="" href="login.html"><i
					class="icon 

icon-share-alt"></i> <span class="text">Logout</span></a></li>
		</ul>
	</div>

	<!--start-top-serch-->
	<div id="search">
		<input type="text" placeholder="Search here..." />
		<button type="submit" class="tip-bottom" title="Search">
			<i class="icon-search icon-

white"></i>
		</button>
	</div>
	<!--close-top-serch-->

	<!--sidebar-menu-->
	<div id="sidebar">
		<a href="#" class="visible-phone"><i class="icon icon-list"></i>Forms</a>
		<ul>
			<li class="submenu active"><a href="noteShare.html"><i
					class="icon icon-home"></i> <span>笔记分享</span></a></li>
			<li class="submenu"><a href="#"><i
					class="icon icon-

list"></i> <span>易物宝阁</span> <span
					class="label 

label-important">3</span></a>
				<ul>
					<li><a href="form-common.html">全部</a></li>
					<li><a href="form-validation.html">以物易物</a></li>
					<li><a href="form-wizard.html">可购买物品</a></li>
				</ul></li>
			<li class="submenu"><a href="#"><i
					class="icon icon-

file"></i> <span>技能交换</span> <span
					class="label 

label-important">3</span></a>
				<ul>
					<li><a href="index2.html">发布技能</a></li>
					<li><a href="gallery.html">搜索技能</a></li>
					<li><a href="calendar.html">已配对列表</a></li>
				</ul></li>
			<li class="content"><span>我的物品当前交易完成</span>
				<div
					class="progress progress-mini progress-danger 

active progress-striped">
					<div style="width: 50%;" class="bar"></div>
				</div> <span class="percent">50%</span>
				<div class="stat">4 / 8</div></li>
			<li class="content"><span>我的技能当前交换完成</span>
				<div class="progress progress-mini active progress-

striped">
					<div style="width: 33%;" class="bar"></div>
				</div> <span class="percent">33%</span>
				<div class="stat">1 / 3</div></li>
		</ul>
	</div>


	<!--close-left-menu-stats-sidebar-->

	<div id="content">
		<div id="content-header">
			<div id="breadcrumb">
				<a href="../index.jsp" title="Go to 

Home" class="tip-bottom"><i
					class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form

					elements</a> <a href="#" class="current">Common elements</a>
			</div>
			<h1>添加商品</h1>
		</div>
		<div class="container-fluid">
			<hr>
			<div id="zhuce" class="row-fluid">
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title">
							<span class="icon"> <i class="icon-align-justify"></i>
							</span>
							<h5>Personal-info</h5>
						</div>
						<div class="widget-content nopadding">
							<form action="createGoods.action" method="post" class="form-

horizontal">
								<div class="control-group">
									<label class="control-label">商品名 :</label>
									<div class="controls">
										<input type="text" class="span11" name="goodsname"
											placeholder="例如：王小二大学物理（上）

" />
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">类型:</label>
									<div class="controls">
										<select name="type">
											<option>电子产品</option>
											<option>书籍</option>
											<option>体育</option>
										</select>
									</div>
								</div>
								<!-- 
								<div class="control-group">
									<label class="control-label">上传图片 :</label>
									<div class="portlet-body form clear">
										<div class="control-group upload-left-div" style="">


											<div>


												<input type="file" name="fileName" id="file_upload_image" />


											</div>
										</div>

									</div>
								</div>
								 -->

								<div class="form-actions">
									<button type="submit" class="btn btn-success">添 加</button>
								</div>
							</form>
						</div>
					</div>

				</div>

			</div>

		</div>
	</div>
	<!--Footer-part-->
	<div class="row-fluid">
		<div id="footer" class="span12">2013 &copy; Matrix Admin. More
			Templates - Collect from</div>
	</div>
	<!--end-Footer-part-->
	<script
		src="${pageContext.request.contextPath}/resources/upload

ify/jquery.uploadify.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jque

ry.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jque

ry.ui.custom.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/boot

strap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/boot

strap-colorpicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/boot

strap-datepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jque

ry.toggle.buttons.html"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/mas

ked.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jque

ry.uniform.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/selec

t2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/matr

ix.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/matr

ix.form_common.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/wysi

html5-0.3.0.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jque

ry.peity.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/boot

strap-wysihtml5.js"></script>
	<script>
	$('.textarea_editor').wysihtml5();
</script>
</body>
</html>
