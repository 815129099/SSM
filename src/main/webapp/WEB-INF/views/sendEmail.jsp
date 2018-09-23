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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发送邮件</title>
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jqPaginator.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<!-- 发送邮件 -->
    <script type="text/javascript">
//发送
function sendEm(){

    if($("#TYPE").val()=="1"){
        $("#CONTENT").val(getContentTxt());
    }else{
        $("#CONTENT").val(getContent());
    }
    if($("#EMAIL").val()==""){
        $("#EMAIL").tips({
            side:3,
            msg:'请输入邮箱',
            bg:'#AE81FF',
            time:2
        });
        $("#EMAIL").focus();
        return false;
    }
    if($("#TITLE").val()==""){
        $("#TITLE").tips({
            side:3,
            msg:'请输入标题',
            bg:'#AE81FF',
            time:2
        });
        $("#TITLE").focus();
        return false;
    }
    if($("#CONTENT").val()==""){

        $("#nr").tips({
            side:1,
            msg:'请输入内容',
            bg:'#AE81FF',
            time:3
        });
        return false;
    }

    var EMAIL = $("#EMAIL").val();
    var TYPE  = $("#TYPE").val();
    var TITLE = $("#TITLE").val();
    var CONTENT = $("#CONTENT").val();

    $("#zhongxin").hide();
    $("#zhongxin2").show();

    $.ajax({
        type: "POST",
        url: 'sendEmail',
        data: {EMAIL:EMAIL,TITLE:TITLE,CONTENT:CONTENT},
        dataType:'json',
        //beforeSend: validateData,
        cache: false,
        success: function(data){
            if("ok" == data.result){
                $("#msg").tips({
                        side:3,
                        msg:'发送成功！',
                        bg:'#68B500',
                        time:5
                      });
                setTimeout("showdiv()",1000);
            }else{
                $("#msg").tips({
                        side:3,
                        msg:'发送失败!',
                        bg:'#68B500',
                        time:5
                      });
            }

        }
    });

}

</script>
<body>

 <div>
        <table style="width:98%;" >
            <tr>
                <td style="margin-top:0px;">
                     <div style="float: left;" style="width:81%"><textarea name="EMAIL" id="EMAIL" rows="1" cols="50" style="width:600px;height:20px;" placeholder="请选输入对方邮箱,多个请用(;)分号隔开" title="请选输入对方邮箱,多个请用(;)分号隔开">${email}</textarea></div>
                     <div style="float: right;" style="width:19%"><a class='btn btn-mini btn-info' title="编辑邮箱" onclick="dialog_open();">编辑邮箱</i></a></div>
                </td>
            </tr>
            <tr>
                <td>
                     <input type="text" name="TITLE" id="TITLE" value="" placeholder="请选输入邮件标题" style="width:98%"/>
                </td>
            </tr>
            <tr>
                <td id="nr">
                     <script id="editor" type="text/plain" style="width:650px;height:259px;"></script>
                </td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    <a class="btn btn-mini btn-primary" onclick="sendEm();">发送</a>
                    <a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
                </td>
            </tr>
        </table>
        </div>
        <div id="zhongxin2" class="center" style="display:none"><br/><img src="" id='msg' /><br/><h4 class="lighter block green" id='msg'>正在发送...</h4></div>

</body>
</html>