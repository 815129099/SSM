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
<title>大学生兼职平台-公司主页</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="">
<meta name="keywords" content="">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->

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

        if(type!="company"){window.location.href = 'index';}

        $.ajax({
       	            	type:'POST',
       	            	data:{"email":email},
       	            	url:'display',
       					async:false,
       					dataType: 'json',
       	            }).done(function(response) {
       	            if(response.company==null){
       	                 $("#name").html("<h1 style='text-align:center'>"+"点击右上角完善公司名称"+"<h1/>");
       	                 $("#temptation").html("点击右上角完善公司介绍");
       	                 $("#select_scale_hidden").html("完善公司规模");
       	                 $("#website").html("完善公司网址");
       	                 $("#city").html("完善公司所在城市");
       	                 $("#select_industry_hidden").html("完善公司领域");
       	                 $("#phone").html("完善负责人联系电话");
       	                 $("#principal").html("需完善");
       	            }else{
       	                $("#name").html("<h1 style='text-align:center'>"+response.company.name+"<h1/>");
                        $("#temptation").html(response.company.temptation);
                        $("#select_scale_hidden").html(response.company.select_scale_hidden);
                        $("#website").html(response.company.website);
                        $("#city").html(response.company.city);
                        $("#select_industry_hidden").html(response.company.select_industry_hidden);
                        $("#phone").html(response.company.phone);
                        $("#principal").html(response.company.principal);
                    }
       	            });
});

    function checkCompany(){
     $.ajax({
           	    type:'POST',
           	    data:{"email":email},
           	    url:'checkCompany',
           		async:false,
           		dataType: 'json',
           		success:function(response){
           		if(response.tip!="success"){
           		    alert(response.tip);
           		}else{
           		    window.location.href = "create";
           		}
           		}
           		});
    }

</script>

