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
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script>
<style type="text/css"></style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<title>大学生兼职平台</title>


<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
var ctx = "http://www.lagou.com";
console.log(1);
</script>
<link href="style/css/bootstrap.min.css" type="text/css" rel="stylesheet">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/bootstrap.min.js" type="text/javascript"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546;
var obj;
var email = "${sessionScope.email}";
$(document).ready(function(){
if(email!=null&&email!=""){

    $("#ex").html();
    }
    else{
    $("#ex").html("未登录");
   window.location.href = 'login';
    }

 var ht = '',ht1='',ht2='',ht3='';
    $.ajax({
            type:"post",
            data:{"email":email},
            url:'showAp',
            dataType: 'json',
            success:function(response){
            var obj = response.applyList;
            var s = "";
            for(var i = 0;i<obj.length;i++){
            if(obj[i].applyState=="0"){
                s = "待查看";
            ht1+='<li data-id="1686182" class="onlineResume"><label class="checkbox"><input type="checkbox"><i></i></label><div class="resumeShow"><a title="预览在线简历" target="_blank" class="resumeImg" href="resumeView.html?deliverId=1686182"><img src="style/images/default_headpic.png"></a><div class="resumeIntro"><h3 class="unread"><a target="_blank" title="预览简历" href=""></a><em></em></h3><span class="fr">报名时间：'
                 +obj[i].applyTime+'</span><div>'
                 +obj[i].name+'&nbsp;/&nbsp;'+obj[i].sex+'&nbsp;/&nbsp;'+obj[i].rank+'&nbsp;/&nbsp;'+obj[i].height+'&nbsp;/&nbsp;'+obj[i].weight+'<br>期望兼职·'+
                  obj[i].exJob+'&nbsp;&nbsp;|&nbsp;&nbsp;空闲时间：'+obj[i].freeTime+
                  '</div><div class="jdpublisher"><span>应聘职位：<a title="随便写" target="_blank" href="">'+
                  obj[i].jobName+'</a></span></div></div><div class="links">'+
                  '<a class="resume_del"  onclick="passApply('+obj[i].id+')">通过</a>'+
                  '<a class="resume_del"  onclick="unPassApply('+obj[i].id+')">不通过</a></div></div></li>'
            }else if(obj[i].applyState=="1"){
                s = "已通过";
                ht2+='<li data-id="1686182" class="onlineResume"><label class="checkbox"><input type="checkbox"><i></i></label><div class="resumeShow"><a title="预览在线简历" target="_blank" class="resumeImg" href="resumeView.html?deliverId=1686182"><img src="style/images/default_headpic.png"></a><div class="resumeIntro"><h3 class="unread"><a target="_blank" title="预览简历" href=""></a><em></em></h3><span class="fr">报名时间：'
                                      +obj[i].applyTime+'</span><div>'
                                      +obj[i].name+'&nbsp;/&nbsp;'+obj[i].sex+'&nbsp;/&nbsp;'+obj[i].rank+'&nbsp;/&nbsp;'+obj[i].height+'&nbsp;/&nbsp;'+obj[i].weight+'<br>期望兼职·'+
                                       obj[i].exJob+'&nbsp;&nbsp;|&nbsp;&nbsp;空闲时间：'+obj[i].freeTime+
                                       '</div><div class="jdpublisher"><span>应聘职位：<a title="随便写" target="_blank" href="">'+
                                       obj[i].jobName+'</a></span></div></div><div class="links">'+
                                       '<a class="resume_del" onclick="delApply('+obj[i].id+')">删除</a></div></div></li>'
            }else{
                s = "不合适";
                ht3+='<li data-id="1686182" class="onlineResume"><label class="checkbox"><input type="checkbox"><i></i></label><div class="resumeShow"><a title="预览在线简历" target="_blank" class="resumeImg" href="resumeView.html?deliverId=1686182"><img src="style/images/default_headpic.png"></a><div class="resumeIntro"><h3 class="unread"><a target="_blank" title="预览简历" href=""></a><em></em></h3><span class="fr">报名时间：'
                                      +obj[i].applyTime+'</span><div>'
                                      +obj[i].name+'&nbsp;/&nbsp;'+obj[i].sex+'&nbsp;/&nbsp;'+obj[i].rank+'&nbsp;/&nbsp;'+obj[i].height+'&nbsp;/&nbsp;'+obj[i].weight+'<br>期望兼职·'+
                                       obj[i].exJob+'&nbsp;&nbsp;|&nbsp;&nbsp;空闲时间：'+obj[i].freeTime+
                                       '</div><div class="jdpublisher"><span>应聘职位：<a title="随便写" target="_blank" href="">'+
                                       obj[i].jobName+'</a></span></div></div><div class="links">'+
                                        '<a class="resume_del" onclick="delApply('+obj[i].id+')">删除</a></div></div></li>'
            }
            }
            $("#unMa").html(ht1);
            $("#p").html(ht2);
            $("#uP").html(ht3);
        }
    });


    $.ajax({
    type:"POST",
    url:"disResume",
    data:{email:email},
    dataType:"json",
    success:function(response){
    obj = response.reList;
    var html = "";
    var j = 0;
    var x = 0;
    var html1 = "";
    for(var i = 0;i<obj.length;i++){
    if(obj[i].state=="有效"){
    j++;
        html+='<ul class="reset my_jobs"><li><h3><a target="_blank" href="#">'
        +obj[i].jobName+
        '</a><span>'+obj[i].department+
        '</span></h3><span class="receivedResumeNo"><a href="">应聘简历（1）</a></span><div>'
        +obj[i].number+'/'+obj[i].salary+
        '</div><div class="c9">'
        +obj[i].time+
        '</div><div class="links"><a class="job_edit" data-toggle="modal" data-target="#myModal" onclick="editResume('+obj[i].id+')">编辑</a><a class="job_offline" onclick="downResume('+obj[i].id+')">下线</a></div></li></ul>'
    }else{
    x++;
    html1+='<ul class="reset my_jobs"><li><h3><a target="_blank" href="#">'
           +obj[i].jobName+
           '</a><span>'+obj[i].department+
           '</span></h3><span class="receivedResumeNo"><a href="">应聘简历（1）</a></span><div>'
           +obj[i].number+'/'+obj[i].salary+
           '</div><div class="c9">'
           +obj[i].time+
           '</div><div class="links"><a target="_blank" class="job_edit" href="">编辑</a><a class="job_offline" onclick="upResume('+obj[i].id+')">上线</a><a class="job_del" onclick="delResume('+obj[i].id+')">删除</a></div></li></ul>'
    }
}
    $("#searchForm").html(html);
    $("#positionNumber").html(j);
    $("#positionNumber1").html(x);
    $("#searchForm1").html(html1);

    },
    error:function(response){
    alert("失败");
    }

    });
    });

    function editResume(id){
         $.ajax({
         type:"POST",
         url:"getResumeById",
         data:{id:id},
         dataType:"json",
         success:function(response){
         $("#select_category").val(response.resume.jobType);
         $("#positionType").val(response.resume.jobType);
         $("#positionName").val(response.resume.jobName);
         $("#department").val(response.resume.department);
         $("#number").val(response.resume.number);
         $("#deRequest").val(response.resume.deRequest);
         $("#salary").val(response.resume.salary);
         $("#time").val(response.resume.time);
         $("#detail").val(response.resume.detail);

         $("#jobForm").validate({
         debug:true,
         onkeyup:!1,focusCleanup:!0,
         rules:{
         positionName:{required:!0,rangelength:[1,40]},
         positionType:{required:!0},
         department:{required:!0,maxlenStr:20},
         number:{required:!0,maxlenStr:20},
         deRequest:{required:!0,maxlenStr:50},
         detail:{required:!0,maxlenStr:150},
         salary:{required:!0,maxlenStr:50},
         time:{required:!0,maxlenStr:50}},
         messages:{
         positionName:{required:"请输入兼职名称，如：家教助教",rangelength:"请输入1-40字的兼职名称"},
         positionType:{required:"请选择兼职类别"},
         department:{required:"请输入兼职地点",maxlenStr:"请输入20字以内的兼职地点"},
         number:{required:"请输入招聘人数",maxlenStr:"请输入20字以内的招聘人数"},
         deRequest:{required:"请输入兼职要求",maxlenStr:"请输入50字以内的兼职要求"},
         detail:{required:"请输入兼职描述",maxlenStr:"请输入150字以内的兼职描述"},
         salary:{required:"请输入兼职报酬",maxlenStr:"请输入50字以内的兼职报酬"},
         time:{required:"请输入兼职时间",maxlenStr:"请输入50字以内的兼职时间"}
         },
         submitHandler:function(form){
         var a = $("#positionType").val(),
         b = $("#positionName").val(),
         c = $("#department").val(),
         d = $("#number").val(),
         e = $("#deRequest").val(),
         f = $("#detail").val(),
         g = $("#salary").val(),
         h = $("#time").val();
         $("#jobForm").find(":submit").attr("disabled", true);

         $.ajax({
         type:"POST",
         url:"editJob",
         data:{id:id,jobType:a,jobName:b,department:c,number:d,deRequest:e,detail:f,salary:g,time:h},
         dataType:"json",
         success:function(response){
             alert("修改成功");
             $('#myModal').modal('hide');
             window.location.href='updateSu';
         }
         });
         $("#jobForm").find(":submit").attr("disabled", false);
         }
         });
         $("#formSubmit").click(function(){$('#myModal').modal('hide');});
         },
         error:function(){alert("修改兼职信息失败！")}
         })

    };

    function downResume(id){
    $.ajax({
     type:"POST",
     url:"downResume",
     data:{id:id,email:email},
     dataType:"json",
     success:function(result){
     if(result == true){location.reload();}
     }
    })
    }

     function delResume(id){
        $.ajax({
         type:"POST",
         url:"delResume",
         data:{id:id,email:email},
         dataType:"json",
         success:function(result){
         if(result == true){location.reload();}
         }
        })
        }

         function upResume(id){
            $.ajax({
             type:"POST",
             url:"upResume",
             data:{id:id,email:email},
             dataType:"json",
             success:function(result){
             if(result == true){location.reload();}
             }
            })
            }

