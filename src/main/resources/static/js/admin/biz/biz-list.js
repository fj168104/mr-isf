$(function () {

});


/***************************************biz-record*************************************/
/**
 * 删除调用记录
 * @param obj 当前元素对象
 * @param url 删除url
 */
function biz_del(obj, url) {
    layer.confirm('确认要删除吗？',function(index){
        //此处请求后台程序，下方是成功后的前台处理……
        $.ajax({
            type:"DELETE",
            dataType:"json",
            url: url,
            data:{
                "timestamp":new Date().getTime()
            },
            statusCode: {
                200 : function(data){
                    $(obj).parents("tr").remove();
                    var total = $("#total").text();
                    $("#total").text(parseInt(total)-1);
                    succeedMessage(data.responseText);
                },
                404 : function(data){
                    errorMessage(data.responseText);
                },
                500 : function(){
                    errorMessage('系统错误!');
                }
            }
        });
    });
}


/**
 * 批量删除调用记录
 */
function biz_batch_del() {

    //复选框选择id集合
    var selectedIds=[];
    $(".text-c :checkbox").each(function (index, ele) {
        var id = $(this).val();
        var isSelected = this.checked;
        if (isSelected) {
            selectedIds.push(id);
        } else {
            selectedIds.removeObject(id);
        }
    });

    if(selectedIds == ""){
        errorMessage("请先选择一条记录!");
        return false;
    }

    layer.confirm('确认要删除吗？',function(index){
        //此处请求后台程序，下方是成功后的前台处理……
        $.ajax({
            type:"DELETE",
            dataType:"json",
            url: "/admin/biz/batch/"+selectedIds,
            data:{
                "timestamp":new Date().getTime()
            },
            statusCode: {
                200 : function(data){
                    succeedMessage(data.responseText);
                    window.location.reload();
                },
                404 : function(data){
                    errorMessage(data.responseText);
                },
                500 : function(){
                    errorMessage('系统错误!');
                }
            }
        });
    });
}

/**
 * 查看调用记录详情
 * @param title
 * @param url
 * @param w
 * @param h
 */
function biz_view(title,url,w,h) {
    layer_show(title,url,w,h);
}

/***************************************biz-config*************************************/

/*
 参数解释：
 title	标题
 url		请求的url
 id		需要操作的数据id
 w		弹出层宽度（缺省调默认值）
 h		弹出层高度（缺省调默认值）
 */
/*调用配置-增加*/
function bizConfig_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*调用配置-删除*/
function bizConfig_del(obj, url){
	layer.confirm('确认要删除吗？',function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		$.ajax({
			type:"DELETE",
			dataType:"json",
			url: url,
			data:{
				"timestamp":new Date().getTime()
			},
			statusCode: {
				200 : function(data){
					$(obj).parents("tr").remove();
					var total = $("#total").text();
					$("#total").text(parseInt(total)-1);
					succeedMessage(data.responseText);
				},
				404 : function(data){
					errorMessage(data.responseText);
				},
				500 : function(){
					errorMessage('系统错误!');
				}
			}
		});
	});
}
/*调用配置-编辑*/
function bizConfig_edit(title,url,w,h){
	layer_show(title,url,w,h);
}

/**
 * 禁用|启用
 * @param obj
 * @param id
 */
function bizConfig_status(obj,urls,isLock){
	var msg = "确认要启用吗?";
	if(isLock == "true"){
		msg = "确认要禁用吗?";
	}
	layer.confirm(msg,function(index){
		//此处请求后台程序，下方是成功后的前台处理……
		$.ajax({
			type:"PUT",
			dataType:"json",
			url: urls,
			data:{
				"timestamp":new Date().getTime()
			},
			statusCode: {
				204 : function(){
					if(isLock == "true"){
						$(obj).parents("tr").find(".td-manage").prepend('<a onClick="bizConfig_status(this,\''+urls+'\',\'false\')" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
						$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
						$(obj).remove();
						sadMessage('已禁用!');
					}else {
						$(obj).parents("tr").find(".td-manage").prepend('<a onClick="bizConfig_status(this,\''+urls+'\',\'true\')" href="javascript:;" title="禁用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
						$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
						$(obj).remove();
						smileMessage('已启用!');
					}
				},
				404 : function(data){
					errorMessage(data.responseText);
				},
				500 : function(){
					errorMessage('系统错误!');
				}
			}
		});
	});
}