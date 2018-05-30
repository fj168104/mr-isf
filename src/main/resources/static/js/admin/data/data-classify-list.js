$(function () {
	var colunms = Classify.initColumn();
	var table = new TreeTable(Classify.id, "/admin/data/classify/list", colunms);
	table.setExpandColumn(2);
	table.setIdField("id");
	table.setCodeField("id");
	table.setParentCodeField("parentId");
	table.setExpandAll(true);
	table.init();
	Classify.table = table;
});

var Classify = {
	id: "classifyTable",
	seItem: null,	//选中的条目
	table: null,
	layerIndex: -1
};

/**
 * 初始化表格的列
 */
Classify.initColumn = function () {
	var columns = [
		{field: 'selectItem', radio: true},
		{title: '分类ID', field: 'id', visible: false, align: 'center', valign: 'middle', width: '7%'},
		{title: '分类名称', field: 'name', visible: false, align: 'center', valign: 'middle', width: '15%'},
//		{
//			title: '父节点ID',
//			field: 'parentId',
//			align: 'center',
//			valign: 'middle',
//			sortable: true,
//			width: '7%',
//			formatter: function (item, index) {
//				return item.parentId == null ? '' : item.parentId;
//			}
//		},
		{
			title: '父节点名称',
			field: 'parentName',
			align: 'center',
			valign: 'middle',
			sortable: true,
			width: '15%',
			formatter: function (item, index) {
				return item.parentName == null ? '' : item.parentName;
			}
		},
		{title: '访问页面', field: 'action', align: 'center', valign: 'middle', sortable: true, width: '17%'},
		{title: '排序号', field: 'sort', align: 'center', valign: 'middle', sortable: true, width: '17%'}];
	return columns;
};

/**
 * 检查是否选中
 */
Classify.check = function () {
	var selected = $('#' + this.id).bootstrapTreeTable('getSelections');
	if (selected.length == 0) {
		errorMessage("请先选中一条记录！");
		return false;
	} else {
		Classify.seItem = selected[0];
		return true;
	}
};

/**
 * 搜索
 */
Classify.search = function () {
	var queryData = {};

	queryData['classifyName'] = $("#classifyName").val();
	Classify.table.refresh({query: queryData});
};

/*添加分类*/
function data_classify_add(title, url, w, h) {
	var selected = $('#' + Classify.id).bootstrapTreeTable('getSelections');
	if(selected.length == 0){
		layer_show(title, url+"/0", w, h);
	}else{
		Classify.seItem = selected[0];
		layer_show(title, url+"/"+Classify.seItem.id, w, h);
	}
}

/*修改分类*/
function data_classify_edit(title, url, w, h) {
	if (Classify.check()) {
		layer_show(title, url + "/" + Classify.seItem.id, w, h);
	}
}

/*删除分类*/
function data_classify_del(obj, url) {
	if (Classify.check()) {
		layer.confirm('确认要删除吗？', function (index) {
			//此处请求后台程序，下方是成功后的前台处理……
			$.ajax({
				type: "DELETE",
				dataType: "json",
				url: url + "/" + Classify.seItem.id,
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