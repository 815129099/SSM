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
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jqPaginator.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container" style="margin-top: 30px">
<div class="well" style="margin-left: 10%;margin-right: 10%">
<div class="row" style="margin-top: 35px">
<table class="table table-striped" >
  <caption>用户列表</caption>
  <thead>
    <tr>
      <th>电话</th>
      <th>邮箱</th>
      <th>密码</th>
      <th>重复密码</th>
      <th>名字</th>
      <th>性别</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${reList}" var="user">
    <tr>
      <td>${user.phone}</td>
      <td>${user.email}</td>
      <td>${user.password}</td>
      <td>${user.repassword}</td>
      <td id="name">${user.name}</td>
      <td>${user.sex}</td>
      <td><a href="del?name=${user.name}">删除</a></td>
    </tr>
  </c:forEach>
  </tbody>
</table>
  </div>
  </div>
  </div>

</body>
</html>