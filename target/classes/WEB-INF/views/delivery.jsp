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
<title>大学生兼职平台-报名</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="大学生兼职平台-报名">
<meta name="keywords" content="大学生兼职平台-报名">
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
    }
    else{
    $("#ex").html("未登录");
    window.location.href = 'login';
    };

        if(type!="student"){window.location.href = 'index';}

    var htm = '',htm1='',htm2='',htm3='';
    $.ajax({
            type:"post",
            data:{"email":email},
            url:'showRecord',
            dataType: 'json',
            success:function(response){
            var obj = response.recordList;
            var s = "";
            for(var i = 0;i<obj.length;i++){
            if(obj[i].applyState=="0"){
                s = "待查看";
            htm1+='<li><div class="d_item"><h2><a href="applyRe?id='+obj[i].applyId+'" target="_blank""><em>'+
                              obj[i].jobName+'</em> <span>'+obj[i].salary+'</span></a></h2><div class="clear"></div><a class="d_jobname">地点：'
                              +obj[i].department+'<span>&nbsp;&nbsp;&nbsp;&nbsp;人数：'+obj[i].number+'</span></a><span class="d_time">'+
                              obj[i].applyTime+'</span><div class="clear"></div><div class="d_resume">使用简历：<span>'+obj[i].name+'的简历</span></div><a class="btn_showprogress" href="javascript:;">'
                              +s+'</a></div></li>'
            }else if(obj[i].applyState=="1"){
                s = "已通过";
                htm2+='<li><div class="d_item"><h2><a href="applyRe?id='+obj[i].applyId+'" target="_blank""><em>'+
                                  obj[i].jobName+'</em> <span>'+obj[i].salary+'</span></a></h2><div class="clear"></div><a class="d_jobname">地点：'
                                  +obj[i].department+' <span>&nbsp;&nbsp;&nbsp;&nbsp;人数：'+obj[i].number+'</span></a><span class="d_time">'+
                                  obj[i].applyTime+'</span><div class="clear"></div><div class="d_resume">使用简历：<span>'+obj[i].name+'的简历</span></div><a class="btn_showprogress" href="javascript:;">'
                                  +s+'</a></div></li>'
            }else{
                s = "不合适";
                htm3+='<li><div class="d_item"><h2><a href="applyRe?id='+obj[i].applyId+'" target="_blank""><em>'+
                                  obj[i].jobName+'</em> <span>'+obj[i].salary+'</span></a></h2><div class="clear"></div><a class="d_jobname" >地点：'
                                  +obj[i].department+'<span>&nbsp;&nbsp;&nbsp;&nbsp;人数：'+obj[i].number+'</span></a><span class="d_time">'+
                                  obj[i].applyTime+'</span><div class="clear"></div><div class="d_resume">使用简历：<span>'+obj[i].name+'的简历</span></div><a class="btn_showprogress" href="javascript:;">'
                                  +s+'</a></div></li>'
            }
            htm+='<li><div class="d_item"><h2><a href="applyRe?id='+obj[i].applyId+'" target="_blank""><em>'+
            obj[i].jobName+'</em> <span>'+obj[i].salary+'</span></a></h2><div class="clear"></div><a class="d_jobname">地点：'
            +obj[i].department+'<span>&nbsp;&nbsp;&nbsp;&nbsp;人数：'+obj[i].number+'</span></a><span class="d_time">'+
            obj[i].applyTime+'</span><div class="clear"></div><div class="d_resume">使用简历：<span>'+obj[i].name+'的简历</span></div><a class="btn_showprogress" href="javascript:;">'
            +s+'</a></div></li>'
            }
            $("#allRe").html(htm);
             $("#look").html(htm1);
              $("#pass").html(htm2);
               $("#unPass").html(htm3);
               $("#allRe").removeClass('dn');
        }
    });

    $("#loAll").click(function(){
        $("#cAll").addClass('current');
        $("#cPass").removeClass('current');
        $("#cUnPass").removeClass('current');
        $("#cLook").removeClass('current');
        $("#allRe").removeClass('dn');
        $("#pass").addClass('dn');
        $("#unPass").addClass('dn');
        $("#look").addClass('dn');
    });

    $("#loLook").click(function(){
    $("#cAll").removeClass('current');
    $("#cPass").removeClass('current');
    $("#cUnPass").removeClass('current');
    $("#cLook").addClass('current');
    $("#allRe").addClass('dn');
    $("#pass").addClass('dn');
    $("#unPass").addClass('dn');
    $("#look").removeClass('dn');
    });

    $("#loPass").click(function(){
        $("#cAll").removeClass('current');
        $("#cLook").removeClass('current');
        $("#cPass").addClass('current');
        $("#cUnPass").removeClass('current');
        $("#allRe").addClass('dn');
        $("#pass").removeClass('dn');
        $("#unPass").addClass('dn');
        $("#look").addClass('dn');
    });
    $("#loUnPass").click(function(){
        $("#cAll").removeClass('current');
        $("#cLook").removeClass('current');
        $("#cPass").removeClass('current');
        $("#cUnPass").addClass('current');
        $("#allRe").addClass('dn');
        $("#pass").addClass('dn');
        $("#unPass").removeClass('dn');
        $("#look").addClass('dn');
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
    			<img width="229" height="43" alt="大学生兼职平台-报名" src="style/images/logo5.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index">首页</a></li>
    			<li><a href="index">职位</a></li>
    			<li><a rel="nofollow" href="stuResume">修改简历</a></li>
    			<li><a target="_blank" href="preview?email=${sessionScope.email}">预览简历</a></li>
	    	</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span id="ex">${sessionScope.email}</span>
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                                	<dd style="display: none;"><a rel="nofollow" href="stuResume">修改简历</a></dd>
                	                	<dd style="display: none;"><a href="delivery">我投递的兼职 <span id="noticeNo" class="red dn">(0)</span></a></dd>
                	                	<dd class="btm" style="display: none;"><a target="_blank" href="preview?email=${sessionScope.email}">预览简历</a></dd>
                	                    <dd style="display: none;"><a href="index">职位</a></dd>
                                        <dd style="display: none;"><a href="updatePwd">密码修改</a></dd>
                                <dd class="logout" style="display: none;"><a rel="nofollow" href="outLogin">退出</a></dd>
            </dl>
                                    <div class="dn" id="noticeTip">
            	<span class="bot"></span>
				<span class="top"></span>
				<a target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
				<a class="closeNT" href="javascript:;"></a>
            </div>
                    </div>
    </div><!-- end #header -->
    <div id="container">
        	  	
        <div class="clearfix">
            <div class="content_l">
            	<dl class="c_delivery">
                    <dt>
                        <h1><em></em>已投递简历状态</h1>
                        <a class="d_refresh" href="javascript:;">刷新</a>
                    </dt>
                    <dd>
                    	<div class="delivery_tabs">
                    		<ul class="reset">
                    			<li class="current" id="cAll">
                    				<a href="#allRe" id="loAll">全部</a>
                    			</li>
                    			<li id="cLook">
                    				<a id="loLook">未查看</a>
                    			</li>
                    			<li id="cPass">
                    				<a href="#pass" id="loPass">已通过</a>
                    			</li >
                    			<li id="cUnPass">
                    				<a href="#unPass" id="loUnPass">不合适</a>
                    			</li>
                    		</ul>
                    	</div>
                    	<form id="deliveryForm">
                            <ul class="reset my_delivery dn" id="allRe"></ul>
                            <ul class="reset my_delivery dn" id="look"></ul>
                            <ul class="reset my_delivery dn" id="pass"></ul>
                            <ul class="reset my_delivery dn" id="unPass"></ul>
                        </form>
                                            </dd>
                </dl>
            </div>	
            <div class="content_r">
            	<div class="mycenterR" id="myInfo">
            		<h2>我的信息</h2>
            		<a href="collections.html">我收藏的职位</a>
            		<br>
            		            		<a href="toudi.html" target="_blank">我投递的职位<span id="noticeNoPage" class="red dn">&nbsp;(0)</span></a>
            		<br>
            		            		<a target="_blank" href="subscribe.html">我订阅的职位</a>
            		            		<br>
            		<a target="_blank" href="mList.html">我的职位推荐</a>
            		            	</div><!--end #myInfo-->
            					<div class="mycenterR" id="myRecommend">
            		<h2>可能适合你的职位 <i>匹配度</i></h2>
            		<ul class="reset">
            			            			<li>
            				<a target="_blank" href="http://www.lagou.com/jobs/22194.html">
								<span class="f16">产品经理</span>
								<span class="c7">广州百田</span>
								<em>92%</em>
							</a>
            			</li>
            			            			<li>
            				<a target="_blank" href="http://www.lagou.com/jobs/148004.html">
								<span class="f16">产品经理</span>
								<span class="c7">短讯神州</span>
								<em>92%</em>
							</a>
            			</li>
            			            			<li>
            				<a target="_blank" href="http://www.lagou.com/jobs/46793.html">
								<span class="f16">产品经理</span>
								<span class="c7">爱拍</span>
								<em>89%</em>
							</a>
            			</li>
            			            			<li>
            				<a target="_blank" href="http://www.lagou.com/jobs/99307.html">
								<span class="f16">产品经理</span>
								<span class="c7">一彩票</span>
								<em>88%</em>
							</a>
            			</li>
            			            			<li>
            				<a target="_blank" href="http://www.lagou.com/jobs/147510.html">
								<span class="f16">产品经理</span>
								<span class="c7">林安集团</span>
								<em>88%</em>
							</a>
            			</li>
            			            		</ul>
            		            		<a target="_blank" class="more" href="mList.html">更多推荐职位&gt;&gt;</a>
            		            	</div><!--end #myRecommend-->

            </div>
       	</div>
      <input type="hidden" id="userid" name="userid" value="314873">
<div class="dn" id="recordPopBox">
	<dl>
		<dt>
			评价面试体验 
			<a class="boxclose" href="javascript:;"></a>
		</dt>
		<dd>
			<form id="recordForm">
				<input type="hidden" value="" id="recordId">
				<ul id="interviewResult" class="record_radio clearfix">
		            <li class="mr35">
		            	已收到offer
		              	<input type="radio" name="type" value="1"> 
		            </li>
		            <li>
		           	     未收到offer
		              	<input type="radio" name="type" value="2"> 
		            </li>
		        </ul>
		        <div class="dividebtm">
		        	<table>
		        		<tbody><tr>
                         	<td width="80" valign="top" align="right">面试评分：</td>
                         	<td>
                         		<ul id="recordStarSelect">
                         			<li></li>
                         			<li></li>
                         			<li></li>
                         			<li></li>
                         			<li></li>
                         		</ul>
                             	<input type="hidden" id="recordStar" value="" name="recordStar">
                             	<div class="clear"></div>
                            </td>
                        </tr>
                     	<tr>
                         	<td valign="top" align="right" class="dividebtman">面试短评：</td>
                         	<td>
                         		
                             	<input type="hidden" class="error" id="select_record_hidden" value="" name="record">
                                <input type="text" autocomplete="off" placeholder="15字以内对面试的简单描述哦" id="select_record" class="selectr_340" maxlength="15">                                      
                                <div class="boxUpDownan boxUpDown_340 dn" id="box_record" style="display: none;">
                                  <ul>
                                    <p>热门短评：</p>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                  </ul>
                            	</div>
                            </td>
                        </tr>
                        <tr>
                         	<td valign="top" align="right" class="dividebtman">面试经历：</td>
                         	<td>
                         		<textarea id="interviewDesc" placeholder="记录下自己的面试经历" style="width: 320px;"></textarea>
                         		<div class="word_count">你还可以输入 <span>500</span> 字</div>
                         		<div id="showName" class="f14 c7">
                         			<label class="checkbox">
		                        		<input type="checkbox">
		                                <i></i>
		                        	</label>
                         			匿名提交
                         		</div>
                         		<input type="hidden" value="" id="isShowName">
                         		<input type="hidden" value="" id="senduid">
                         		<input type="hidden" value="" id="poid">
                         		<input type="hidden" value="" id="deid">
                            </td>
                        </tr>
                        <tr>
                         	<td align="right" colspan="2">
                         		<input type="submit" value="确认提交" class="submitRecord btn_small">
                         	</td>
                        </tr>
                	</tbody></table>
		        </div>
			</form>
		</dd>
	</dl>
</div><!-- end #recordPopBox -->
<script src="style/js/delivery.js"></script>
<script>
$(function(){
	//location.reload(true);

	$('.Pagination').pager({
	      currPage: 1,
	      pageNOName: "pageNo",
	      form: "deliveryForm",
	      pageCount: 1,
	      pageSize:  5
	});
});
</script>
			<div class="clear"></div>
			<input type="hidden" value="" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.html">联系我们</a>
		    <a target="_blank" href="http://www.lagou.com/af/zhaopin.html">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->

<script type="text/javascript">
$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});
var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
</script>

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>