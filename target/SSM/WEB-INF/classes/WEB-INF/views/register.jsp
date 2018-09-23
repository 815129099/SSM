 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
           <%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册-大学生兼职平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="注册-大学生兼职平台" name="description">
<meta content="注册-大学生兼职平台" name="keywords">

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>

<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="style/js/core.min.js"></script>


<script type="text/javascript">
var youdao_conv_id = 271546;
</script>
<script type="text/javascript" src="style/js/conv.js"></script>
</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">

            <div id="cloud_s"><img src="style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>

    	<input type="hidden" id="resubmitToken" value="9b207beb1e014a93bc852b7ba450db27" />
		<div class="login_box">
        	<form id="loginForm">
        		<ul class="register_radio clearfix">
		            <li>
		            	发布兼职
		              	<input type="radio" value="company" name="type" />
		            </li>
		            <li>
		           	           找兼职
		              	<input type="radio" value="student" name="type" />
		            </li>
		        </ul>
            	<input type="text" id="email" name="email" tabindex="1" placeholder="请输入常用邮箱地址" />
                <span class="error" style="display:none;" id="beError"></span>
                <input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
            	<label class="fl registerJianJu" for="checkbox">
            		<input type="checkbox" id="checkbox" name="checkbox" checked  class="checkbox valid" />我已阅读并同意<a href="h/privacy.html" target="_blank">《用户协议》</a>
           		</label>
                <input type="submit" id="submitLogin" value="注 &nbsp; &nbsp; 册" />
            </form>
            <div class="login_right">
            <br/><br/><br/>
            	<div>已有帐号</div>
            	<a  href="login"  class="registor_now">直接登录</a>
            </div>
        </div>
        <div class="login_box_btm"></div>
    </div>

    <script type="text/javascript">

    $(document).ready(function(e) {
    	$('.register_radio li input').click(function(e){
    		$(this).parent('li').addClass('current').append('<em></em>').siblings().removeClass('current').find('em').remove();
    	});

    	$('#email').focus(function(){
    		//$('#beError').hide();
    	});

			    		//验证用户名是否已用
                        		$("#loginForm #email").blur(function(){
                        			$.post("isEmailExist.do",{"email":$("#email").val()},function(response){
                                        if(response.tip=="error"){
                                        	$('#beError').show();
                                        	$('#beError').html("该电子邮箱已被注册");
                                        	$("#loginForm #email").focus();
                                        	 $("#loginForm").find(":submit").attr("disabled", true);
                        				}else{
                                            $('#beError').hide();
                                            $("#loginForm").find(":submit").attr("disabled", false);
                        				}
                        			});
                        		});

    	//验证表单
	    	 $("#loginForm").validate({
	    	        rules: {
	    	        	type:{
	    	        		required: true
	    	        	},
			    	   	email: {
			    	    	required: true,
			    	    	email: true
			    	   	},
			    	   	password: {
			    	    	required: true,
			    	    	rangelength: [6,16]
			    	   	},
			    	   	checkbox:{required:true}
			    	},
			    	messages: {
			    		type:{
	    	        		required:"请选择注册的目的"
	    	        	},
			    	 	email: {
			    	    	required: "请输入常用邮箱地址",
			    	    	email: "请输入有效的邮箱地址，如：vivi@lagou.com"
			    	   	},
			    	   	password: {
			    	    	required: "请输入密码",
			    	    	rangelength: "请输入6-16位密码，字母区分大小写"
			    	   	},
			    	   	checkbox: {
			    	    	required: "请接受用户协议"
			    	   	}
			    	},
			    	errorPlacement:function(label, element){/*
			    		if(element.attr("type") == "radio"){
			    			label.insertAfter($(element).parents('ul')).css('marginTop','-20px');
			    		}else if(element.attr("type") == "checkbox"){
			    			label.inserresult.contenttAfter($(element).parent()).css('clear','left');
			    		}else{
			    			label.insertAfter(element);
			    		} */
			    		/*modify nancy*/
			    		if(element.attr("type") == "radio"){
			    			label.insertAfter($(element).parents('ul')).css('marginTop','-20px');
			    		}else if(element.attr("type") == "checkbox"){
			    			label.insertAfter($(element).parent()).css('clear','left');
			    		}else{
			    			label.insertAfter(element);
			    		};
			    	},
			    	submitHandler:function(form){
			    		var type =$('input[type="radio"]:checked',form).val();
			    		var email =$('#email').val();
			    		var password =$('#password').val();

			    		$(form).find(":submit").attr("disabled", true);



			            $.ajax({
			            	type:'POST',
			            	data: {"email":email,"password":password,"type":type},
			            	url:'reg',
					        async:false,
					        dataType: 'json',
					        success:function(response){
                            	alert("注册成功！");
                            	window.location='login';
                            	$(form).find(":submit").attr("disabled", false);
                            },
                            error:function(response){
                                alert("注册失败！");
                                $(form).find(":submit").attr("disabled", false);
                            }
			            });
			        }
	    	});
    });
    </script>
</body>
</html>
