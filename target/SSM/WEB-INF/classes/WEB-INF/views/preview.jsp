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
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>简历预览-大学生兼职平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="简历预览-大学生兼职平台">
<meta name="keywords" content="简历预览-大学生兼职平台">

<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
</script><script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="h/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/colorbox.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">

<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>

<script src="style/js/jquery.colorbox-min.js" type="text/javascript"></script>
<script>
$(function(){
	 $("body").on("click","a.btn_s",function(){
		$.colorbox.close();
		parent.jQuery.colorbox.close();
	});
	$(".inline").colorbox({
		inline:true
	});
});
</script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>

<body>
  	<div id="previewWrapper">
        <div class="preview_header">
            <h1 title="jason的简历">${student.name}的简历</h1>
                    </div><!--end .preview_header-->

        <div class="preview_content">
            <div class="profile_box" id="basicInfo">
                <h2>基本信息</h2>
                <div class="basicShow">
                  <table>
                                        <tbody>
                                          <tr>
                                            <td >名字：${student.name}</td>
                                            <td >性别：${student.sex}</td>
                                            <td >年龄：${student.age}</td>
                                          </tr>
                                          <tr>
                                            <td >身高：${student.height}</td>
                                            <td >体重：${student.weight}</td>
                                            <td >手机：${student.phone}</td>
                                          </tr>
                                        </tbody>
                                      </table>

                </div><!--end .basicShow-->
            </div><!--end #basicInfo-->


               <div class="profile_box" id="educationalBackground">
            	                <h2>教育背景</h2>
            	                <div class="educationalShow">
            	                <ul class="elist clearfix ">
                                            			<li data-id="" class="clear" style="margin-left:30px;">
                                            			<i class="sm_edit dn"></i>
                                                        <span  style="font-size:20px;">学校：${student.school}</span><br/>
                                                        <br/>
                                                        <span>时间：${student.beginYear}-${student.endYear}</span>&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <span >学历：${student.rank}</span>
                                                        </li>
                                </ul>
            	                </div><!--end .educationalShow-->
            	            </div><!--end #educationalBackground-->
			
				            <div class="profile_box" id="expectJob">
	                <h2>期望工作</h2>
	                <div class="expectShow">
	                 <span style="margin-left:25px;" >期待兼职：${student.exJob}</span>
                     <span style="margin-left:25px;" >期待地点：${student.exSite}</span><br/><br/>
                     <span style="margin-left:25px;" >空余时间：${student.freeTime}</span>
	                </div><!--end .expectShow-->
	            </div><!--end #expectJob-->
			       <div class="profile_box" id="selfDescription">
	                <h2>自我描述</h2>
	                <div class="descriptionShow">
	            	&nbsp;&nbsp;&nbsp;&nbsp;${student.introduce}
	                </div><!--end .descriptionShow-->
	            </div><!--end #selfDescription-->
						

			        </div><!--end .preview_content-->
  	</div><!--end #previewWrapper-->

<!-------------------------------------弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!-- 下载简历 -->
	<div class="popup" id="downloadOnlineResume">
         <table width="100%">
             <tbody><tr>
                 <td class="c5 f18">请选择下载简历格式：</td>
             </tr>
         	<tr>
             	<td>
             		<a class="btn_s" href="h/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=1">word格式</a>
             		<a class="btn_s" href="h/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=2">html格式</a>
             		<a class="btn_s" href="h/resume/downloadResume?key=1ccca806e13637f7b1a4560f80f08057&amp;type=3">pdf格式</a>
             	</td>
             </tr>
         </tbody></table>
    </div><!--/#downloadOnlineResume-->   
</div>
<!------------------------------------- end ----------------------------------------->  




<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>