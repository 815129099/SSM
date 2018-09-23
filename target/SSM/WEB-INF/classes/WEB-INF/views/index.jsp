<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page errorPage="showError.jsp" %>
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
<title>大学生兼职平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="大学生兼职平台" name="description">
<meta content="大学生兼职平台" name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="style/css/popup.css"/>
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<style>
  .con{
    display: inline-block;
    vertical-align:middle;
    width:200px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
 }
</style>
<script type="text/javascript">
var youdao_conv_id = 271546;
var email = "${sessionScope.email}";
var type = "${sessionScope.type}";
$(document).ready(function(){

$.ajax({
    type:"post",
    url:"allResume",
    data:{},
    dataType:"json",
    success:function(response){
        obj = response.list;
        var html = "";
         for(var i = 0;i<obj.length;i++){
            html+='<li class="odd clearfix" style="width:750px;margin-top:8px;"><div class="hot_pos_l" ><div class="mb10"><a href="applyRe?id='+obj[i].id+'" target="_blank" style="text-decoration:blink ">'
            +obj[i].jobName+'</a></div><div style="float:left;"><span><em class="c7">兼职类型： </em>'
            +obj[i].jobName+'</span> <br /><span><em class="c7">人数：</em>'
            +obj[i].number+'</span></div><div style="float:left;"><span class="con"><em class="c7">时间：</em>'
            +obj[i].time+'</span><br /><span class="con"><em class="c7">地点：</em>'
            +obj[i].department+'</span></div></div><div class="hot_pos_r" style="width:350px;"><div class="apply" style="margin-top:25px;"><a href="applyRe?id='+obj[i].id+'" target="_blank"  style="width:120px;height:40px;text-align:center;line-height:40px;">报名参加</a></div><div class="mb10" style="margin-top:35px;margin-left:30px;"><span><em class="c7">报酬： </em>'
            +obj[i].salary+'</span></div></div></li>'
         }
         $("#allRe").html(html);

    }
});


$("dl dd a,#search_button").click(function(){
var key = $(this).text();
if(key.length==0){
key = $("#search_input").val();
}
$.ajax({
    type:"post",
    url:"findResumeByName",
    data:{jobName:key},
    dataType:"json",
    success:function(response){
     obj = response.list;
            var html = "";
             for(var i = 0;i<obj.length;i++){
                html+='<li class="odd clearfix" style="width:750px;margin-top:8px;"><div class="hot_pos_l" ><div class="mb10"><a href="applyRe?id='+obj[i].id+'" target="_blank" style="text-decoration:blink ">'
                +obj[i].jobName+'</a></div><div style="float:left;"><span><em class="c7">兼职类型： </em>'
                +obj[i].jobName+'</span> <br /><span><em class="c7">人数：</em>'
                +obj[i].number+'</span></div><div style="float:left;"><span class="con"><em class="c7">时间：</em>'
                +obj[i].time+'</span><br /><span class="con"><em class="c7">地点：</em>'
                +obj[i].department+'</span></div></div><div class="hot_pos_r" style="width:350px;"><div class="apply" style="margin-top:25px;"><a href="applyRe?id='+obj[i].id+'" target="_blank" style="width:120px;height:40px;text-align:center;line-height:40px;">报名参加</a></div><div class="mb10" style="margin-top:35px;margin-left:30px;"><span><em class="c7">报酬： </em>'
                +obj[i].salary+'</span></div></div></li>'
             }
             $("#allRe").html(html);
    }
})
});
});


