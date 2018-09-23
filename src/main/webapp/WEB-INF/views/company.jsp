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
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>大学生兼职平台-填写公司信息</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="大学生兼职平台-填写公司信息">
<meta name="keywords" content="大学生兼职平台-填写公司信息">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
var ctx = "http://www.lagou.com";
console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
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
var type = "${sessionScope.type}";
$(document).ready(function(){
    if(email!=null&&email!=""){
        $("#ex").html();
        }
        else{
        $("#ex").html("未登录");
        window.location.href = 'login';
        }
        if(type!="noCom"){window.location.href = 'index';}


    $("#name").blur(function(){
            $.ajax({
            type:"POST",
            url:"isName",
            data:{name:$("#name").val()},
            dataType:"json",
            success:function(response){
            if(response.tip==true){
            $('#beError').show();
            $('#beError').html("该名称已存在");
            $("#name").focus();
            $("#stepForm").find(":submit").attr("disabled", true);}
            else{
             $('#beError').hide();
             $("#stepForm").find(":submit").attr("disabled", false);
            }
            }
            });
            })

});

 function checkCompany(){
        if(type!="company"){
            alert("请先填写公司信息");
        }else{
            window.location.href = 'comIndex';
        }
   }
</script>
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="index.html">
    			<img width="229" height="43" alt="大学生兼职平台-填写公司信息" src="style/images/logo5.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index.html">首页</a></li>
    			<li class="current"><a href="companylist.html">完善信息</a></li>
    			<li><a onclick="checkCompany()">主页</a></li>
	    	</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span id="ex">${sessionScope.email}</span>
            		<span class="red dn" id="noticeDot-1"></span>
            		<i></i>
            	</dt>
                   <dd class="btm" style="display: none;"><a onclick="checkCompany()">我的公司主页</a></dd>
                   <dd style="display: none;"><a href="updatePwd">修改密码</a></dd>
                   <dd class="logout"><a rel="nofollow" href="outLogin">退出</a></dd>
            </dl>
                                </div>
    </div><!-- end #header -->
    <div id="container">

  		<div style="" id="stepTip">
       		<a></a>
       		<img width="803" height="59" src="style/images/tips.jpg">
       	</div>
        <div class="content_mid">
        	<dl class="c_section c_section_mid">
                <dt>
                    <h2><em></em>填写公司信息</h2>
                </dt>
                <dd>
	                <form id="stepForm">
	                	<div class="c_text_1">基本信息为必填项，是求职者加速了解公司的窗口，认真填写吧！</div>

	                    <h3>公司名称</h3>
	                    <input type="text" placeholder="请输入公司名称" name="name" id="name" class="valid">
                        <span class="error" style="display:none;" id="beError"></span>
	                    <h3>公司网址</h3>
	                    <input type="text" placeholder="请输入公司网址" value="" name="website" id="website">

	                    <h3>所在城市</h3>
	                    <input type="text" placeholder="请输入工作城市，如：北京" name="city" id="city">

	                    <h3>行业领域</h3>
	                    <div>
		                    <input type="hidden" value="" name="select_industry_hidden" id="select_industry_hidden">
		                    <input type="button" value="请选择行业领域" name="select_industry" id="select_industry" class="select">
		                    <div class="dn" id="box_industry" style="display: none;">
		                        <ul class="reset">
		                        			                        		<li>移动互联网</li>
		                            		                        		<li>电子商务</li>
		                            		                        		<li>社交</li>
		                            		                        		<li>企业服务</li>
		                            		                        		<li>O2O</li>
		                            		                        		<li>教育</li>
		                            		                        		<li>文化艺术</li>
		                            		                        		<li>游戏</li>
		                            		                        		<li>在线旅游</li>
		                            		                        		<li>金融互联网</li>
		                            		                        		<li>健康医疗</li>
		                            		                        		<li>生活服务</li>
		                            		                        		<li>硬件</li>
		                            		                        		<li>搜索</li>
		                            		                        		<li>安全</li>
		                            		                        		<li>运动体育</li>
		                            		                        		<li>云计算\大数据</li>
		                            		                        		<li>移动广告</li>
		                            		                        		<li>社会化营销</li>
		                            		                        		<li>视频多媒体</li>
		                            		                        		<li>媒体</li>
		                            		                        		<li>智能家居</li>
		                            		                        		<li>智能电视</li>
		                            		                        		<li>分类信息</li>
		                            		                        		<li>招聘</li>
		                            		                        </ul>
		                    </div>
	                    </div>

	                    <h3>公司规模</h3>
	                    <div>
		                    <input type="hidden" value="" name="select_scale_hidden" id="select_scale_hidden">
		                    <input type="button" value="请选择公司规模" id="select_scale" class="select">
		                    <div class="dn" id="box_scale" style="display: none;">
		                        <ul class="reset">
		                        			                            	<li>少于15人</li>
		                            		                            	<li>15-50人</li>
		                            		                            	<li>50-150人</li>
		                            		                            	<li>150-500人</li>
		                            		                            	<li>500-2000人</li>
		                            		                            	<li>2000人以上</li>
		                            		                        </ul>
		                    </div>
	                    </div>

	                    <h3>公司简介</h3>
	                    <input type="text" placeholder="请输入公司简介" maxlength="300" name="temptation" id="temptation">

	                    <h3>公司负责人</h3>
                        <input type="text" placeholder="请输入负责人名字" name="principal" id="principal" class="valid">

                       	<h3>联系方式</h3>
                        <input type="text" placeholder="请输入联系方式" value="" name="phone" id="phone">

	                     <input type="submit" value="保存" id="stepBtn" class="btn_big fr">
	                </form>
                </dd>
            </dl>
       	</div>

<!-------------------------------------弹窗lightbox  ----------------------------------------->


<script src="style/js/step.min.js" type="text/javascript"></script>
<script>
         var avatar = {};
         avatar.uploadComplate = function( data ){
         	var result = eval('('+ data +')');
         	if(result.success){
         		jQuery('#logoShow img').attr("src",ctx+ '/'+result.content);
         		jQuery.colorbox.close();
         		jQuery('#logoNo').hide();
         		jQuery('#logoShow').show();
         	}
         };
         </script>
			<div class="clear"></div>
			<input type="hidden" value="13ae35fedd9e45cdb66fb712318d7369" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->


<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>