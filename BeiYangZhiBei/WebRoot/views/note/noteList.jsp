<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>笔记列表</title>
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
<jsp:include page="/views/common/topHeaderMenu.jsp"></jsp:include>

<!--start-top-serch-->
<jsp:include page="/views/common/topSearch.jsp"></jsp:include>
<!--close-top-serch--> 

<!--sidebar-menu-->
<jsp:include page="/views/common/leftSidebarMenu.jsp"></jsp:include>
<!--close-left-menu-stats-sidebar-->

<div id="content">
<div id="content-header">
  <div id="breadcrumb"> 
  	<a href="noteList.action" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 主页</a> 
  	<a href="#" class="tip-bottom">笔记分享</a> 
  	<a href="#" class="current">笔记列表</a> 
  </div>
  <h1>笔记分享</h1>
</div>


<div class="widget-box">
  <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
    <h5>笔记列表</h5>
	  <div class="col-xs-6" 
	         style="float:right;padding-right:150px;">
		  	<h5><a href="createNote.action">新建</a></h5>
	  </div> 
  </div>
  <div class="widget-content nopadding">
    <table class="table table-bordered data-table">
      <thead>
        <tr>
          <th>笔记名称</th>
          <th>创建人</th>
          <th>所属科目</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      <!-- var="note" 变量来表示notelist-->
<c:forEach items="${noteList}" var="note" varStatus="u">
        <tr class="gradeX">
          <td>${note.name }</td>
          <td>${note.createUserName }</td>
          <td>${note.subjects }</td>
          <td class="center"><a href="noteDetail.action?id=${note.id }">查看</a></td>
        </tr>
</c:forEach>
      </tbody>
    </table>
  </div>
</div>


</div>
<!--Footer-part-->
<jsp:include page="/views/common/footer.jsp"></jsp:include>
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