</script>
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="index" class="logo">
    			<img src="style/images/logo5.png" width="229" height="43" alt="大学生兼职平台" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current"><a href="index">首页</a></li>
    			<% if(session.getAttribute("type")!=null) { %>
    			<%if(session.getAttribute("type").equals("company")){%>
    			<li ><a href="comIndex" rel="nofollow">公司主页</a></li>
    			<li ><a href="create" rel="nofollow">兼职</a></li>
    			<%} else if(session.getAttribute("type").equals("student")){%>
    			<li ><a href="delivery" rel="nofollow">报名</a></li>
    			<li ><a href="stuResume" rel="nofollow">简历</a></li>
    			<li><a rel="nofollow" target="_blank" href="preview?email=${sessionScope.email}">预览</a></li>
    			<%} else if(session.getAttribute("type").equals("noCom")){%>
    			<li ><a href="company" rel="nofollow">完善公司信息</a></li>
    			<%} } else{%>
    			<li ><a href="login" rel="nofollow">企业版</a></li>
                <li ><a href="login" rel="nofollow">学生版</a></li>
                <%}%>
	    		<li><a href="login" rel="nofollow">登录</a></li>
               	<li><a href="register" rel="nofollow">注册</a></li>
	    	</ul>
        </div>
    </div><!-- end #header -->
    <div id="container">

		<div id="sidebar">
			<div class="mainNavs" id="kk">

					<div class="menu_box">
						<div class="menu_main">
							<h2>热门兼职 <span></span></h2>
			            </div>
					   	<div class="menu_sub dn">
                            <dl class="reset">
                                <dt><a href="#">热门兼职</a></dt>
                                <dd><a href="#">服务员</a>
                                    <a href="#">促销导购</a>
                                    <a href="#">打包分拣</a>
                                    <a href="#">礼仪模特</a>
                                    <a href="#">话务客服</a>
                                    <a href="#">家教助教</a>
                                    <a href="#">充场</a>
                                    <a href="#">问卷调查</a>
                                </dd>
                            </dl>
                        </div>
                    </div>

                      <div class="menu_box">
                                        						<div class="menu_main">
                                        							<h2>演艺达人<span></span></h2>
                                        			            </div>
                                        					   	<div class="menu_sub dn">
                                                                    <dl class="reset">
                                                                        <dt><a href="#">演艺达人</a></dt>
                                                                        <dd><a href="#">礼仪模特</a>
                                                                            <a href="#">群众演员</a>
                                                                            <a href="#">演出</a>
                                                                        </dd>
                                                                    </dl>
                                                                </div>
                                                            </div>

                   <div class="menu_box">
                   						<div class="menu_main">
                   							<h2>简单易做<span></span></h2>
                   			            </div>
                   					   	<div class="menu_sub dn">
                                               <dl class="reset">
                                                   <dt><a href="#">简单易做</a></dt>
                                                   <dd><a href="#">传单派发</a>
                                                       <a href="#">打包分拣</a>
                                                       <a href="#">充场</a>
                                                       <a href="#">问卷调查</a>
                                                       <a href="#">审核录入</a>
                                                       <a href="#">保洁</a>
                                                       <a href="#">地推拉访</a>
                                                   </dd>
                                               </dl>
                                           </div>
                                       </div>


                   <div class="menu_box">
                   						<div class="menu_main">
                   							<h2>跑腿办事<span></span></h2>
                   			            </div>
                   					   	<div class="menu_sub dn">
                                               <dl class="reset">
                                                   <dt><a href="#">跑腿办事</a></dt>
                                                   <dd><a href="#">挂号排队</a>
                                                       <a href="#">送餐员</a>
                                                       <a href="#">宠物寄养</a>
                                                       <a href="#">车票代购</a>
                                                   </dd>
                                               </dl>
                                           </div>
                                       </div>


                   <div class="menu_box">
                   						<div class="menu_main">
                   							<h2>室内推荐<span></span></h2>
                   			            </div>
                   					   	<div class="menu_sub dn">
                                               <dl class="reset">
                                                   <dt><a href="#">室内推荐</a></dt>
                                                   <dd><a href="#">话务客服</a>
                                                       <a href="#">促销导购</a>
                                                       <a href="#">文员</a>
                                                       <a href="#">展会协助</a>
                                                   </dd>
                                               </dl>
                                           </div>
                                       </div>



                    <div class="menu_box">
                    						<div class="menu_main">
                    							<h2>体力达人<span></span></h2>
                    			            </div>
                    					   	<div class="menu_sub dn">
                                                <dl class="reset">
                                                    <dt><a href="#">体力达人</a></dt>
                                                    <dd><a href="#">餐饮工</a>
                                                        <a href="#">服务员</a>
                                                        <a href="#">安保</a>
                                                        <a href="#">会展执行</a>
                                                        <a href="#">快递配送</a>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>



                    <div class="menu_box">
                    						<div class="menu_main">
                    							<h2>专业技能<span></span></h2>
                    			            </div>
                    					   	<div class="menu_sub dn">
                                                <dl class="reset">
                                                    <dt><a href="#">专业技能</a></dt>
                                                    <dd><a href="#">司机代驾</a>
                                                        <a href="#">技师技工</a>
                                                        <a href="#">美容美发</a>
                                                        <a href="#">月嫂阿姨</a>
                                                        <a href="#">销售房产</a>
                                                        <a href="#">经纪人</a>
                                                        <a href="#">保险</a>
                                                        <a href="#">在线老师</a>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>





                    <div class="menu_box">
                    						<div class="menu_main">
                    							<h2>特色职位<span></span></h2>
                    			            </div>
                    					   	<div class="menu_sub dn">
                                                <dl class="reset">

                                                    <dt><a href="#">特色职位</a></dt>
                                                    <dd><a href="#">校园代理</a>
                                                        <a href="#">家教助教</a>
                                                        <a href="#">健身教练</a>
                                                        <a href="#">翻译</a>
                                                        <a href="#">婚礼主持</a>
                                                        <a href="#">摄影摄像</a>
                                                        <a href="#">旅行导游</a>
                                                        <a href="#">美工设计</a>
                                                        <a href="#">创意策划</a>
                                                        <a href="#">财务会计</a>
                                                        <a href="#">项目外包</a>
                                                        <a href="#">软件开发</a>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>


                    <div class="menu_box">
                    						<div class="menu_main">
                    							<h2>优秀青年<span></span></h2>
                    			            </div>
                    					   	<div class="menu_sub dn">
                                                <dl class="reset">
                                                    <dt><a href="#">优秀青年</a></dt>
                                                    <dd><a href="#">志愿者</a>
                                                        <a href="#">救生员</a>
                                                        <a href="#">实习生</a>
                                                        <a href="#">社会义工</a>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>


                    <div class="menu_box">
                    						<div class="menu_main">
                    							<h2>其他<span></span></h2>
                    			            </div>
                    					   	<div class="menu_sub dn">
                                                <dl class="reset">
                                                    <dt><a href="#">其他</a></dt>
                                                    <dd><a href="#">临时工</a>
                                                        <a href="#">其他</a>
                                                    </dd>
                                                </dl>
                                            </div>
                                        </div>

					</div>
		</div>

		<div class="content">
        	        			<div id="search_box">

                    <ul id="searchType">
                	    <li class="type_selected">职位</li>
                	</ul>
                <div class="searchtype_arrow"></div>
                <input type="text" id="search_input" name = "kd"  tabindex="1" value=""  placeholder="请输入兼职名称，如：话务客服"  />
                <input type="submit" id="search_button" value="搜索" />

        </div>

        <div class="content">
