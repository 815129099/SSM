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
<html><head>
</script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>修改密码-大学生兼职平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="大学生兼职平台-专注于为大学生和企业服务的平台">
<meta name="keywords" content="大学生兼职平台-专注于为大学生和企业服务的平台">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="h/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546;
var email = "${sessionScope.email}";
$(document).ready(function(){
if(email!=null&&email!=""){

    }
    else{
    $("#ex").html("未登录");
    window.location.href = 'login';
    };

    $("#oldPassword").blur(function(){
    $.ajax({
    type:"post",
    url:"verPassword",
    data:{email:email,password:$("#oldPassword").val()},
    dataType:"json",
    success:function(response){
    if(response.tip==false){
    $("#beError").hide();
    $("#beError").show();
    $("#beError").html("密码不对,请重新输入!");
    $("#updateForm").find(":submit").attr("disabled",true);
    }else{
    $("#beError").hide();
    $("#updateForm").find(":submit").attr("disabled",false);
    }
    }
    });
    });


     $("#updateForm").click(function(){
      $("#updateForm").validate({

               rules: {
                 oldPassword: {required:!0,rangelength:[6,20]},
                 newPassword: {required:!0,rangelength:[6,20]},
                 firmPassword: {
                   equalTo: "#newPassword"
                 }
               },
             	messages:{
             	    oldPassword:{required:"请输入当前密码",rangelength:"请输入6-20个字符的密码"},
             		newPassword:{required:"请输入新密码",rangelength:"请输入6-20个字符的密码"},
             		firmPassword:{equalTo:"密码不一致"}
             	},
             	submitHandler:function(form){
             	$("#updateForm").find(":submit").attr("disabled", true);
             	$.ajax({
                 type:"POST",
                 url:"editPassword",
                 data:{email:email,password:$("#newPassword").val()},
                 dataType:"json",
                 success:function(response){
                 if(response.tip==true){
                 alert("密码修改成功，请重新登录");
                 window.location.href = "login";
                 }else{alert("密码修改失败!");}
                 }
                 });
             	}
             });
     });


    });



</script> 
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="index">
    			<img width="229" height="43" alt="大学生兼职平台" src="style/images/logo5.png">
    		</a>
    		<ul id="navheader" class="reset">
                			<li><a href="comIndex">首页</a></li>
                			<li><a href="comIndex">公司</a></li>
                			<li ><a href="index" rel="nofollow">学生版</a></li>
            	    		<li ><a href="login" rel="nofollow">登录</a></li>
            	    		<li ><a href="register" rel="nofollow">注册</a></li>
            </ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span id="ex">${sessionScope.email}</span>
            		<span class="red dn" id="noticeDot-1"></span>
            		<i></i>
            	</dt>
                               <dd style="display: none;"><a href="resume">我发布的职位</a></dd>
                                              	<dd style="display: none;"><a href="resume">我收到的简历</a></dd>
                                              	<dd class="btm" style="display: none;"><a href="comIndex">我的公司主页</a></dd>
                                                <dd style="display: none;"><a href="updatePwd">修改密码</a></dd>
                                                <dd class="logout"><a rel="nofollow" href="outLogin">退出</a></dd>
            </dl>
                                </div>
    </div><!-- end #header -->
    <div id="container">
        	<div class="user_bindSidebar">
    <dl id="user_sideBarmenu" class="user_sideBarmenu">
     	        <dt><h3>帐号设置</h3></dt>
        <dd><a class="hover" href="updatePwd">修改密码</a></dd>
            </dl>
</div>
<input type="hidden" id="hasSidebar" value="1">	<div class="content user_modifyContent">
        <dl class="c_section">
            <dt>
            	<h2><em></em>修改密码</h2>
            </dt>
            <dd>
            	            	<form id="updateForm">
            		<table class="savePassword">
            			<tbody><tr>
            				<td>登录邮箱</td>
            				<td class="c7">${sessionScope.email}</td>
            			</tr>
            			<tr>
            				<td class="label">当前密码</td>
            				<td>
            					<input type="password" maxlength="16" id="oldPassword" name="oldPassword" style="background-image: url(style/images/img/0CQnd2Jos49xUAAAAASUVORK5CYII=quot); background-repeat: no-repeat; background-attachment: scroll; background-position: right center;">
            					<span class="error" style="display:none;" id="beError"></span>
            				</span></td>            				
            			</tr>
            			<tr>
            				<td class="label">新密码</td>
            				<td><input type="password" maxlength="16" id="newPassword" name="newPassword" style="background-image: url(style/images/img/a6y3y0Wx5kbFHvGuXzkgf0xhKnPzA4UTyaTB8Ph8AvcHi3fnsrZ7Wore02YViqVOrRXXPhfqP8j6MYlawoAAAAASUVORK5CYII=quot); background-repeat: no-repeat; background-attachment: scroll; background-position: right center;"></td>
            			</tr>
            			<tr>
            				<td class="label">确认密码</td>
            				<td><input type="password" maxlength="16" id="firmPassword" name="firmPassword" style="background-image: url(style/images/img/a6y3y0Wx5kbFHvGuXzkgf0xhKnPzA4UTyaTB8Ph8AvcHi3fnsrZ7Wore02YViqVOrRXXPhfqP8j6MYlawoAAAAASUVORK5CYII=quot); background-repeat: no-repeat; background-attachment: scroll; background-position: right center;"></td>
            			</tr>
            			<tr>
            				<td>&nbsp;</td>
            				<td><input type="submit" value="保 存"></td>
            			</tr>
            		</tbody></table>
				</form>
				            </dd>
        </dl>
    </div>
<!------------------------------------- 弹窗lightbox ----------------------------------------->
<div style="display:none;">

   	<!-- 修改密码 -->
	<div style="display:none" class="popup" id="updatePassword">
		<h3>修改密码成功，请重新登录</h3>
		<h4><span>5</span>秒后将自动退出</h4>
		<a class="btn" href="login">直接退出</a>
	</div>
	

	
</div>
<!------------------------------------- end -----------------------------------------> <script src="style/js/setting.js"></script>
			<div class="clear"></div>
			<input type="hidden" value="" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->


<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>