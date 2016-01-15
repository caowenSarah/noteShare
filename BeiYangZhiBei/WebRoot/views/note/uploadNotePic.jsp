<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>北洋之北 上传笔记</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/note/createNote.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/colorpicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/datepicker.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/uniform.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select2.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/matrix-media.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-wysihtml5.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/uploadify/uploadify.css" />
<link href="${pageContext.request.contextPath}/resources/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.useso.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
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
  <h1><a href="dashboard.html">创建笔记</a></h1>
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
  	<a href="#" class="current">上传笔记</a> 
  </div>
  <h1>创建笔记</h1>
</div>
<div class="container-fluid">
  <hr>
  <div>
	<span><a href="${pageContext.request.contextPath}/noteList.action">返回笔记列表</a></span>
  </div>
  
  <div id="zhuce" class="row-fluid">
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>笔记信息</h5>
        </div>
        <div class="widget-content nopadding">
            <div class="control-group">
              <label class="control-label">笔记名称 :</label>
              <div class="controls">
                <input type="text" class="span11" name="notename" readonly="readonly" value="${note.name }" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">科目 :</label>
              <div class="controls">
                <input type="text" class="span11" name="subjects" readonly="readonly" value="${note.subjects }" />
              </div>
            </div>		
        </div>
      </div>

    </div>

  </div>

</div>

<div class="container-fluid">
  <hr>
  <input type="hidden" value="${note.id }" id="noteId">
  <div id="shangchuan" class="row-fluid">
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
          <h5>上传笔记图片</h5>
        </div>
            <div class="control-group">
				<div class="portlet-body form clear">
					<div class="control-group upload-left-div" style="">
						 <div>
							<input type="file" name="uploadify"  id="uploadify" />  
				        </div>
					</div>

				</div>                  
            </div>  
                  
            <div class="form-actions">
              <button id="imageBegin" type="submit" class="btn btn-success">上传</button>
              <button id="imageEnd" type="submit" class="btn btn-success">取消上传</button>
            </div>
     	  <div id="fileQueue"></div>
        </div>
      </div>

    </div>

  </div>

</div>

</div>
<!--Footer-part-->
<jsp:include page="/views/common/footer.jsp"></jsp:include>
<!--end-Footer-part-->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/uploadify/jquery.uploadify.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.custom.js"></script>  
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-colorpicker.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.toggle.buttons.html"></script> 
<script src="${pageContext.request.contextPath}/resources/js/masked.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.uniform.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/select2.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/matrix.js"></script> 
<script src="${pageContext.request.contextPath}/resources/scripts/note/createNote.js"></script> 
<script type="text/javascript">
$(function(){	
	(new uploadFile()).init();
});
</script>
<script src="${pageContext.request.contextPath}/resources/js/matrix.form_common.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/wysihtml5-0.3.0.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/jquery.peity.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-wysihtml5.js"></script> 



</body>
</html>