function passApply(id){
        $.ajax({
         type:"POST",
         url:"passApply",
         data:{id:id},
         dataType:"json",
         success:function(result){
         if(result == true){}
         }
        })
        }


function unPassApply(id){
        $.ajax({
         type:"POST",
         url:"unPassApply",
         data:{id:id},
         dataType:"json",
         success:function(result){
         if(result == true){}
         }
        })
        }

function delApply(id){
        $.ajax({
         type:"POST",
         url:"delApply",
         data:{id:id},
         dataType:"json",
         success:function(result){
         if(result == true){}
         }
        })
        }
</script>
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a class="logo" href="comIndex">
    			<img width="229" height="43" alt="大学生兼职平台" src="style/images/logo5.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="comIndex">首页</a></li>
    			<li><a href="create">兼职</a></li>
                <li ><a href="index" rel="nofollow">学生版</a></li>
	    		<li ><a href="login" rel="nofollow">登录</a></li>
	    		<li ><a href="register" rel="nofollow">注册</a></li>
	    	</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span id="ex">${sessionScope.email}</span>
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                                	 <dd style="display: none;"><a href="resume">我发布的职位</a></dd>
                                     <dd style="display: none;"><a href="">我收到的简历</a></dd>
                                     <dd class="btm" style="display: none;"><a href="comIndex">我的公司主页</a></dd>
                                     <dd style="display: none;"><a href="updatePwd">修改密码</a></dd>
                                     <dd class="logout"><a rel="nofollow" href="outLogin">退出</a></dd>
            </dl>
                                    <div id="noticeTip">
            	<span class="bot"></span>
				<span class="top"></span>
				<a target="_blank" href="delivery.html"><strong>1</strong>条新投递反馈</a>
				<a class="closeNT" href="javascript:;"></a>
            </div>
                    </div>
    </div><!-- end #header -->
    <div id="container">
                	<div class="sidebar">
        		            	<a class="btn_create" href="create" >发布新兼职</a>
            	                <dl class="company_center_aside">
		<dt>我收到的简历</dt>
		<dd>
		<a href="resume#unmanage" id="unman">待处理</a>
			</dd>
	<dd>
		<a href="resume#pass" id="pa">已通过</a>
	</dd>
	<dd>
		<a href="resume#unpass" id="unpa">未通过</a>
	</dd>

