$(function () {

});


/***************************************oti-field*************************************/
/**
 * 删除调用记录
 * @param obj 当前元素对象
 * @param url 删除url
 */
function oti_del(obj, url) {
	layer.confirm('确认要删除吗？', function (index) {
		//此处请求后台程序，下方是成功后的前台处理……
		$.ajax({
			type: "DELETE",
			dataType: "json",
			url: url,
			data: {
				"timestamp": new Date().getTime()
			},
			statusCode: {
				200: function (data) {
					$(obj).parents("tr").remove();
					var total = $("#total").text();
					$("#total").text(parseInt(total) - 1);
					succeedMessage(data.responseText);
				},
				404: function (data) {
					errorMessage(data.responseText);
				},
				500: function () {
					errorMessage('系统错误!');
				}
			}
		});
	});
}


/**
 * 批量删除调用记录
 */
function oti_batch_del() {

	//复选框选择id集合
	var selectedIds = [];
	$(".text-c :checkbox").each(function (index, ele) {
		var id = $(this).val();
		var isSelected = this.checked;
		if (isSelected) {
			selectedIds.push(id);
		} else {
			selectedIds.removeObject(id);
		}
	});

	if (selectedIds == "") {
		errorMessage("请先选择一条记录!");
		return false;
	}

	layer.confirm('确认要删除吗？', function (index) {
		//此处请求后台程序，下方是成功后的前台处理……
		$.ajax({
			type: "DELETE",
			dataType: "json",
			url: "/admin/oti/batch/" + selectedIds,
			data: {
				"timestamp": new Date().getTime()
			},
			statusCode: {
				200: function (data) {
					succeedMessage(data.responseText);
					window.location.reload();
				},
				404: function (data) {
					errorMessage(data.responseText);
				},
				500: function () {
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
function oti_view(title, url, w, h) {
	layer_show(title, url, w, h);
}

/***************************************oti-config*************************************/

/*
 参数解释：
 title	标题
 url		请求的url
 id		需要操作的数据id
 w		弹出层宽度（缺省调默认值）
 h		弹出层高度（缺省调默认值）
 */

/*调用配置-增加*/
function otiConfig_add(title, url, w, h) {
	layer_show(title, url, w, h);
}

/*调用配置-删除*/
function otiConfig_del(obj, msgId, url) {

	if (msgId == "demo_msg") {
		errorMessage('demo_msg 不能删除!');
		return false;
	}
	layer.confirm('确认要删除吗？', function (index) {
		//此处请求后台程序，下方是成功后的前台处理……
		$.ajax({
			type: "DELETE",
			dataType: "json",
			url: url,
			data: {
				"timestamp": new Date().getTime()
			},
			statusCode: {
				200: function (data) {
					$(obj).parents("tr").remove();
					var total = $("#total").text();
					$("#total").text(parseInt(total) - 1);
					succeedMessage(data.responseText);
				},
				404: function (data) {
					errorMessage(data.responseText);
				},
				500: function () {
					errorMessage('系统错误!');
				}
			}
		});
	});
}

/*调用配置-编辑*/
function otiConfig_edit(title, url, w, h) {
	layer_show(title, url, w, h);
}

/**
 * 禁用|启用
 * @param obj
 * @param id
 */
function otiConfig_status(obj, urls, status) {
	var msg = "确认要启用吗?";
	if (status == "1") {
		msg = "确认要禁用吗?";
	}
	layer.confirm(msg, function (index) {
		//此处请求后台程序，下方是成功后的前台处理……
		$.ajax({
			type: "PUT",
			dataType: "json",
			url: urls,
			data: {
				"timestamp": new Date().getTime()
			},
			statusCode: {
				204: function () {
					if (status == "1") {
						$(obj).parents("tr").find(".td-manage").prepend('<a onClick="otiConfig_status(this,\'' + urls + '\',\'0\')" href="javascript:;" title="启用" style="text-decoration:none"><i class="Hui-iconfont">&#xe615;</i></a>');
						$(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">已禁用</span>');
						$(obj).remove();
						sadMessage('已禁用!');
					} else {
						$(obj).parents("tr").find(".td-manage").prepend('<a onClick="otiConfig_status(this,\'' + urls + '\',\'1\')" href="javascript:;" title="禁用" style="text-decoration:none"><i class="Hui-iconfont">&#xe631;</i></a>');
						$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
						$(obj).remove();
						smileMessage('已启用!');
					}
				},
				404: function (data) {
					errorMessage(data.responseText);
				},
				500: function () {
					errorMessage('系统错误!');
				}
			}
		});
	});
}


/*调用配置字段详情页面跳转*/
function otiConfig_col(obj, url) {
	//此处请求后台程序，下方是成功后的前台处理……
	$.ajax({
		type: "GET",
		dataType: "json",
		url: url,
		data: {
			"timestamp": new Date().getTime()
		},
		statusCode: {
			200: function (data) {
				$(obj).parents("tr").remove();
				var total = $("#total").text();
				$("#total").text(parseInt(total) - 1);
				succeedMessage(data.responseText);
			},
			404: function (data) {
				errorMessage(data.responseText);
			},
			500: function () {
				errorMessage('系统错误!');
			}
		}
	});
}

/**
 * 下载配置
 */
function oti_config_download() {

	//复选框选择id集合
	var selectedIds = [];
	$(".text-c :checkbox").each(function (index, ele) {
		var id = $(this).val();
		var isSelected = this.checked;
		if (isSelected) {
			selectedIds.push(id);
		} else {
			selectedIds.removeObject(id);
		}
	});

	if (selectedIds == "") {
		errorMessage("请先选择一条记录!");
		return false;
	}
	window.location.href = "/admin/oti/config/download/" + selectedIds;
}

/**
 * 下载配置
 */
function oti_config_view() {

	//复选框选择id集合
	var selectedIds = [];
	$(".text-c :checkbox").each(function (index, ele) {
		var id = $(this).val();
		var isSelected = this.checked;
		if (isSelected) {
			selectedIds.push(id);
		} else {
			selectedIds.removeObject(id);
		}
	});

	if (selectedIds == "") {
		errorMessage("请先选择一条记录!");
		return false;
	}

	window.location.href = "/admin/oti/config/viewDownload/" + selectedIds;

}




