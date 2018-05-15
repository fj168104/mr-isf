$(function () {
	var colunms = Menu.initColumn();
	var table = new TreeTable(Menu.id, "/admin/oti/field/list", colunms);
	table.setExpandColumn(2);
	table.setIdField("id");
	table.setCodeField("id");
	table.setParentCodeField("parentId");
	table.setExpandAll(false);
	table.init();
	Menu.table = table;
});

var Menu = {
	id: "msgTable",
	seItem: null,	//选中的条目
	table: null,
	layerIndex: -1
};

/**
 * 初始化表格的列
 */
Menu.initColumn = function () {
	var columns = [
		{field: 'selectItem', radio: true},
		{title: '字段ID', field: 'id', visible: false, align: 'center', valign: 'middle', width: '7%'},
		// {title: '传输消息ID', field: 'msgId', visible: false, align: 'center', valign: 'middle', width: '15%'},
		{title: '字段名', field: 'fieldTag', visible: false, align: 'center', valign: 'middle', width: '10%'},
		{title: '字段描述', field: 'fieldDesp', visible: false, align: 'center', valign: 'middle', width: '12%'},
		{
			title: '类型',
			field: 'dataType',
			align: 'center',
			valign: 'middle',
			width: '10%',
			sortable: true,
			formatter: function (item, index) {
				if (item.dataType == 1) {
					return '<span class="label label-default radius">string</span>';
				}
				if (item.dataType == 2) {
					return '<span class="label label-default radius">int</span>';
				}
				if (item.dataType == 3) {
					return '<span class="label label-default radius">double</span>';
				}
				if (item.dataType == 4) {
					return '<span class="label label-secondary radius">object</span>';
				}
				if (item.dataType == 5) {
					return '<span class="label label-warning radius">array</span>';
				}
			}
		},


		{title: '字段长度', field: 'fieldLength', visible: false, align: 'center', valign: 'middle', width: '10%'},
		{title: '默认值', field: 'fieldDefault', visible: false, align: 'center', valign: 'middle', width: '10%'},
		{title: '查询的SQL', field: 'tableField', visible: false, align: 'center', valign: 'middle', width: '20%'},
		// {title: '父节点id', field: 'parentId', visible: false, align: 'center', valign: 'middle', width: '10%'},
		{
			title: '必填',
			field: 'isRequire',
			align: 'center',
			valign: 'middle',
			width: '10%',
			sortable: true,
			formatter: function (item, index) {
				if (item.isRequire == true) {
					return '必填';
				} else {
					return '非必填';
				}
			}
		},

		{title: '排序号', field: 'sort', visible: false, align: 'center', valign: 'middle', width: '10%'}
	];
	return columns;
};

/**
 * 检查是否选中
 */
Menu.check = function () {
	var selected = $('#' + this.id).bootstrapTreeTable('getSelections');
	if (selected.length == 0) {
		errorMessage("请先选中一条记录！");
		return false;
	} else {
		Menu.seItem = selected[0];
		return true;
	}
};

/**
 * 搜索
 */
Menu.search = function () {
	var queryData = {};

	queryData['msgId'] = $("#msgId").val();
	if ($("#msgId").val() == "") {
		errorMessage('msgId 不能为空!');
		return;
	}
	Menu.table.refresh({query: queryData});
};


/*
 参数解释：
 title	标题
 url		请求的url
 id		需要操作的数据id
 w		弹出层宽度（缺省调默认值）
 h		弹出层高度（缺省调默认值）
 */
function oti_field_add(title, url, w, h) {
	layer_show(title, url, w, h);
}


function oti_field_del(obj, url) {
	if (Menu.check()) {
		layer.confirm('确认要删除吗？', function (index) {
			//此处请求后台程序，下方是成功后的前台处理……
			$.ajax({
				type: "DELETE",
				dataType: "json",
				url: url + "/" + Menu.seItem.id,
				data: {
					"timestamp": new Date().getTime()
				},
				statusCode: {
					200: function (data) {
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
}

function oti_field_edit(title, url, w, h) {
	if (Menu.check()) {
		layer_show(title, url + "/" + Menu.seItem.id, w, h);
	}
}

