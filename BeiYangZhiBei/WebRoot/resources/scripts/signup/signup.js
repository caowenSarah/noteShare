/**
 * 注册
 * @author zhangzhengji 
 */
var namespacesignup = TJU.namespace("beiyang.siguup.siguup");

namespacesignup.collegeList=function(){
	this.init=function(){	
		this.event();
	}; 	
	this.event=function(){
		$('#school_selecter').click(function(){
			var school_id=$('#school_selecter option:selected').val();
			$.get("/getOptions.action?optionId="+school_id, function (data, textStatus){
				//返回的 data 可以是 xmlDoc, jsonObj, html, text, 等等.
				alert(unescape(data));
				//alert(textStatus);//请求状态：success，error等等。
				$("#college_selecter").html(unescape(data));   
			});
		}); //查询
		
		
	};
	
};   
