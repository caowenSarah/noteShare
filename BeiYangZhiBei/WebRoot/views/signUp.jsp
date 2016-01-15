<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>北洋之北 注册</title>
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
  <h1><a href="dashboard.html">北洋之北 注册</a></h1>
</div>
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
  <!-- <div id="breadcrumb"> <a href="../index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div> -->
  <h1>用户注册</h1>
</div>
<div class="container-fluid">
  <hr>
  <div id="zhuce" class="row-fluid">
    <div class="span6">
      <div class="widget-box">
        <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
        <!--   <h5>Personal-info</h5> -->
        </div>
        <div class="widget-content nopadding">
          <form action="signUp.action" method="post" class="form-horizontal">
            <div class="control-group">
              <label class="control-label">昵称 :</label>
              <div class="controls">
                <input name="username" type="text" class="span11" placeholder="username" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">姓名 :</label>
              <div class="controls">
                <input name="realname" type="text" class="span11" placeholder="realname" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">密码 :</label>
              <div class="controls">
                <input name="pwd" type="password"  class="span11" placeholder="Enter Password"  />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">邮箱 :</label>
              <div class="controls">
                <input name="email" type="text" class="span11" placeholder="Email" />
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">电话 :</label>
              <div class="controls">
                <input name="tel" type="text" class="span11" placeholder="Tel" />
              </div>
            </div>	
            <div class="control-group">
              <label class="control-label">学号 :</label>
              <div class="controls">
                <input name="stuId" type="text" class="span11" placeholder="Student NO" />
              </div>
            </div>	
            <div class="control-group">
              <label class="control-label">年级 :</label>
              <div class="controls">
                <select  name="grade" >
                  <option>2012</option>
                  <option>2013</option>
				  <option>2014</option>
				  <option>2015</option>
				  <option>2016</option>
                </select>
              </div>
            </div>		
            <div class="control-group">
              <label class="control-label">学校 :</label>
              <div class="controls">
                <select name="schoolId" id="school_selecter">
                	<c:forEach items="${schools}" var="option" varStatus="u">
	                  <option value="${option.id }">${option.name }</option>
                    </c:forEach>
                </select>
              </div>
            </div>	
            <div class="control-group">
              <label class="control-label">学院 :</label>
              <div class="controls">
                <select name="collegeId" id="college_selecter">
                </select>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label">专业 :</label>
              <div class="controls">
                <select name="majorId" id="major_selecter">
                </select>
              </div>
            </div>					
            <div class="form-actions">
              <button type="submit" class="btn btn-success">创建</button>
            </div>
          </form>
        </div>
      </div>

    </div>

  </div>

</div></div>
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
//	$(function(){			
//		 var obj = new TJU.beiyang.signup.signup.collegeList();
//		 obj.init();
//	});
		$('#school_selecter').click(function(){
			//alert("nihao");
			var school_id=$('#school_selecter option:selected').val();
			$.get("http://localhost:8080/BeiYangZhiBei/getOptions.action?optionId="+school_id, function (data, textStatus){
				//返回的 data 可以是 xmlDoc, jsonObj, html, text, 等等.
				//alert(unescape(data));
				//alert(textStatus);//请求状态：success，error等等。
				$("#college_selecter").html(unescape(data));   
			});
		}); //选学校出学院列表
		
		$('#college_selecter').click(function(){
			//alert(college.html());
			var college_id=$('#college_selecter').val();
			$.get("http://localhost:8080/BeiYangZhiBei/getOptions.action?optionId="+college_id, function (data, textStatus){
				//返回的 data 可以是 xmlDoc, jsonObj, html, text, 等等.
				//alert(unescape(data));
				//alert(textStatus);//请求状态：success，error等等。
				$("#major_selecter").html(unescape(data));   
			});
		}); //选学院出专业列表
</script>
</body>
</html>
