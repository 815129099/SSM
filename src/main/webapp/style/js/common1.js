//自动生成简单查询结果列表
/*
 * 参数说明:
 * tableId：显示表格数据的id值。
 * colNum：表列数。(不包括序号列，和复选框列)
 * attrlist：表头名对应单元格显示数据属性名列表。(顺序与数据在表中显示的顺序一致)。
 * page：结果数据列表或分页信息。
 * pageUrl：分页跳转时，请求地址。
 * param：分页参数信息。
 * hasChk：是否有复选框。
 * chkValue：复选框属性值对应属性名。
 * hasOper：是否有操作列。
 * operRow：操作列信息。
 * operValue：操作列属性名。
 * emptyTip：结果为空时的页面提示信息。(可选)
 */

function initDataTable(tableId,colNum,attrlist,page,pageUrl,param,hasChk,chkValue,hasNo,hasPage,hasOper,operRow,operValue,emptyTip){
	 //清空原有表格数据
	 $("#"+tableId+" tbody").empty();
	 
	 //查询列表为空
	 if(page.list.length==0){
		 var colspan = colNum;
		 if(hasChk){
			 colspan++;
		 }
		 if(hasNo){
			 colspan++;
		 }
		 if(emptyTip==null||emptyTip==""){
			 $("#"+tableId+" tbody").append("<tr><td colspan='"+colspan+"'"+" style='text-align:center'>没有符合条件的查询数据</td></tr>");
		 }
		 else{
			 $("#"+tableId+" tbody").append("<tr><td colspan='"+colspan+"'"+" style='text-align:center'>"+emptyTip+"</td></tr>>");
		 }	 
		 //清空分页信息
		 $("ul#pagination").empty();
		 $("#total").empty();
	 }
	 //查询列表不为空
	 else {		 
		//生成tbody
		var trlist = "";
		list = page;
		//生成行
		if(hasPage){
			list = page.list;
		}
        $(list).each(function(i,element){
        	var tdlist = "";
        	//显示复选框
    		if(hasChk){
    			tdlist += "<td><input type='checkbox' name='chk' value='"+element[chkValue]+"' class='styled'/></td>";  			
    		}
    		//显示序号
    		if(hasNo){
    			tdlist += "<td>"+(i+1)+"</td>";
    		} 		
    		$(attrlist).each(function(i,attr){
    			if(element[attr]==null){
    				element[attr]="";
    			}
    			tdlist += "<td>"+element[attr]+"</td>";
    		});
    		//是否有操作列
            if(hasOper){
            	tdlist += "<td id='"+element[operValue]+"'>"+operRow+"</td>";
            }

    		trlist += "<tr>"+tdlist+"</tr>";
		});
        $("#"+tableId+" tbody").html(trlist);
       
        //是否分页
        if(hasPage){
        	//设置总记录数
        	$("#total").html("共<b>"+page.total+"</b>条记录");
    		$('#pagination').jqPaginator({
				totalCounts : page.total,
				visiblePages: 10 ,
				currentPage : page.pageNum,
				pageSize : page.pageSize,
				prev: '<li class="prev"><a href="javascript:void(0);">上一页</a></li>',
				next:'<li class="next"><a href="javascript:void(0);">下一页</a></li>',
				first:'<li class="first"><a href="javascript:void(0);">首页</a></li>',
				last:'<li class="last"><a href="javascript:void(0);">尾页</a></li>',
				page: '<li class="page"><a href="javascript:void(0);">{{page}}</a></li>',
				onPageChange:function(num,type) {
					if (type == "change") {
						$(param).attr("pageNum",num);
						$(param).attr("pageSize",page.pageSize);
						$.ajax({
							type : "POST",
							url : pageUrl,
							dataType : "json",
							data : param,
							success : function(response) {
								initDataTable(tableId,colNum,attrlist,response.page,pageUrl,param,hasChk,chkValue,hasNo,hasPage,hasOper,operRow,operValue,emptyTip);
							},
						    error:function(){
							   top.location.href = "error.jsp";
							}
						});
						
				}
				}
			});
        }
       
	 }
	
}

//复选框全选
/*
 * chkAll：全选复选框的id值。
 * chk：复选框组的name值。
 */
function chkAll(chkAll,chk){
	$("[name="+chk+"]").each(function(i,check){
		$(check).get(0).checked = $("#"+chkAll).get(0).checked;
	});
}

//获取url中的参数
function getUrlParam(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
	var r = window.location.search.substr(1).match(reg); //匹配目标参数
	if (r != null)
		return unescape(r[2]);
	return null; //返回参数值
}

//设置提示框关闭按钮功能
$("div.alert button#close").click(function(){
	$(this).parent("div.alert").hide();
});

