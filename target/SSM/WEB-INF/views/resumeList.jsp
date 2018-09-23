<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet">
<script type="text/javascript">


$(document).ready(function() {

 $.post('userList',{},function(response){
    var data = response.list;
    $('#example').DataTable( {
        data: data,
         columns: [
                { data: 'id' },
                { data: 'email' },
                { data: 'type' },
                { data: 'password' }

            ]
    } );
    });


} );
</script>
</head>
<body>
<table id="example">
<thead>
<tr>
<th>Name</th>
 <th>Position</th>
  <th>Office</th>
   <th>Age</th>
      </tr>
      </thead>
       </table>

</body>
</html>