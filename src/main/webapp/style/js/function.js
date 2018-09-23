// JavaScript Document
$(function () {
	$('.tabtitle li').click(function () {
		var index = $(this).index();
		$(this).addClass('tabhover').siblings('li').removeClass('tabhover');
		//$('.tabcontent').eq(index).slideDown(800).siblings('.tabcontent').slideUp(1000);
		$('.tabcontent').eq(index).show().siblings('.tabcontent').hide();
	});
  var t = 0;
})

$(function(){
	var flag = 1;
	$(".more").click(function(){ 
		var str=$(this).text();
		if(str == "查看更多"){flag = 1;}
		else{flag = 0;}
		if (0 == flag) { 
			$(this).parent(".infocontent").children(".pro-content").css("height","5em"); 
			 $(this).text("查看更多");
			flag = 1;  
		} else {  
			$(this).parent(".infocontent").children(".pro-content").css("height","auto"); 
			$(this).text("隐藏更多");
			flag = 0;  
		}
	});	
})

$(function () {
	try{
		$('#datetimepicker8').datetimepicker({
			onGenerate:function( ct ){
				$(this).find('.xdsoft_date')
					.toggleClass('xdsoft_disabled');
			},
			minDate:'-1970/01/2',
			maxDate:'+1970/01/2',
			timepicker:false
		});
		
		$('#datetimepicker9').datetimepicker({
			onGenerate:function( ct ){
				$(this).find('.xdsoft_date')
					.toggleClass('xdsoft_disabled');
			},
			minDate:'-1970/01/2',
			maxDate:'+1970/01/2',
			timepicker:false
		});
	}catch(e){}
});
  


//下拉框
$(function () {
	try{
		$('#provincesList1').ddlist({
		  width: 270,
		  selectionIndex: 0,
		  onSelected: function (index, value, text) {
			$('#provinceSelect1').text(text + ' (value: ' + value + ')');
		  }
		});
	}catch(e){}
});
  
  
$(function(){
	try{
		$(".B_Demo").PicCarousel({
			"width":1000,		//幻灯片的宽度
			"height":350,		//幻灯片的高度
			"posterWidth":520,	//幻灯片第一帧的宽度
			"posterHeight":350, //幻灯片第一张的高度
			"scale":0.9,		//记录显示比例关系
			"speed":500,		//记录幻灯片滚动速度
			"autoPlay":true,	//是否开启自动播放
			"delay":5000,		//自动播放间隔
			"verticalAlign":"middle"	//图片对齐位置
		});
	}catch(e){}
})


$(function(){
	try{
		$(".checklist input:checked").parent().addClass("selected");
	}catch(e){}
	
	$(".checklist .checkbox-select").click(
		function(event) {
			event.preventDefault();
			$(this).parent().addClass("selected");
			$(this).parent().find(":checkbox").attr("checked","checked");
			
		}
	);
	$(".checklist .checkbox-deselect").click(
		function(event) {
			event.preventDefault();
			$(this).parent().removeClass("selected");
			$(this).parent().find(":checkbox").removeAttr("checked");
			
			
		}
	);	
	$(".checkbox-plus").click(function(){
		$(".addnewtag").css("display","block");
	
	});
	$(".btnaddtag").click(function(){
		$(".addnewtag").css("display","none");
	
	});
	
	
	//新增项目成果
	$(".resultclose a").click(function(){
		var index=$(this).index(".resultclose a");
		$('.resultsinfo:eq('+index+')').remove();
	});
	
	$(".newsclose a").click(function(){
		var index=$(this).index(".newsclose a");
		$('.newslist li:eq('+index+')').remove();
	});
	
	$(".hotclose a").click(function(){
		var index=$(this).index(".hotclose a")+1;
		var div = $("div[name=h"+index+"]");
		$(div).find("#head"+index).val("");
		$(div).find("#h"+index).val("");
		$(div).find("#artistname"+index).val("");
		$(div).find("#artisttype"+index).val("");
		$(div).find("#artist").empty();
		$(div).find("#artist").append('<i class="fa fa-photo" style="font-size:30px;margin-top:15px;margin-left:25px"></i><br/>'+
				                    '<i class="fa fa-plus" style="font-size:12px;margin-left:5px"></i>上传图片<br/>');
	});

	//添加其它作品图片
	/*$(".addresultsbtn").click(function(){
		alert();
		var $demohtml = $("#resultsinfo");
		$demohtml.clone().appendTo("#resultsbox");
	
		//var num = parseInt($(".resultsinfo-demo h2 b").text());
		//var num=parseInt(num+1);
		//$(".resultsinfo-demo h2 b").text(num);
		
		$(".resultclose a").unbind("click");
		$(".resultclose a").click(function(){
			var index=$(this).index(".resultclose a");
			$('.resultsinfo:eq('+index+')').remove();
			//num=parseInt(num-1);
			//$(".resultsinfo-demo h2 b").text(num);
		});
	})*/
	
})

