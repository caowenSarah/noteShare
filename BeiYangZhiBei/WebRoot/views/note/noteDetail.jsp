<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
  	<a href="#" class="current">笔记详情</a> 
  </div>
  <h1>笔记分享</h1>
</div>

<div class="container-fluid">
	<hr>
	  <div>
		<span><a href="${pageContext.request.contextPath}/noteList.action">返回笔记列表</a></span>
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
	  
	  	<c:if test="${note.currPage>0 }">
	 	  	<c:forEach begin="1" end="${note.currPage}" step="1" varStatus="u">
			    <div class="item active">
			      <img src="http://localhost/beiyangzhibeiStoreRoot/noteFile/${note.id }/<c:out value="${u.index}" />.jpg" alt="...">
			      <div class="carousel-caption">
			     	   数据结构笔记
			      </div>
			    </div>
		    </c:forEach> 	  
	  	</c:if>
	  
		  <c:if test="${note.currPage==null || note.currPage==0}">
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
		 </c:if>   
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