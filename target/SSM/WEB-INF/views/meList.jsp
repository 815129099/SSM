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
    <meta charset="UTF-8">
    <title>用户列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link href="style/css/style20160105.css" rel="stylesheet">
    <link href="http://apps.bdimg.com/libs/fontawesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
   	<link rel="stylesheet" href="style/css/table.css">
   	<link rel="stylesheet" href="style/css/bootstrap.min.css">

  </head>


  <body>
    <div class="x-body">
<div class="container" style="padding-top:30px;height:100%;weight:80%;">
	<div class="content">
		<!-- Content wrapper -->
		<div class="wrapper">
			<!--主页-->
			<div>
				<!-- Table with toolbar -->
				<div class="widget">
					<!--查询条件-->
					<div class="well">
						<form class="form-inline" role="form" id="query">
							<div class="form-group" style="margin-right:10px">
								<label>电子邮箱:</label>
								<input type="text" class="form-control" name="email" id="email" maxlength="128" placeholder="电子邮箱">
							</div>

							<div class="form-group" style="margin-right:10px">
								<label>用户类型:</label>
								<select name="type" id="type" class="form-control">
								  <option value=""></option>
								  <option value="company">公司用户</option>
								  <option value="student">学生用户</option>
								</select>
							</div>
							<div class="form-group">
							<button type="button" class="btn btn-warning" id="querybtn">查询</button>
							</div>
						</form>
					</div>
					<!-- /well -->
				</div>

				<!--/数据表格-->
				<ul class="toolbar">
					<li><a href="javascript:void(0)" id="addUser"><i class="fa fa-user"></i><span>添加用户</span></a></li>
					<li><a href="javascript:void(0)" id="lockUser" onclick='lockUser()'><i class="fa fa-toggle-on"></i><span>锁定</span></a></li>
                    <li><a href="javascript:void(0)" id="clearUser" onclick='clearUser()'><i class="fa fa-toggle-off"></i><span>解锁</span></a></li>
				</ul>
					<table class="table table-striped table-bordered table-hover" id="userTable">
						<thead>
							<tr>
							<th><input type="checkbox" id="chkAll"/></th>
							<th>#</th>
							<th>电子邮箱</th>
							<th>用户类型</th>
							<th>状态</th>
							<th>操作</th>
							</tr>
						</thead>
						<tbody>
						</tbody>
							<tfoot>
								<tr>
									<td colspan="6">
									<div id="total" class="pull-left" style="padding-top:20px;padding-left:10px">&nbsp;</div>
									<div class="pull-right">
			                           <ul class="pagination" id="pagination"></ul>
			                        </div>
									</td>
								</tr>
							</tfoot>
						</table>


		</div>
				<!--重置密码-->
				<div class="modal fade" id="resetModal" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
							<!--
								<button type="button" class="close" aria-hidden="true">&times;</button>
								-->
								<h4 class="modal-title" id="myModalLabel">修改用户密码</h4>
							</div>
					        <form role="form" id="resetform" method="post">
                            <input type="hidden" name="id" id="id"/>
							<div class="modal-body">
								<div class="well">
									<div id="sucUpd" class="alert alert-success">
									 <button type="button" class="close" id="close" aria-hidden="true">
                                     &times;
                                     </button>
										<strong>修改成功！</strong>
									</div>
									<div id="failUpd" class="alert alert-warning">
									 <button type="button" class="close" id="close"   aria-hidden="true">
                                      &times;
                                     </button>
										<strong>修改失败！</strong>
									</div>

									<div class="alert alert-danger hide" id="tipError" style='color: white'>&nbsp;</div>
                                        <div class="form-group" style="margin-right: 10px">
											<label>登录名:</label> <input type="text"
												class="form-control" name="email" id="email" readonly>
										</div>
										<div class="form-group" style="margin-right: 10px">
											<label>新密码:</label> <input type="password"
												class="form-control" name="password" id="password" placeholder="新密码">
										</div>
										<div class="form-group" style="margin-right: 10px">
											<label>确认密码:</label> <input type="password"
												class="form-control" name="password2" id="password2" placeholder="确认密码">
										</div>

								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" id="cancel">取消</button>
								<button type="submit" class="btn btn-warning" id="resetBtn">重置密码</button>
							</div>
                         </form>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- 重置密码-->

				<!--添加用户-->
				<div class="modal fade" id="addModal" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title" id="myModalLabel">添加用户</h4>
							</div>
					        <form role="form" id="addform" method="post">
							<div class="modal-body">
								<div class="well">
									<div id="sucUpd" class="alert alert-success">
									 <button type="button" class="close" id="close" aria-hidden="true">
                                     &times;
                                     </button>
										<strong>添加成功！</strong>
									</div>
									<div id="failUpd" class="alert alert-warning">
									 <button type="button" class="close" id="close"   aria-hidden="true">
                                      &times;
                                     </button>
										<strong>添加失败！</strong>
									</div>

									<div class="alert alert-danger hide" id="tipError" style='color: white'>&nbsp;</div>
                                        <div class="form-group" style="margin-right: 10px">
											<label>邮箱:</label> <input type="text"
												class="form-control" name="email" id="email" placeholder="电子邮箱">
										</div>
										<div class="form-group" style="margin-right: 10px">
											<label>密码:</label> <input type="password"
												class="form-control" name="password" id="password" placeholder="密码">
										</div>
										<div class="form-group" style="margin-right: 10px">
											<label>确认密码:</label> <input type="password"
												class="form-control" name="password2" id="password2" placeholder="确认密码">
										</div>
										<div class="form-group" style="margin-right: 10px">
											<label>用户类型:</label>
											<select name="type" id="type" class="form-control">
											    <option value="company">企业用户</option>
												<option value="student">学生用户</option>
											</select>
										</div>

								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal" id="cancel">取消</button>
								<button type="submit" class="btn btn-warning" id="addBtn">添加</button>
							</div>
                         </form>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- /添加用户-->

                <!--修改用户-->
				<div class="modal fade" id="updateModal" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
							<!--
								<button type="button" class="close" aria-hidden="true">&times;</button>
								-->
								<h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
							</div>
					        <form role="form" id="updateform" method="post">
							<div class="modal-body">
								<div class="well">
									<div id="sucUpd" class="alert alert-success">
									 <button type="button" class="close" id="close" aria-hidden="true">
                                     &times;
                                     </button>
										<strong>修改成功！</strong>
									</div>
									<div id="failUpd" class="alert alert-warning">
									 <button type="button" class="close" id="close"   aria-hidden="true">
                                      &times;
                                     </button>
										<strong>修改失败！</strong>
									</div>

									<div class="alert alert-danger hide" id="tipError" style='color: white'>&nbsp;</div>
                                        <div class="form-group" style="margin-right: 10px">
											<label>登录名:</label> <input type="text"
												class="form-control" name="email" id="email" placeholder="电子邮箱" readonly>
										</div>
										<div class="form-group" style="margin-right: 10px">
											<label>用户名:</label> <input type="text"
												class="form-control" name="realname" id="realname" placeholder="用户名">
										</div>
										<div class="form-group" style="margin-right: 10px">
											<label>手机号码:</label> <input type="text"
												class="form-control" name="mobile" id="mobile" placeholder="手机号码">
										</div>
										<div class="form-group" style="margin-right: 10px">
											<label>权限:</label>
											<select name="type" id="type" class="form-control">
											    <option value="普通用户">普通用户</option>
												<option value="管理员">管理员</option>
											</select>
										</div>

								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal" id="cancelbtn">取消</button>
								<button type="submit" class="btn btn-warning" id="addBtn">修改</button>
							</div>
                         </form>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal -->
				</div>
				<!-- 修改用户-->
				<div class="col-lg-1"></div>