function addFile(){

		var $demohtml = $("#resultsinfo");
		$demohtml.clone().appendTo("#resultsbox");
		
		document.getElementById('uploadtip').innerHTML = '';
		$("#resultsinfo #uploadother").hide();
	
		//var num = parseInt($(".resultsinfo-demo h2 b").text());
		//var num=parseInt(num+1);
		//$(".resultsinfo-demo h2 b").text(num);
		$(".resultclose a").click(function(){
			var index=$(this).index(".resultclose a");
			$('.resultsinfo:eq('+index+')').remove();
			//num=parseInt(num-1);
			//$(".resultsinfo-demo h2 b").text(num);
		});
		
		$(".resultclose a").unbind("click");
		$(".resultclose a").click(function(){
			var index=$(this).index(".resultclose a");
			$('.resultsinfo:eq('+index+')').remove();
			//num=parseInt(num-1);
			//$(".resultsinfo-demo h2 b").text(num);
		});
	}
	

$(function(){
	var num=$(".workrow .thumbnail").length;
	if(num == 0)
	{
		$(".addworkbtn").css("float","none");
	}
	
	var num1=$(".prorow .thumbnail").length;
	if(num1 == 0)
	{
		$(".addworkbtn1").css("float","none");
	}
})

$(function(){
    function tabs(tabTit,on,tabCon){
	$(tabCon).each(function(){
	  $(this).children().eq(0).show();
	  });
	$(tabTit).each(function(){
	  $(this).children().eq(0).addClass(on);
	  });
     $(tabTit).children().click(function(){
        $(this).addClass(on).siblings().removeClass(on);
         var index = $(tabTit).children().index(this);
         $(tabCon).children().eq(index).show().siblings().hide();
    });
     }
    tabs(".tabtitle_2","on_2",".tabcon_2");
  
})

function getslider(){
if(document.body.clientWidth >= 767){
document.addEventListener('DOMContentLoaded', function () {
            var ease= document.querySelector('.js_ease');
            lory(ease, {
                infinite: 4,
                slidesToScroll: 4,
                slideSpeed: 300,
                ease: 'cubic-bezier(0.455, 0.03, 0.515, 0.955)'
            });
        });
document.addEventListener('DOMContentLoaded', function () {
            var ease= document.querySelector('.js_ease1');
            lory(ease, {
                infinite: 4,
                slidesToScroll: 4,
                slideSpeed: 300,
                ease: 'cubic-bezier(0.455, 0.03, 0.515, 0.955)'
            });
        });
}
}

$(function(){
	try{
		getslider();
	}catch(e){}
})
window.onresize = function (){
	try{
		getslider();
	}catch(e){}
}



//首页图片组左右滚动/
$(function() {
	try{
  var owl = $('.owl-carousel');
  owl.owlCarousel({
	margin: 30,
	nav: true,
	loop: true,
	responsive: {
	  0: {
		items: 1
	  },
	  600: {
		items: 3
	  },
	  1000: {
		items: 3
	  }
	}
  })
  }catch(e){}
})

//首页发现精彩艺术品
$(function() {
	try{
  var owl = $('.owl-carousel1');
  owl.owlCarousel({
	margin: 30,
	nav: true,
	loop: true,
	responsive: {
	  0: {
		items: 1
	  },
	  600: {
		items: 1
	  },
	  1000: {
		items: 1
	  }
	}
  })
  }catch(e){}
})

//首页合作客户
$(function() {
	try{
  var owl = $('.owl-carousel6');
  owl.owlCarousel({
	margin: 0,
	nav: true,
	loop: true,
	responsive: {
	  0: {
		items: 1
	  },
	  600: {
		items: 1
	  },
	  1000: {
		items: 6
	  }
	}
  })
  }catch(e){}
})