</dl>
<dl class="company_center_aside">
		<dt>我发布的兼职</dt>
			<dd>
		<a href="resume#valid" id="va">有效兼职</a>
	</dd>
	<dd>
		<a href="resume#unvalid" id="unva">下线兼职</a>
	</dd>
	</dl>


            </div><!-- end .sidebar -->




            <div class="content dn" id="unmanage">
                            	<dl class="company_center_content">
                                    <dt>
                                        <h1><em></em>待处理简历 <span></span></h1>
                                    </dt>
                                    <dd>
                                    	<form action="haveRefuseResumes.html" method="get" id="filterForm">
                	                    			                    	<div class="filter_actions ">
                		                        	<label class="checkbox">
                		                        		<input type="checkbox">
                		                                <i></i>
                		                        	</label>
                		                            <span>全选</span>
                		                            <a id="resumeDelAll" href="javascript:;">删除</a>

                		                        </div><!-- end .filter_actions -->



                                      	        <ul class="reset resumeLists" id="unMa"></ul><!-- end .resumeLists -->
                		                   </form>
                                    </dd>
                                </dl><!-- end .company_center_content -->
                            </div><!-- end .content -->



            <div class="content dn" id="pass">
                            	<dl class="company_center_content">
                                    <dt>
                                        <h1><em></em>通过简历 <span>（共1份）</span></h1>
                                    </dt>
                                    <dd>
                                    	<form action="haveRefuseResumes.html" method="get" id="filterForm">
                	                    			                    	<div class="filter_actions ">
                		                        	<label class="checkbox">
                		                        		<input type="checkbox">
                		                                <i></i>
                		                        	</label>
                		                            <span>全选</span>
                		                            <a id="resumeDelAll" href="javascript:;">删除</a>

                		                        </div><!-- end .filter_actions -->



                                      	        <ul class="reset resumeLists" id="p"></ul><!-- end .resumeLists -->
                		                   </form>
                                    </dd>
                                </dl><!-- end .company_center_content -->
                            </div><!-- end .content -->


            <div class="content dn" id="unpass">
            	<dl class="company_center_content">
                    <dt>
                        <h1><em></em>未通过简历 <span>（共1份）</span></h1>
                    </dt>
                    <dd>
                    	<form action="haveRefuseResumes.html" method="get" id="filterForm">
	                    			                    	<div class="filter_actions ">
		                        	<label class="checkbox">
		                        		<input type="checkbox">
		                                <i></i>
		                        	</label>
		                            <span>全选</span>
		                            <a id="resumeDelAll" href="javascript:;">删除</a>

		                        </div><!-- end .filter_actions -->



                      	        <ul class="reset resumeLists" id="uP"></ul><!-- end .resumeLists -->
		                   </form>
                    </dd>
                </dl><!-- end .company_center_content -->
            </div><!-- end .content -->


             <div class="content dn" id="valid">
                        	<dl class="company_center_content">
                                <dt>
                                    <h1>
                                        <em></em>
                                       有效职位 <span>（共<i style="color:#fff;font-style:normal" id="positionNumber"></i>个）</span></h1>
                                </dt>

                                <dd>
                                    <form id="searchForm">

            			            </form>
            		            </dd>

                            </dl>
                        </div><!-- end .content -->

                         <div class="content dn" id="unvalid">
                                                	<dl class="company_center_content">
                                                        <dt>
                                                            <h1>
                                                                <em></em>
                                                               已下线职位 <span>（共<i style="color:#fff;font-style:normal" id="positionNumber1"></i>个）</span>                        </h1>
                                                        </dt>
                                                        <dd>
                                                        	<form id="searchForm1">

                                    			            </form>
                                    		            </dd>
                                                    </dl>
                                                </div><!-- end .content -->

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">编辑兼职</h4>
            </div>
            <div class="modal-body">
            <div class="content">