</div>
</div>
</div>
    </div>
      <script src="style/js/jquery.1.10.1.min.js"></script>
        <script src="style/js/bootstrap.min.js"></script>
        <script type="text/javascript"  src="style/lib/layui/layui.js" ></script>
        <script type="text/javascript" src="style/js/xadmin.js"></script>
        <script src="style/js/service.ddlist.jquery.min.js"></script>

     <!-- 表单验证 -->
        <script src="style/js/validate/jquery.validate.min.js"></script>
        <script src="style/js/validate/additional-methods.js"></script>
         <script type="text/javascript" src="style/js/jquery.dataTables.min.js"></script>
    <!-- 表格 -->
        <script type="text/javascript" src="style/js/common1.js"></script>
     <!-- 分页 -->
        <script src="style/js/jqPaginator/jqPaginator.min.js"></script>
    <script type="text/javascript">
    //表单验证
    $.validator.setDefaults({
        debug: true
    });

    $(document).ready(function(){
    	//查询全部用户列表
    	listUser();
    $("#chkAll").click(function(){
    	chkAll("chkAll","chk");
    });
    	//查询功能
    	$("#querybtn").click(function(){
    		listUser();
    	});

    	//添加用户
            	$("a#addUser").click(function(){

            	    $("#addform #email").val("");
            		$("#addform #type").val("company");
            		$("#addform #password").val("");
            		$("#addform #password2").val("");
            		$("label.error").remove();

            		$("div#addModal #sucUpd").hide();
            		$("div#addModal #failUpd").hide();

            		$("#addModal").modal('show');

            		//验证用户名是否已用
            		$("#addform #email").blur(function(){
            			$("#addform #email").parent().find("label.error").remove();
            			$.post("isEmailExist.do",{"email":$("#addform #email").val()},function(response){
                            if(response.tip=="error"){
                            	$("#addform #email").parent().append("<label class='error'>该电子邮箱已被注册</label>");
                            	$("#addform #email").focus();
            				}
            			});
            		});

            		//设置表单验证
            		$("#addform").validate({
            			  //onfocusout:false,
            			  onkeyup:false,
            		      rules:{
            		    	  email:{required:true,email:true},
            		    	  password:{required:true,rangelength:[6,20]},
            		    	  password2:{equalTo:"#addform #password"}
            		      },
            		      messages:{
            		    	  email:{required:"登录名不能为空<br/>",email:"请输入正确的电子邮箱<br/>"},
            		    	  password:{required:"密码不能为空<br/>",rangelength:"密码长度在6~20位之间<br/>"},
            		    	  password2:{equalTo:"两次密码输入不一致<br/>"},
            		      },
            		      submitHandler:function(){
            					if(!$("#addform").valid()){
            						$("div#addModal #sucUpd").hide();
            						$("div#addModal #failUpd").hide();
            					}
            					else{
            					$.post("addUser.do",
            							{"email":$("#addform #email").val(),
            						     "password":$("#addform #password").val(),
            						     "type":$("#addform #type").val()
            						     },
            						     function(response){
            						if(response.tip=="success"){
            							   $("div#addModal #sucUpd").show();
            							    $("div#addModal #failUpd").hide();
            								$("#addform #password").val("");
            								$("#addform #password2").val("");
            								 //关闭窗口后刷新列表
            							    $("#addform #cancel").click(function(){
            							    	listUser();
            							    });
            						   }
            						   else{
            							   $("div#addModal #failUpd").show();
            							   $("div#addModal #sucUpd").hide();
            						   }
            					});
            				}
            		      }
            		  });
            	});

    });
    	function listUser(){
    	//查询条件
    	var email = $("form#query #email").val();

    	var type = $("form#query #type").val();

    	//获取用户列表
    	$.post('listUser.do',
    	       {"email":email,
    		    "type":type
    	       },
    	       function(response){
    	       console.log(response.page);
    	    	 //生成结果列表
    			 initDataTable("userTable", 6, new Array("email","type","state"), response.page,
    						"listUser.do",  {"email":email,
    						    "type":type
    					       }, true, true, true, true,true,
    					       "<a href='javascript:void(0)' id='update' title='修改' style='padding-right:20px' onclick='resetPwd(this)'><i class='fa fa-edit'></i></a>"+
    					       "<a href='javascript:void(0)' title='删除' id='del' style='padding-right:20px' onclick='delUser(this)'><i class='fa fa-trash'></i></a>"+
    					       "<a href='javascript:void(0)' title='查看信息'  style='padding-right:20px' onclick='preview(this)'><i class='fa fa-wrench'></i></a>",
    					       "id"
    			 );
    	    	 //设置查询条件
    			 $("form#query #email").val(email);
    			 $("form#query #type").val(type);
    	       }
    	);
    	}

    	//删除用户
    	function delUser(obj){
    		if(confirm("是否删除该用户")){
    			var id =  $(obj).parent("td").attr("id");
    			alert(id);
    			$.post("delUser.do",{"id":id},function(response){
                				if(response.tip=="success"){
                					alert("用户删除成功");
                					listUser();
                				}
                				else if(response.tip=="error"){
                					alert("用户删除失败!"+response.msg);
                				}
                			});
    		}
    	}

    	//查看用户
        	function preview(obj){
        			var id =  $(obj).parent("td").attr("id");
        			window.open("pre?id="+id);
        	}

    function lockUser(){
    	var row,id;
    	var num = 0;
    	 $("input[type='checkbox']").each(function(){
    		 if($(this).is(":checked"))
              {
              num++;
    			 row = $(this).parent("td").parent("tr");
    			 id = row.find("td #update").parents("td").attr("id");
              }
    		        	 $.post("lockUser.do",
    					{"id":id});
    		        	  listUser();
    	 });
    	 if(num==0){
    	 alert("请选择用户");
    	 }
    	 $("#chkAll").attr("checked",false);
    };

    function clearUser(){
    	var row,id;
    	var num = 0;
    	 $("input[type='checkbox']").each(function(){
    		 if($(this).is(":checked"))
              {
              num++;
    			 row = $(this).parent("td").parent("tr");
    			 id = row.find("td #update").parents("td").attr("id");
              }
    		        	 $.post("clearUser.do",
    					{"id":id});
    		        	  listUser();
    	 });
    	 if(num==0){
    	 alert("请选择用户");
    	 }
    	 $("#chkAll").attr("checked",false);
    };

    //重置密码
    	function resetPwd(obj){
    		//初始化模态窗口
    		var id = $(obj).parent("td").attr("id");
    		var email = $(obj).parent("td").siblings("td").eq(2).html();
    		$("#resetform #id").val(id);
    		$("#resetform #email").val(email);
    		$("#resetform #password").val("");
    		$("#resetform #password2").val("");
    		$("label.error").remove();

    		$("div#resetModal #sucUpd").hide();
    		$("div#resetModal #failUpd").hide();

    		$("#resetModal").modal('show');

    		//设置表单验证
    		 $("#resetform").validate({
    			  onfocusout:false,
    			  onkeyup:false,
    		      rules:{
    		    	  password:{required:true,rangelength:[6,20]},
    		    	  password2:{equalTo:"#password"}
    		      },
    		      messages:{
    		    	  password:{required:"密码不能为空<br/>",rangelength:"密码长度在6~20位之间<br/>"},
    		    	  password2:{equalTo:"两次密码输入不一致<br/>"},
    		      }
    		    });

    		$("#resetform").submit(function(){
    			if(!$("#resetform").valid()){
    				$("div#resetModal #sucUpd").hide();
    				$("div#resetModal #failUpd").hide();
    			}
    			else{
    			$.post("resetPassword.do",{"id":id,"password":$("#resetform #password").val()},function(response){
    				if(response.tip=="success"){
    					   $("div#resetModal #sucUpd").show();
    					    $("div#resetModal #failUpd").hide();
    						$("#resetform #password").val("");
    						$("#resetform #password2").val("");
    				   }
    				   else{
    					   $("div#resetModal #failUpd").show();
    					   $("div#resetModal #sucUpd").hide();
    				   }
    			});
    		}
    			return false;
    		});

    	}
    </script>
  </body>

</html>