<ul class="hot_pos reset" id="allRe"></ul>

</div>

<style>
.ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
.ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
.ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
.ui-menu-item a{display:block;overflow:hidden;}
</style>

<!-- <div id="loginToolBar">
	<div>
		<em></em>
		<img src="style/images/footbar_logo.png" width="138" height="45" />
		<span class="companycount"></span>
		<span class="positioncount"></span>
		<a href="#loginPop" class="bar_login inline" title="登录"><i></i></a>
		<div class="right">
			<a href="register.html?from=index_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
		</div>
		<input type="hidden" id="cc" value="16002" />
		<input type="hidden" id="cp" value="96531" />
	</div>
</div>
 -->
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="h/reset.html" class="fr">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有帐号？</div>
			<a href="register.html" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
		</div>
    </div><!--/#loginPop-->
</div>
<!------------------------------------- end ----------------------------------------->
<script type="text/javascript" src="style/js/Chart.min.js"></script>
<script type="text/javascript" src="style/js/home.min.js"></script>
<script type="text/javascript" src="style/js/count.js"></script>


<script type="text/javascript" src="style/js/core.min.js"></script>
<script type="text/javascript" src="style/js/popup.min.js"></script>

<!-- <script src="style/js/wb.js" type="text/javascript" charset="utf-8"></script>
 -->

</body>
</html>