<form id="jobForm">

                            <table class="btm">
                            	<tbody>
                            	<tr>
                                	<td width="25"><span class="redstar">*</span></td>
                                	<td width="85">兼职类型</td>
                                	<td>

                                        <input type="button" value="请选择兼职类型" id="select_category" class="selectr selectr_380" name="select_category">
                                        <input type="hidden" id="positionType" value="" name="positionType">
                                        <div class="dn" id="box_job" style="display: none;">
                                            <dl>
                                                <dt>兼职类型</dt>
                                                    <dd>
                                                        <ul class="reset job_main">
                                                            <li>
                                                                <span>热门兼职</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>服务员</li>
                                                                    <li>促销导购</li>
                                                                    <li>打包分拣</li>
                                                                    <li>礼仪模特</li>
                                                                    <li>话务客服</li>
                                                                    <li>家教助教</li>
                                                                    <li>充场</li>
                                                                    <li>问卷调查</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>演艺达人</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>礼仪模特</li>
                                                                    <li>群众演员</li>
                                                                    <li>演出</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>简单易做</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>传单派发</li>
                                                                    <li>打包分拣</li>
                                                                    <li>充场</li>
                                                                    <li>问卷调查</li>
                                                                    <li>审核录入</li>
                                                                    <li>保洁</li>
                                                                    <li>地推拉访</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>跑腿办事</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>挂号排队</li>
                                                                    <li>送餐员</li>
                                                                    <li>宠物寄养</li>
                                                                    <li>车票代购</li>
                                                                </ul>
                                                            </li>
                                                            <li>

                                                                    <span>室内推荐</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>话务客服</li>
                                                                    <li>促销导购</li>
                                                                    <li>文员</li>
                                                                    <li>展会协助</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>体力达人</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>餐饮工</li>
                                                                    <li>服务员</li>
                                                                    <li>安保</li>
                                                                    <li>会展执行</li>
                                                                    <li>快递配送</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>专业技能</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>司机代驾</li>
                                                                    <li>技师技工</li>
                                                                    <li>美容美发</li>
                                                                    <li>月嫂阿姨</li>
                                                                    <li>销售房产</li>
                                                                    <li>经纪人</li>
                                                                    <li>保险</li>
                                                                    <li>在线老师</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>特色职位</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>校园代理</li>
                                                                    <li>家教助教</li>
                                                                    <li>健身教练</li>
                                                                    <li>翻译</li>
                                                                    <li>婚礼主持</li>
                                                                    <li>摄影摄像</li>
                                                                    <li>旅行导游</li>
                                                                    <li>美工设计</li>
                                                                    <li>创意策划</li>
                                                                    <li>财务会计</li>
                                                                    <li>项目外包</li>
                                                                    <li>软件开发</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>优秀青年</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>志愿者</li>
                                                                    <li>救生员</li>
                                                                    <li>实习生</li>
                                                                    <li>社会义工</li>
                                                                </ul>
                                                            </li>
                                                            <li>
                                                                    <span>其他</span>
                                                                <ul class="reset job_sub dn">
                                                                    <li>临时工</li>
                                                                    <li>其他</li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </dd>                                                                                                </dl>
                                        </div>
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职名称</td>
                                	<td>
                                    	<input type="text"placeholder="请选择兼职名称" value="" name="positionName" id="positionName">
                                    	<span class="error" style="display:none;" id="beError"></span>
                                    </td>

                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职地点</td>
                                	<td>
                                    	<input type="text" placeholder="请输入兼职地点" value="" name="department" id="department">
                                    </td>
                                </tr>
                                 <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>招聘人数</td>
                                	<td>
                                    	<input type="text" placeholder="请输入招聘人数" value="" name="number" id="number">
                                    </td>
                                </tr>
                                <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职要求</td>
                                	<td>
                                    	<input type="text" placeholder="请输入兼职要求" value="" name="deRequest" id="deRequest">
                                    </td>
                                </tr>
                                <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职报酬</td>
                                    <td>
                                                <input type="text" placeholder="请输入报酬" value="" id="salary" name="salary">
                                    </td>
                                </tr>
                                <tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职时间</td>
                                    <td>
                                        <input type="text" placeholder="请输入时间" value="" id="time" name="time">
                                    </td>
                                </tr>
                            	<tr>
                                	<td><span class="redstar">*</span></td>
                                	<td>兼职描述</td>
                                	<td>
                                    	<input type="text" placeholder="请输入兼职内容" value="" name="detail" id="detail">
                                    </td>
                                </tr>
                            </tbody></table>
                            </tbody></table>
 <table>
                            	<tbody>

                                <tr>
                                	<td width="25"></td>
                                	<td colspan="2">
                                    	<input type="submit" value="发布" id="jobPreview" class="btn_32">
                                    	<input type="button" value="取消" id="formSubmit" class="btn_32" name="button">
                                    </td>
                                </tr>
                         	</tbody></table>
                        </form>
                  </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