//倒计时
var secondnum = GetDateDiff('2017-01-30', "second");
var intDiff = parseInt(secondnum);//倒计时总秒数量
function timer(intDiff){
	window.setInterval(function(){
	var day=0,
		hour=0,
		minute=0,
		second=0;//时间默认值		
	if(intDiff > 0){
		day = Math.floor(intDiff / (60 * 60 * 24));
		hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
		minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
		second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
	}
	if (minute <= 9) minute = '0' + minute;
	if (second <= 9) second = '0' + second;
	$('.days').html(day+"");
	$('.hours').html('<s id="h"></s>'+hour+'');
	$('.minutes').html('<s></s>'+minute+'');
	$('.seconds').html('<s></s>'+second+'');
	intDiff--;
	}, 1000);
} 
$(function(){
	timer(intDiff);
});	
function GetDateDiff(startTime, diffType) {    
startTime = startTime.replace(/-/g, "/");      
diffType = diffType.toLowerCase();  
var sTime = new Date(); //开始时间  
var eTime = new Date(startTime);
//作为除数的数字  
var divNum = 1;  
	switch (diffType) {  
	case "second":  
	divNum = 1000;  
	break;  
	case "minute":  
	divNum = 1000 * 60;  
	break;  
	case "hour":  
	divNum = 1000 * 3600;  
	break;  
	case "day":  
	divNum = 1000 * 3600 * 24;  
	break;  
	default:  
	break;  
	}  
	return parseInt((eTime.getTime() - sTime.getTime()) / parseInt(divNum)); 
} 



/*上传图片div*/
$(function () {
    $(".showbtn").click(function () {
		var index=0;
        $("#popbox-upload-img").css({
            display: "block", height: $(document).height()
        });
        var $box = $('.boxyzsm:eq('+index+')');
		//alert($box.html());
        $box.css({
            //设置弹出层距离左边的位置
            left: "0",
            //设置弹出层距离上面的位置
            top: ($(window).height() - $box.height()) / 2 + $(window).scrollTop() - 46 + "px",
            display: "block"
        });
        $("body").css({overflow:"hidden"});
    });
    //点击关闭按钮的时候，遮罩层关闭
    $(".close").click(function () {
        $("#popbox-upload-img,.boxyzsm").css("display", "none");
        $("body").css({overflow:"visible"});
    });
});



/*业主上传项目  显示隐藏效果*/
$(function(){
	var flag = 1;
	$(".vis-hed").click(function(){
	    var f=$(this).hasClass("open");
	    if(f == true){flag = 1;}
		else{flag = 0;}
	    
		if (0 == flag) { 
			$(this).parent(".developer-box").children(".developer-box-content").css("display","block");
			$(this).addClass("open");
			flag = 0;  
		} else {  
			$(this).parent(".developer-box").children(".developer-box-content").css("display","none");
			$(this).removeClass("open");
			flag = 1;  
		}
	});	
})


/*翻牌子*/
var turn = function(target,time,opts){
	target.find('a').hover(function(){
		$(this).find('img').stop().animate(opts[0],time,function(){
			$(this).hide().next().show();
			$(this).next().animate(opts[1],time);
		});
	},function(){
		$(this).find('.info').animate(opts[0],time,function(){
			$(this).hide().prev().show();
			$(this).prev().animate(opts[1],time);
		});
	});
}
var verticalOpts = [{'width':0},{'width':'180px'}];
turn($('#vertical'),100,verticalOpts);
var horizontalOpts = [{'height':0,'top':'120px'},{'height':'240px','top':0}];
turn($('#horizontal'),100,horizontalOpts);


//弹出登录注册框
jQuery(document).ready(function() {
	$('.launch-modal').on('click', function(e){
		e.preventDefault();
		$( '#' + $(this).data('modal-id') ).modal({backdrop: 'static' });
		$(".login-form").find('input[type="text"], input[type="password"], textarea').each(function(){
	 		 $(this).val("");
	 	});
		$("#tiperror").html("");
		$("#errortip").html("");
		$("label.error,span.error").remove();
		$("#getV").html("获取验证码");
		clearInterval(remain);
		$("#getV").attr("href","javascript:getValidate()")
	});
	
	$('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function() {
 	$(this).removeClass('input-error');
});
$('.login-form').on('submit', function(e) {
 	$(this).find('input[type="text"], input[type="password"], textarea').each(function(){
 		if( $(this).val() == "" ) {
 			e.preventDefault();
 			$(this).addClass('input-error');
 		}
 		else {
 			$(this).removeClass('input-error');
 		}
 	});
});
});

//登录
function login(url){
	$.post("login",{logid:$("#logform #logid").val(),password:$("#logform #password").val()},function(response){
		if(response.logtip=="success"){
			var user = response.user;
			if(user.isFirst==1){
				location.href="editor_1.jsp";
			}
			else{
				if(url){
					location.href = url;
				}else{
					location.reload();
				}
				
			}
		}
		else{
			$("div#tiperror").html("<font color='red'>用户名或密码错误</font>");
		}
	});
}

