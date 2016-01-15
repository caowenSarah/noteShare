<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    
<head>
        <title>北洋之北登陆页面</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/matrix-login.css" />
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link href='http://fonts.useso.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="login.action" method="post">
				 <div class="control-group normal_text"> <h3><img src="${pageContext.request.contextPath}/resources/img/logo.gif" alt="Logo" /></h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><input name="username" type="text" placeholder="Username" />
                            <div style='color:#F00'><span>${msg}</span></div>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input name="pwd" type="password" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="signUp.action" class="flip-link btn btn-info" id="to-recover">注册</a></span>
                    <span class="pull-right"><input type="submit"  class="btn btn-success"></span>
                </div>
            </form>
           
            
        </div>
        
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>  
        <script src="${pageContext.request.contextPath}/resources/js/matrix.login.js"></script> 
    </body>

</html>
