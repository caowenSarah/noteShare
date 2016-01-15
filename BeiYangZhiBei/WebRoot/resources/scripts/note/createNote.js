uploadFile=function(){
	var noteId = $("#noteId").val();//noteId
	this.newDateString = "";
	this.init=function(){
		var date = new Date();
		this.newDateString = date.getFullYear()+date.getMonth()+date.getTime();
		this.event();	
	};
	this.event=function(){
		var obj=this;
		$("#uploadify").uploadify({  
			'formData' : {'newDate':obj.newDateString},
	        'buttonText' : '选择笔记图片',  
	        'height' : 30,  
	        'swf' : 'resources/uploadify/uploadify.swf',  
	        //带参数，指定上传哪个
	        'uploader' : 'uploadNotePic.action?noteId='+noteId,  
	        'width' : 200,  
	        'queueSizeLimit':500,//上传数量
	        'uploadLimit':500,//每次最多上传数量
	        'auto':false,  //是否自动开始
	        'queueID': 'fileQueue',
	        'multi':true,//是否自持多文件上传
	        'fileTypeDesc' : '支持格式:jpg/gif/jpeg/png.',  
	        'fileTypeExts' : '*.jpg;*.jpeg;*.gif;*.png;', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc 
	        'fileObjName'   : 'file',  
	        'overrideEvents' : [ 'onDialogClose', 'onUploadSuccess', 'onUploadError', 'onSelectError' ],
	        'onUploadSuccess' : function(file, data, response) { 
	        	obj.folderIsExits = data;
//	        	alert(file);
//	        	alert(data);
//	        	alert(response);
//	        	alert($('#uploadify').uploadify('settings', 'queueSize'));
	        },
			'onSelectError':function(file,errorCode,errorMsg){  
	            var msgText = "上传失败\n";  
	            switch (errorCode) {  
	            case SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED:  
	                msgText += "上传的文件数量已经超出系统限制的" + $('#uploadify').uploadify('settings', 'queueSizeLimit') + "个文件！";  
	                break;  
	            case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:  
	                msgText += "文件 [" + file.name + "] 大小超出系统限制的" + $('#uploadify').uploadify('settings', 'fileSizeLimit')/1024+ "M大小！";  
	                break;  
	            case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:  
	                msgText += "文件大小为0";  
	                break;  
	            case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:  
	                msgText += "文件格式不正确，仅限 " + this.settings.fileTypeExts;  
	                break;  
	            default:  
	                msgText += "错误代码：" + errorCode + "\n" + errorMsg;  
	            }  
	            $('#div-info-modal').modal('show').find('p').html(msgText); 
	        },
	        'onUploadError' : function(file, errorCode, errorMsg, errorString) {  
	            // 手工取消不弹出提示  
	            if (errorCode == SWFUpload.UPLOAD_ERROR.FILE_CANCELLED || errorCode == SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED) {  
	                return;  
	            }  
	            var msgText = "上传失败\n";  
	            switch (errorCode) {  
	            case SWFUpload.UPLOAD_ERROR.HTTP_ERROR:  
	                msgText += "HTTP 错误\n" + errorMsg;  
	                break;  
	            case SWFUpload.UPLOAD_ERROR.MISSING_UPLOAD_URL:  
	                msgText += "上传文件丢失，请重新上传";  
	                break;  
	            case SWFUpload.UPLOAD_ERROR.IO_ERROR:  
	                msgText += "IO错误";  
	                break;  
	            case SWFUpload.UPLOAD_ERROR.SECURITY_ERROR:  
	                msgText += "安全性错误\n" + errorMsg;  
	                break;  
	            case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:  
	                msgText += "每次最多上传 " + this.settings.uploadLimit + "个";  
	                break;  
	            case SWFUpload.UPLOAD_ERROR.UPLOAD_FAILED:  
	                msgText += errorMsg;  
	                break;  
	            case SWFUpload.UPLOAD_ERROR.SPECIFIED_FILE_ID_NOT_FOUND:  
	                msgText += "找不到指定文件，请重新操作";  
	                break;  
	            case SWFUpload.UPLOAD_ERROR.FILE_VALIDATION_FAILED:  
	                msgText += "参数错误";  
	                break;  
	            default:  
	                msgText += "文件:" + file.name + "\n错误码:" + errorCode + "\n" + errorMsg + "\n" + errorString;  
	            }  
	            $('#div-info-modal').modal('show').find('p').html(msgText);   
	        } 
	    });//导入图片 
		
		$("#imageBegin").click(function(){
			$('#uploadify').uploadify('upload', '*');
		});//开始导入图片
		
		$("#imageEnd").click(function(){
			$('#uploadify').uploadify('stop');
		});//停止导入图片
	};
};  

