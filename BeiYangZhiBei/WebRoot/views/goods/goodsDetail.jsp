<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>笔记分享</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/colorpicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/datepicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/uniform.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select2.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/matrix-media.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-wysihtml5.css" />
<link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.useso.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<style>
	#carousel-example-generic{
		width: 50%;
		margin-left: auto;
		margin-right: auto;
	}
</style>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">笔记分享</a></h1>
</div>
<!--close-Header-part--> 

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>

<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch--> 

<!--sidebar-menu-->
<div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-list"></i>Forms</a>
  <ul>
    <li class="submenu active"><a href="noteShare.jsp"><i class="icon icon-home"></i> <span>笔记分享</span></a> </li>
    <li class="submenu"> <a href="#"><i class="icon icon-list"></i> <span>易物宝阁</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="form-common.html">全部</a></li>
        <li><a href="form-validation.html">以物易物</a></li>
        <li><a href="form-wizard.html">可购买物品</a></li>
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>技能交换</span> <span class="label label-important">3</span></a>
      <ul>
        <li><a href="index2.html">发布技能</a></li>
        <li><a href="gallery.html">搜索技能</a></li>
        <li><a href="calendar.html">已配对列表</a></li>
      </ul>
    </li>
    <li class="content"> <span>我的物品当前交易完成</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 50%;" class="bar"></div>
      </div>
      <span class="percent">50%</span>
      <div class="stat">4 / 8</div>
    </li>
    <li class="content"> <span>我的技能当前交换完成</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 33%;" class="bar"></div>
      </div>
      <span class="percent">33%</span>
      <div class="stat">1 / 3</div>
    </li>
  </ul>
</div>


<!--close-left-menu-stats-sidebar-->

<div id="content">
<div id="content-header">
  <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div>
  <h1>笔记分享</h1>
</div>

<!--轮播开始-->
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
      <img src="${pageContext.request.contextPath}/resources/img/note1.jpg" alt="...">
      <div class="carousel-caption">
        数据结构笔记
      </div>
    </div>
    <div class="item">
      <img src="${pageContext.request.contextPath}/resources/img/note2.jpg" alt="...">
      <div class="carousel-caption">
        毛概笔记
      </div>
    </div>
    <div class="item">
      <img src="${pageContext.request.contextPath}/resources/img/note3.jpg" alt="...">
      <div class="carousel-caption">
        电工笔记
      </div>
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
<!--轮播结束-->

</div>
<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. More Templates - Collect from</div>
</div>
<!--end-Footer-part--> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.custom.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-colorpicker.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.toggle.buttons.html"></script> 
<script src="${pageContext.request.contextPath}/resources/js/masked.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.uniform.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/select2.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/matrix.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/matrix.form_common.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/wysihtml5-0.3.0.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.peity.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-wysihtml5.js"></script> 
<script>
	$('.textarea_editor').wysihtml5();
</script>
</body>
</html>