<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="index">
    			<img width="229" height="43" alt="大学生兼职平台-公司主页" src="style/images/logo5.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index">首页</a></li>
	    		<li><a rel="nofollow" onclick="checkCompany()">发布兼职</a></li>
	    		<li ><a href="index" rel="nofollow">学生版</a></li>
	    		<li ><a href="login" rel="nofollow">登录</a></li>
	    		<li ><a href="register" rel="nofollow">注册</a></li>
	    	</ul>
        	<dl class="collapsible_menu">
            	<dt>
           			<span>${sessionScope.email}</span>
            		<span class="red dn" id="noticeDot-1"></span>
            		<i></i>
            	</dt>
                      <dd style="display: none;"><a onclick="checkCompany()">我发布的职位</a></dd>
                      <dd style="display: none;"><a onclick="checkCompany()">我收到的简历</a></dd>
                      <dd class="btm" style="display: none;"><a href="comIndex">我的公司主页</a></dd>
                      <dd style="display: none;"><a href="updatePwd">修改密码</a></dd>
                      <dd class="logout"><a rel="nofollow" href="outLogin">退出</a></dd>
            </dl>
        </div>
    </div><!-- end #header -->

    <div id="container">
        <!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
        <div class="clearfix">

            <div class="content_l">
                 <div id="Na">
                     <div class="na_wrap">

					                <!--编辑名称-->
					             <dl class="c_section newName dn" style="display: none;">
					                    <dt>
					                        <h2><em></em>公司名称</h2>
					                    </dt>
					                    <dd>
						                    <form id="NameForm">
						                        <input type="text" placeholder="请输入公司名称" value="" id="companyname" name="companyname">
						                        <span class="error" style="display:none;" id="beError"></span>
						                        <div class="clear"></div>
						                        <input type="submit" value="保存" id="submitName" class="btn_small">
						                        <a id="delName" class="btn_cancel_s" href="javascript:void(0)">取消</a>
						                    </form>
					                    </dd>
					                    <br/><br/><br/>
					             </dl>

                                 <dl class="c_section" style="display: block;">
					               		<dt>
					                   		<h2><em></em>公司名称</h2>
					                   	</dt>
					                   	<dd>
					                   		<div class="c_name" id="name"></div>
					                   		<a title="编辑公司名称" id="editName" class="c_edit" href="javascript:void(0)"></a>
					                   	</dd>

					             </dl>
                     </div>
                 </div>

                   <div id="Profile">
			            <div class="profile_wrap">
					             <!--无介绍 -->
									<dl class="c_section dn" style="display: none;">
					                	<dt>
					                    	<h2><em></em>公司介绍</h2>
					                    </dt>
					                    <dd>
					                    	<div class="addnew">
					                        	详细公司的发展历程、让求职者更加了解你!<br>
					                            <a id="addIntro" href="javascript:void(0)">+添加公司介绍</a>
					                        </div>
					                    </dd>
					                </dl>
					            <!--编辑介绍-->
					                <dl class="c_section newIntro dn" style="display: none;">
					                    <dt>
					                        <h2><em></em>公司介绍</h2>
					                    </dt>
					                    <dd>
						                    <form id="companyDesForm">
						                        <textarea placeholder="请分段详细描述公司简介、企业文化等" name="companyProfile" id="companyProfile" class="valid">该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎</textarea>
						                        <div class="word_count fr"></div>
						                        <div class="clear"></div>
						                        <input type="submit" value="保存" id="submitProfile" class="btn_small">
						                        <a id="delProfile" class="btn_cancel_s" href="javascript:void(0)">取消</a>
						                    </form>

					                    </dd>

					                </dl>

					            <!--有介绍-->
					               <dl class="c_section" style="display: block;">
					               		<dt>
					                   		<h2><em></em>公司介绍</h2>
					                   	</dt>
					                   	<dd>
					                   		<div class="c_intro" id="temptation"></div>
					                   		<a title="编辑公司介绍" id="editIntro" class="c_edit" href="javascript:void(0)"></a>
					                   	</dd>
					               	</dl>
				            </div>

	     			</div><!-- end #Profile -->

      	<!--[if IE 7]> <br /> <![endif]-->

	        	 		        	<!--无招聘职位-->
						<dl id="noJobs" class="c_section">
		                	<dt>
		                    	<h2><em></em>兼职信息</h2>
		                    </dt>
		                    <dd>
		                    	<div class="addnew">
		                        	发布需要的兼职信息，让伯乐和千里马尽快相遇……<br>
		                            <a onclick="checkCompany()">+添加兼职</a>
		                        </div>
		                    </dd>
		                </dl>

	          	<input type="hidden" value="" name="hasNextPage" id="hasNextPage">
	          	<input type="hidden" value="" name="pageNo" id="pageNo">
	          	<input type="hidden" value="" name="pageSize" id="pageSize">
          		<div id="flag"></div>
        </div>	<!-- end .content_l -->

            <div class="content_r">
            	<div id="Tags">
	            	<div id="c_tags_show" class="c_tags solveWrap" style="display: block;">
	                    <table><tbody><tr><td>地点</td><td id="city"></td></tr>
	                    <tr><td>领域</td><td id="select_industry_hidden"></td></tr>
	                    <tr><td>规模</td><td id="select_scale_hidden"></td></tr>
	                    <tr><td>主页</td><td id="website"></td></tr>
	                    </tbody></table>
	                    <a id="editTags" class="c_edit" href="javascript:void(0)"></a>
	                </div>
	                <div id="c_tags_edit" class="c_tags editTags dn" style="display: none;">
		                <form id="tagForms">
		                    <table>
		                        <tbody><tr>
		                            <td>地点</td>
		                            <td>
		                            	<input type="text" placeholder="请输入地点" value="" name="city" id="c" class="valid">
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>领域</td><!-- 支持多选 -->
		                            <td>
		                            	<input type="hidden" value="移动互联网" id="industryField" name="industryField" class="valid">
		                            	<input type="button" value="移动互联网" id="select_ind" class="select_tags">
		                                 <div class="selectBox dn" id="box_ind" style="display: none;">
		                                    <ul class="reset">
			                                    <li class="current">移动互联网</li>
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
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>规模</td>
		                            <td>
		                            	<input type="hidden" value="少于15人" id="companySize" name="companySize" class="valid">
		                            	<input type="button" value="少于15人" id="select_sca" class="select_tags">
		                                <div class="selectBox dn" id="box_sca" style="display: none;">
		                                    <ul class="reset">
		                                    	<li class="current">少于15人</li>
				                            	<li>15-50人</li>
				                            	<li>50-150人</li>
				                            	<li>150-500人</li>
				                            	<li>500-2000人</li>
				                            	<li>2000人以上</li>
				                            </ul>
		                                </div>
		                            </td>
		                        </tr>
		                        <tr>
		                            <td>主页</td>
		                            <td>
                            			<input type="text" placeholder="请输入网址" value="" name="companyUrl" id="companyUrl" class="valid">
		                            </td>
		                        </tr>
		                    </tbody></table>
		                    <input type="hidden" id="comCity" value="">
		                    <input type="hidden" id="comInd" value="">
		                    <input type="hidden" id="comSize" value="">
		                    <input type="hidden" id="comUrl" value="">
		                    <input type="submit" value="保存" id="submitFeatures" class="btn_small">
		                    <a id="cancelFeatures" class="btn_cancel_s" href="javascript:void(0)">取消</a>
		                    <div class="clear"></div>
		            	</form>
	                </div>
       			</div><!-- end #Tags -->

                    <div id="Member">
		       			       		<!--有负责人-->
		                <dl class="c_section c_member">
		                	<dt>
		                    	<h2><em></em>负责人</h2>
	                    	</dt>
		                    <dd>
			       					<div class="member_wrap">

				                        <!-- 无负责人 -->
				                        <div class="member_info addnew_right dn">
				                        	编辑公司联系人
				                            <a class="member_edit" href="javascript:void(0)">+添加负责人</a>
				                        </div>

				                        <!-- 编辑负责人 -->
		                        		<div class="member_info newMember dn" id="edit">
			                        		<form class="memberForm">
                                                <input type="text" placeholder="请输入负责人姓名" value="" name="name">
					                            <input type="text" placeholder="请输入负责人联系方式" value="" name="phone">
					                            <div class="word_count fr"></div>
					                            <div class="clear"></div>
					                            <input type="submit" value="保存" class="btn_small">
					                             <a id="cancelFea" class="btn_cancel_s" href="javascript:void(0)">取消</a>
				                        		<input type="hidden" value="11493" class="leader_id">
				                        	</form>
				                        </div>

				                        <!-- 显示负责人 -->
				                    	<div class="member_info" id="dis">
	                    					<a title="编辑负责人" class="c_edit member_edit" href="javascript:void(0)"></a>
				                            <div class="m_name" id="principal" style="margin:10px 0 0 0px;"></div>
				                            <div class="m_position" id="phone" style="margin:50px 0 0 0px;"></div>
				                        </div>

				                    </div><!-- end .member_wrap -->
				            </dd>
		                </dl>
		       		</div> <!-- end #Member -->



        </div>
   	</div>

<!-------------------------------------弹窗lightbox  ----------------------------------------->
<!------------------------------------- end ----------------------------------------->

<script src="style/js/company6.min.js" type="text/javascript"></script>
<script>
var avatar = {};
avatar.uploadComplate = function( data ){
	var result = eval('('+ data +')');
	if(result.success){
		jQuery('#logoShow img').attr("src", '/'+result.content);
		jQuery.colorbox.close();
	}
};
</script>

			<div class="clear"></div>
			<input type="hidden" value="af5b64a9520a4b7da6287ff3400dde11" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>