<!------------------------------------- end ----------------------------------------->
<script src="style/js/jquery.ui.datetimepicker.min.js" type="text/javascript"></script>
<script src="style/js/received_resumes.min.js" type="text/javascript"></script>
<script>
</script>
			<div class="clear"></div>
			<input type="hidden" value="9421e33d3091428796fec127b07b6c5b" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->


<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>
<script src="style/js/job5.min.js" type="text/javascript"></script>


<script type="text/javascript">
$(document).ready(function(){
	$("#unmanage").hide();
	$("#pass").hide();
	$("#unpass").hide();
	$("#valid").show();
    $("#unvalid").hide();
	$("#pa").click(function(){
		$("#pass").show();
		$("#unmanage").hide();
		$("#unpass").hide();
	    $("#valid").hide();
        $("#unvalid").hide();
	});

	$("#unpa").click(function(){
		$("#unpass").show();
		$("#unmanage").hide();
		$("#pass").hide();
		$("#valid").hide();
        $("#unvalid").hide();
	});

	$("#unman").click(function(){
		$("#unmanage").show();
		$("#pass").hide();
		$("#unpass").hide();
		$("#valid").hide();
        $("#unvalid").hide();
	});

    $("#va").click(function(){
		$("#valid").show();
		$("#pass").hide();
		$("#unpass").hide();
		$("#unmanage").hide();
        $("#unvalid").hide();
	});

    $("#unva").click(function(){
		$("#unvalid").show();
		$("#pass").hide();
		$("#unpass").hide();
		$("#unmanage").hide();
        $("#valid").hide();
	});
});

$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});

</script>
<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div><div class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" id="ui-datepicker-div"></div></body></html>