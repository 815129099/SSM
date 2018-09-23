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
<title>我的简历-大学生兼职平台</title>
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
 var type = "${sessionScope.type}";
$(document).ready(function(){
if(email!=null&&email!=""){
    }
    else{
    $("#ex").html("未登录");
    window.location.href = 'login';
    };

        if(type!="student"){window.location.href = 'index';}
       $.ajax({
        type:"post",
        data:{"email":email},
        url:'showRecord',
        dataType: 'json',
        success:function(response){
        var obj = response.recordList;
        var htm = '<ul style="list-style-type:circle">';
        var s = "";
        var grade = 0,number=0;
        for(var i = 0;i<obj.length;i++){
        if(obj[i].stuState=="0"){
            s = "待查看";
        }else if(obj[i].stuState=="1"){
            s = "已通过";
        }else if(obj[i].stuState=="2"){
            s = "不合适";
        }else if(obj[i].stuState=="4"){
             s = "已完成";
             if(obj[i].stuGrade!=null & obj[i].stuGrade!=""){
                number++;
                grade += parseInt(obj[i].stuGrade);
             }
        }

        if(i>3){break;}
            htm+='<li>'+
            obj[i].jobName+'<span style="float:right;margin-right:55px;">'+s+'</span><br/>投递时间：'+
            obj[i].applyTime+'</li>'
        }
        grade = (grade/number).toFixed(1);
        if(isNaN(grade)){

        }else{$("#showGrade").html(grade);}

        htm+='</ul>';
        $("#showRecord").html(htm);
        }
    });


    $.ajax({
    type:"post",
    data:{"email":email},
    url:'isStu',
    dataType: 'json',
    success:function(response){
        if(response.tip==true){
            $.ajax({
                       	  type:'POST',
                       	  data:{"email":email},
                       	  url:'showStu',
                       	  async:false,
                       	  dataType: 'json',
                       	  success:function(response){
                       	  if(response.student!=null){
                       	  if((response.student.name!=null) & (response.student.name!="")){
                       	  $("#basicInfo .basicShow").removeClass("dn");
                       	  $("#basicInfo .c_edit").removeClass("dn");
                       	  $("#basicInfo .educationalAdd").addClass("dn");
                       	  $("#showName").html("名字："+response.student.name);
                          $("#showSex").html("性别："+response.student.sex);
                          $("#showAge").html("年龄："+response.student.age);
                          $("#showHe").html("身高："+response.student.height);
                          $("#showWe").html("体重："+response.student.weight);
                          $("#showPhone").html("手机："+response.student.phone);
                       	  }else{
                       	   $("#basicInfo .educationalAdd").removeClass("dn");
                           $("#basicInfo .basicShow").addClass("dn");
                       	  }

                                                                      if((response.student.school!=null)&(response.student.school!="")){
                                                                       $("#educationalBackground .educationalAdd").addClass("dn");
                                                                       $("#educationalBackground .c_edit").removeClass("dn");
                                                                       $(".elist").removeClass("dn");
                                                                       $("#showSchool").html("学校："+response.student.school);
                                                                       $("#showRank").html("学历："+response.student.rank);
                                                                       $("#showTime").html("时间："+response.student.beginYear+"-"+response.student.endYear);
                                                                      }

                                                                      if((response.student.introduce!=null)&(response.student.introduce!="")){
                                                                      $("#selfDescription .c_edit").removeClass("dn");
                                                                      $(".descriptionAdd").addClass("dn");
                                                                      $(".descriptionShow").html(response.student.introduce).removeClass("dn");
                                                                     }else{
                                                                     $(".descriptionAdd").removeClass("dn");
                                                                        $("#selfDescription .c_edit").addClass("dn");
                                                                     }

                                                                     if((response.student.exJob!=null)&(response.student.exJob!="")){
                                                                         $(".expectAdd").addClass("dn");
                                                                         $("#expectJob .c_edit").removeClass("dn");
                                                                         $(".expectShow").removeClass("dn");
                                                                         $("#showJob").html("期望兼职："+response.student.exJob);
                                                                         $("#exTime").html("空余时间："+response.student.freeTime);
                                                                         $("#showSite").html("期望地点："+response.student.exSite);
                                                                     }else{
                                                                        $(".expectAdd").removeClass("dn");
                                                                        $("#expectJob .c_edit").addClass("dn");
                                                                     }
                       	  }

                       	  }
                       	  });
        }
    }
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
    			<img width="229" height="43" alt="大学生兼职平台-专注于为大学生和企业服务的平台" src="style/images/logo5.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="index">首页</a></li>
    			<li><a href="index">职位</a></li>
    			<li class="current"><a rel="nofollow" href="stuResume">我的简历</a></li>
    			<li><a rel="nofollow" target="_blank" href="preview?email=${sessionScope.email}">预览简历</a></li>
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
            	<div class="profile_box" id="basicInfo">
            		<h2>基本信息&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;信誉分<span id="showGrade"></span></h2>
            		<span class="c_edit dn"></span>
            		<div class="basicShow dn">
            		<table>
                      <tbody>
                        <tr>
                          <td id="showName"></td>
                          <td id="showSex"></td>
                          <td id="showAge"></td>
                        </tr>
                        <tr>
                          <td id="showHe"></td>
                          <td id="showWe"></td>
                          <td id="showPhone"></td>
                        </tr>

                      </tbody>
                    </table>
            	</div>

            		<div class="basicEdit dn">
            			<form id="profileForm">
						  <table>
						    <tbody><tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td> 
						      <td colspan="3">
						        <input type="text" placeholder="姓名" name="name" id="name">
						      </td>
						    </tr>

                          	<tr>
                          	<td></td>
						      <td >
						      <input type="text" placeholder="年龄"  name="age" id="age">
						      </td>
						      <td  colspan="2">
                                 <ul class="profile_radio clearfix reset">
						            <li class="boy current">
						           	  	 男<em></em>
						              	<input type="radio" checked="checked" name="gender" id="boy" value="男">
						            </li>
						            <li class="girl">
						            	  女<em></em>
						              	<input type="radio" name="gender" id="girl" value="女">
						            </li>
						          </ul>
						      </td>
						    </tr>

						   	<tr>
						      <td ></td>
						      <td  colspan="3">
						          <input type="text" placeholder="身高，单位cm"  name="height" id="height">
						          <input type="text" placeholder="体重，单位kg"  name="weight" id="weight">
						      </td>
						    </tr>

                            <tr>
						      <td valign="top">
						        <span class="redstar">*</span>
						      </td>
						      <td colspan="3">
						          <input type="text" placeholder="手机号码" name="tel" id="tel">
						      </td>
						   	</tr>
						    <tr>
						      <td></td> 
						      <td colspan="3">
						          <input type="submit" value="保 存" class="btn_profile_save">
						          <a class="btn_profile_cancel" href="javascript:;">取 消</a>
						      </td>
						    </tr>
						  </tbody></table>
						</form><!--end #profileForm-->

            		</div><!--end .basicEdit-->
            		 <div class="educationalAdd pAdd">
                          基本信息是企业了解你的第一步，<br>
                          且完善后才可投递简历哦！
                          <span>添加基本信息</span>
                     </div>
            	</div><!--end #basicInfo-->






            	<div class="profile_box" id="educationalBackground">
            		<h2>教育背景<span></span></h2>
                        <span class="c_edit dn"></span>
            		<div class="educationalShow">
            			<ul class="elist clearfix dn">
            			<li data-id="" class="clear" style="margin-left:30px;">
            			<!--<i class="sm_edit dn"></i>-->
                        <span id="showSchool" style="font-size:20px;"></span><br/>
                        <br/>
                        <span id="showTime"></span>&nbsp;&nbsp;&nbsp;&nbsp;
                        <span id="showRank"></span>
                        </li>
            			</ul>
            		</div><!--end .educationalShow-->
            		<div class="educationalEdit dn">
            			<form class="educationalForm">
	            			<table>
	            				<tbody><tr>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							        	<input type="text" placeholder="学校名称" name="schoolName" class="schoolName">
							      	</td>
							      	<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
							      	<td>
							      		<input type="hidden" class="degree" value="学历" name="degree">
							        	<input type="button" value="学历" class="profile_select_287 profile_select_normal select_degree">
										<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
								            <ul>
								        		<li>大专</li>
								        		<li>本科</li>
								        		<li>硕士</li>
								        		<li>博士</li>
								        		<li>其他</li>
								        	</ul>
								        </div>
							        </td>
							    </tr>
	            				<tr>

	            					<td valign="top">
							        	<span class="redstar">*</span>
							      	</td> 
	            					<td>
		            					<div class="fl">
		            						<input type="hidden" class="schoolYearStart" value="" name="schoolYearStart">
								        	<input type="button" value="开始年份" class="profile_select_139 profile_select_normal select_schoolYearStart">
											<div class="box_schoolYearStart boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>

									        		<li>2018</li>
									        		<li>2017</li>
									        		<li>2016</li>
									        		<li>2015</li>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
										</div>
										<div class="fl">
		            						<input type="hidden" class="schoolYearEnd" value="" name="schoolYearEnd">
								        	<input type="button" value="结束年份" class="profile_select_139 profile_select_normal select_schoolYearEnd">
											<div class="box_schoolYearEnd  boxUpDown boxUpDown_139 dn" style="display: none;">
									            <ul>
                                                                                                            <li>2018</li>
									        											        			<li>2017</li>
									        											        			<li>2016</li>
									        											        			<li>2015</li>
									        											        			<li>2014</li>
									        											        			<li>2013</li>
									        											        			<li>2012</li>
									        											        			<li>2011</li>
									        											        			<li>2010</li>
									        											        			<li>2009</li>
									        											        			<li>2008</li>
									        											        			<li>2007</li>
									        											        			<li>2006</li>
									        											        			<li>2005</li>
									        											        			<li>2004</li>
									        											        			<li>2003</li>
									        											        			<li>2002</li>
									        											        			<li>2001</li>
									        											        			<li>2000</li>
									        											        			<li>1999</li>
									        											        			<li>1998</li>
									        											        			<li>1997</li>
									        											        			<li>1996</li>
									        											        			<li>1995</li>
									        											        			<li>1994</li>
									        											        			<li>1993</li>
									        											        			<li>1992</li>
									        											        			<li>1991</li>
									        											        			<li>1990</li>
									        											        			<li>1989</li>
									        											        			<li>1988</li>
									        											        			<li>1987</li>
									        											        			<li>1986</li>
									        											        			<li>1985</li>
									        											        			<li>1984</li>
									        											        			<li>1983</li>
									        											        			<li>1982</li>
									        											        			<li>1981</li>
									        											        			<li>1980</li>
									        											        			<li>1979</li>
									        											        			<li>1978</li>
									        											        			<li>1977</li>
									        											        			<li>1976</li>
									        											        			<li>1975</li>
									        											        			<li>1974</li>
									        											        			<li>1973</li>
									        											        			<li>1972</li>
									        											        			<li>1971</li>
									        											        			<li>1970</li>
									        											        	</ul>
									        </div>
	            						</div>
	            						<div class="clear"></div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td></td>
	            					<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
	            			<input type="hidden" class="eduId" value="">
            			</form><!--end .educationalForm-->
            		</div><!--end .educationalEdit-->
            		    <div class="educationalAdd pAdd">
            		            			教育背景可以充分体现你的学习和专业能力，<br>
						且完善后才可投递简历哦！
						<span>添加教育经历</span>
            		</div><!--end .educationalAdd-->
            	</div><!--end #educationalBackground-->


            	<div class="profile_box" id="expectJob">
                            		<h2>期望工作</h2>
                            		            		<span class="c_edit dn"></span>
                            		<div class="expectShow dn ">
                            		    <span style="margin-left:25px;" id="showJob"></span>
                            		    <span style="margin-left:25px;" id="showSite"></span><br/><br/>
                            		    <span style="margin-left:25px;" id="exTime"></span>
                            		</div><!--end .expectShow-->
                            		<div class="expectEdit dn">
                            			<form id="expectForm">
                	            			<table>
                	            				<tbody><tr>
                	            					<td>
                	            						<input type="hidden" id="expectCity" value="" name="expectCity">
                	            						<input type="button" value="期望地点" id="select_expectCity" class="profile_select_287 profile_select_normal">
                										<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity" style="display: none;">
                								          	<dl>
                								        		<dt>热门城市</dt>
                								        			<dd>
                									        												        				<span>北京</span>
                									        												        				<span>上海</span>
                									        												        				<span>广州</span>
                									        												        				<span>深圳</span>
                									        												        				<span>成都</span>
                									        												        				<span>杭州</span>
                									        											        			</dd>
                								        	  	</dl>
                								        									        		<dl>
                								        			<dt>ABCDEF</dt>
                								        			<dd>
                									        												        				<span>北京</span>
                									        												        				<span>长春</span>
                									        												        				<span>成都</span>
                									        												        				<span>重庆</span>
                									        												        				<span>长沙</span>
                									        												        				<span>常州</span>
                									        												        				<span>东莞</span>
                									        												        				<span>大连</span>
                									        												        				<span>佛山</span>
                									        												        				<span>福州</span>
                									        											        			</dd>
                								        	  	</dl>
                								        									        		<dl>
                								        			<dt>GHIJ</dt>
                								        			<dd>
                									        												        				<span>贵阳</span>
                									        												        				<span>广州</span>
                									        												        				<span>哈尔滨</span>
                									        												        				<span>合肥</span>
                									        												        				<span>海口</span>
                									        												        				<span>杭州</span>
                									        												        				<span>惠州</span>
                									        												        				<span>金华</span>
                									        												        				<span>济南</span>
                									        												        				<span>嘉兴</span>
                									        											        			</dd>
                								        	  	</dl>
                								        									        		<dl>
                								        			<dt>KLMN</dt>
                								        			<dd>
                									        												        				<span>昆明</span>
                									        												        				<span>廊坊</span>
                									        												        				<span>宁波</span>
                									        												        				<span>南昌</span>
                									        												        				<span>南京</span>
                									        												        				<span>南宁</span>
                									        												        				<span>南通</span>
                									        											        			</dd>
                								        	  	</dl>
                								        									        		<dl>
                								        			<dt>OPQR</dt>
                								        			<dd>
                									        												        				<span>青岛</span>
                									        												        				<span>泉州</span>
                									        											        			</dd>
                								        	  	</dl>
                								        									        		<dl>
                								        			<dt>STUV</dt>
                								        			<dd>
                									        												        				<span>上海</span>
                									        												        				<span>石家庄</span>
                									        												        				<span>绍兴</span>
                									        												        				<span>沈阳</span>
                									        												        				<span>深圳</span>
                									        												        				<span>苏州</span>
                									        												        				<span>天津</span>
                									        												        				<span>太原</span>
                									        												        				<span>台州</span>
                									        											        			</dd>
                								        	  	</dl>
                								        									        		<dl>
                								        			<dt>WXYZ</dt>
                								        			<dd>
                									        												        				<span>武汉</span>
                									        												        				<span>无锡</span>
                									        												        				<span>温州</span>
                									        												        				<span>西安</span>
                									        												        				<span>厦门</span>
                									        												        				<span>烟台</span>
                									        												        				<span>珠海</span>
                									        												        				<span>中山</span>
                									        												        				<span>郑州</span>
                									        											        			</dd>
                								        	  	</dl>
                								        									        </div>
                	            					</td>
                	            					<td>
                                                       <input type="text" placeholder="期望兼职类型" value="" name="expectJob" id="expectJob">
                                                    </td>

                	            				</tr>
                	            				<tr>
                	            					<td>
                	            						<input type="text" id="freeTime" placeholder="空余时间" value="" name="freeTime">
                	            					</td>
                	            				</tr>
                	            				<tr>
                	            					<td colspan="2">
                										<input type="submit" value="保 存" class="btn_profile_save">
                						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
                	            					</td>
                	            				</tr>
                	            			</tbody></table>
                            			</form><!--end #expectForm-->
                            		</div><!--end .expectEdit-->
                            		            		<div class="expectAdd pAdd ">
                            		            			填写准确的期望兼职能大大提高求职成功率哦…<br>
                						快来添加期望兼职吧！
                						<span>添加期望兼职</span>
                            		</div><!--end .expectAdd-->

                            		<input type="hidden" id="expectJobVal" value="">
                            		<input type="hidden" id="expectCityVal" value="">
                            		<input type="hidden" id="typeVal" value="">
                            		<input type="hidden" id="expectPositionVal" value="">
                            		<input type="hidden" id="expectSalaryVal" value="">
                            	</div><!--end #expectJob-->


            	<div class="profile_box" id="selfDescription">
            		<h2>自我描述</h2>
            		    <span class="c_edit dn"></span>
            		<div class="descriptionShow dn">
            		            			
            		</div><!--end .descriptionShow-->
            		<div class="descriptionEdit dn">
            			<form class="descriptionForm">
	            			<table>
	            				<tbody><tr>
									<td colspan="2">
										<textarea class="selfDescription s_textarea" name="selfDescription" placeholder=""></textarea>
										<div class="word_count">你还可以输入 <span>500</span> 字</div>
									</td>
	            				</tr>
	            				<tr>
	            					<td colspan="2">
										<input type="submit" value="保 存" class="btn_profile_save">
						          		<a class="btn_profile_cancel" href="javascript:;">取 消</a>
	            					</td>
	            				</tr>
	            			</tbody></table>
            			</form><!--end .descriptionForm-->
            		</div><!--end .descriptionEdit-->
            		<div class="descriptionAdd pAdd">
            		            			描述你的性格、爱好以及吸引人的经历等，<br>
						让企业了解多元化的你！
						<span>添加自我描述</span>
            		</div><!--end .descriptionAdd-->
            	</div><!--end #selfDescription-->


				<input type="hidden" id="resumeId" value="268472">
            </div><!--end .content_l-->
            <div class="content_r">
            	<div class="mycenterR" id="myInfo">
            		<h2>我的报名</h2>
            		<div id="showRecord">

            		</div>
            		<a target="_blank" href="delivery">查看更多</a>

            	</div><!--end #myInfo-->




				
				<div class="mycenterR" id="myShare">
            		<h2>当前每日投递量：10个</h2>
            		<a target="_blank" href="h/share/invite.html">邀请好友，提升投递量</a>
            	</div><!--end #myShare-->
            	
								

            </div><!--end .content_r-->
        </div>
        
      <input type="hidden" id="userid" name="userid" value="314873">

<!-------------------------------------弹窗lightbox ----------------------------------------->
<div style="display:none;">
	<!-- 上传简历 -->
	<div class="popup" id="uploadFile">
	    <table width="100%">
	    	<tbody><tr>
	        	<td align="center">
	                <form>
	                    <a class="btn_addPic" href="javascript:void(0);">
	                    	<span>选择上传文件</span>
	                        <input type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload')" class="filePrew" id="resumeUpload" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" tabindex="3">
	                    </a>
	                </form>
	            </td>
	        </tr>
	    	<tr>
	        	<td align="left">支持word、pdf、ppt、txt、wps格式文件<br>文件大小需小于10M</td>
	        </tr>
	        <tr>
	        	<td align="left" style="color:#dd4a38; padding-top:10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
	        </tr>
	    	<tr>
	        	<td align="center"><img width="55" height="16" alt="loading" style="visibility: hidden;" id="loadingImg" src="style/images/loading.gif"></td>
	        </tr>
	    </tbody></table>
	</div><!--/#uploadFile-->
	
	<!-- 简历上传成功 -->
	<div class="popup" id="uploadFileSuccess">
     	<h4>简历上传成功！</h4>
         <table width="100%">
             <tbody><tr>
                 <td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
             </tr>
         	<tr>
             	<td align="center"><a class="btn_s" href="javascript:;">确&nbsp;定</a></td>
             </tr>
         </tbody></table>
     </div><!--/#uploadFileSuccess-->
     
	<!-- 没有简历请上传 -->
    <div class="popup" id="deliverResumesNo">
        <table width="100%">
            <tbody><tr>
                <td align="center"><p class="font_16">你还没有简历，请先上传一份</p></td>
            </tr>
        	<tr>
            	<td align="center">
                    <form>
                        <a class="btn_addPic" href="javascript:void(0);">
                        	<span>选择上传文件</span>
                        	<input type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload1')" class="filePrew" id="resumeUpload1" name="newResume" size="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M">
                        </a>
                    </form>
                </td>
            </tr>
        	<tr>
            	<td align="center">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumesNo-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUpload">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">请上传标准格式的word简历</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		操作说明：<br>
                		打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#fileResumeUpload-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div class="popup" id="fileResumeUploadSize">
        <table width="100%">
            <tbody><tr>
                <td>
                	<div class="f18 mb10">上传文件大小超出限制</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		提示：<br>
                		单个附件不能超过10M，请重新选择附件简历！
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a title="上传附件简历" href="#uploadFile" class="inline btn cboxElement">重新上传</a>
            	</td>
            </tr>
        </tbody></table>
    </div><!--/#deliverResumeConfirm-->
    
</div>
<!------------------------------------- end ----------------------------------------->  

<script src="style/js/Chart.min.js" type="text/javascript"></script>
<script src="style/js/profile11.min.js" type="text/javascript"></script>
<!-- <div id="profileOverlay"></div> -->
<div class="" id="qr_cloud_resume" style="display: none;">
	<div class="cloud">
		<img width="134" height="134" src="">
		<a class="close" href="javascript:;"></a>
	</div>
</div>
<script>
$(function(){
	$.ajax({
        url:ctx+"/mycenter/showQRCode",
        type:"GET",
        async:false
   	}).done(function(data){
        if(data.success){
             $('#qr_cloud_resume img').attr("src",data.content);
        }
   	}); 
	var sessionId = "resumeQR"+314873;
	if(!$.cookie(sessionId)){
		$.cookie(sessionId, 0, {expires: 1});
	}
	if($.cookie(sessionId) &amp;&amp; $.cookie(sessionId) != 5){
		$('#qr_cloud_resume').removeClass('dn');
	}
	$('#qr_cloud_resume .close').click(function(){
		$('#qr_cloud_resume').fadeOut(200);
		resumeQR = parseInt($.cookie(sessionId)) + 1;
		$.cookie(sessionId, resumeQR, {expires: 1});
	});
});
</script>
			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->


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