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
<title>用户列表</title>
	<link rel="stylesheet" href="style/css/datatables.min.css">
       <script type="text/javascript" src="style/js/jquery-1.12.4.js"></script>
       <script type="text/javascript" src="style/js/jquery.dataTables.min.js"></script>
</head>
<script type="text/javascript">
  $(document).ready(function(){


$('#userTable').DataTable( {
              data: [
                            {
                                "id":"Tiger Nixon",
                                "email":"System Architect",
                                "type":"$3,120",
                                "password":"2011/04/25"
                            },
                            {
                                "id":"Garrett Winters",
                                "email":"Director",
                                "type":"5300",
                                "password":"2011/07/25"
                            }
                        ],
              columns: [
                  { data: "id" },
                  { data: "email" },
                  { data: "type" },
                  { data: "password" }
              ]
          } );
             console.log($('#userTable').DataTable().data());

  });
</script>
<body>
<div class="container" style="margin-top: 30px">
<div class="well" style="margin-left: 10%;margin-right: 10%">
<div class="row" style="margin-top: 35px">
<table class="table table-striped" id="userTable">
  <caption>用户列表</caption>
  <thead>
    <tr>
      <th>电话</th>
      <th>邮箱</th>
      <th>密码</th>
      <th>重复密码</th>
    </tr>
  </thead>
  <tbody>
  </tbody>
</table>
  </div>
  </div>
  </div>

</body>
</html>