//验证注册邮箱
function checkEmail(){
	$("#regform #email").attr("placeholder","用户名");
	$("#regform #email").siblings("label").remove();
	if($("#regform #email").val()!=""){
	$.post("user/isEmailExist",{email:$("#regform #email").val()},function(response){
		if(response.tip=="error"){
			regvalid = false;
			$("#regform #email").after("<label class='error'>该电子邮箱已注册</label>")
		}
	});
	}
}

//验证手机号码
function checkMobile(){
	$("#regform #mobile").attr("placeholder","手机");
	$("#regform .tel").siblings("label").remove();
	if($("#regform #mobile").val()!=""){
	$.post("user/isMobileExist",{mobile:$("#regform #mobile").val()},function(response){
		if(response.tip=="error"){
			regvalid = false;
			$("#regform .tel").after("<label class='error'>该手机号码已注册</label>")
		}
	});
	}
}

function tipEmail(){
	$("#regform #email").attr("placeholder","请输入您的电子邮箱")
}

function tipMobile(){
	$("#regform #mobile").attr("placeholder","请输入11位的中国大陆手机号码")
}

//验证个人基本信息
$(function(){
var regvalid = true;
$("#regform").validate({
	  //onfocusout:false,
	  onkeyup:false,
	  ignore: ":input[type=file],:input[type=hidden]",
      rules:{
    	  email:{required:true,email:true},
    	  telvalidate:{required:true},
    	  password:{required:true,minlength:6,maxlength:20},
    	  password2:{equalTo:"#regform #password"}
      },
      messages:{
    	  email:{required:"用户名不能为空",email:"电子邮箱格式不正确"},
    	  telvalidate:{required:"验证码不能为空"},
    	  password:{required:"密码不能为空",minlength:"密码长度不小于6位",maxlength:"密码长度不能超过20位"},
    	  password2:{equalTo:"两次密码输入不一致"}
      },
      debug:true,
      submitHandler:function(form){
    	    if($("#regform #mobile").val()==""){
    	    	$(".tel").after("<span class='error' style='color:red;font-weight:bold'>手机号码不能为空</span>");
    	    	regvalid = false;
    	    }
    		if($("#regform").valid()&&regvalid){
    			$.post("user/register",
    					{email:$("#regform #email").val(),
    				     mobile:$("#regform #mobile").val(),
    				     telvalidate:$("#regform #telvalidate").val(),
    				     password:$("#regform #password").val()
    					},
    					function(response){
    						if(response.tip=="success"){
    							alert("恭喜你，注册成功！");
    							$("#modal-register").modal("hide");
    						}
    						else{
    							$("#errortip").html("<font color='red'>注册失败！"+response.msg+"</font>");
    						}
    					});
    			}
      }    
});	
});


//获取短信验证码
var vtime;//发送验证码的时间
var remain;
function getValidate(){
	//清空原有提示信息
	$(".tel").siblings("label").remove();
	//验证手机号是否为空
	var mobile = $("#mobile").val();
	if(mobile==""){
		$(".tel").after("<label class='error'>手机号码不能为空</label>");
	}
	else if(!/^1[3|4|5|8|7]\d{9}|\d{11}$/.test(mobile)){
		$(".tel").after("<label class='error'>手机号码格式不正确</label>");
	}
	else{
	$("#getV").addClass("disable");//设置获取验证码超链接不可用
	$.post("user/getValidate",{mobile:$("#mobile").val()},function(response){		
		if(response==0){
			//短信发送成功
			$(".tel").siblings("label").remove();
			$(".tel").after("<label class='error' style='color:gray'>短信验证码已发送，请在10分钟内填写</label>");			
			vtime = new Date();			
			remain = setInterval("RemainTime()",1000);
		}
		else{
			//短信发送失败
			$(".tel").after("<label class='error'>短信验证码发送失败</label>");
		    $("#getV").html("获取验证码");			
		}
	});
	}
}

//验证码有效期倒计时
function RemainTime() {
	var now = new Date();
	if(now.getTime()-vtime.getTime()<60*1000){
		$("#getV").html((60-Math.ceil((now.getTime()-vtime.getTime())/1000))+"秒钟后重新获取短信验证码");
		$("#getV").attr("href","javascript:void(0)")
	}
	else{
		$("#getV").html("获取验证码");
		clearInterval(remain);
		$("#getV").attr("href","javascript:getValidate()")
	}
} 

//判断一个数是否为整数
function isInteger(obj) {
	 return (obj | 0) === obj
}