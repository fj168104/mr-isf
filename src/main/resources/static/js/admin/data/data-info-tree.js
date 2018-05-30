var classifyIframe = $("#classifyIframe");

/**
 * 数据管理-分类信息树图-初始化树
 */
function inintTree() {
	classifyIframe.height(document.getElementById("treeData").offsetHeight-5);
	var setting = {
		view : {
			dblClickExpand : false,
			showLine : false,
			selectedMulti : false
		},
		data : {
			simpleData : {
				enable : true,
				idKey : "id",
				pIdKey : "parentId"
			}
		},
		callback : {
			beforeClick : function(treeId, treeNode) {
				var zTree = $.fn.zTree.getZTreeObj("treeDemo");
				if (treeNode.isParent) {
					zTree.expandNode(treeNode);
					return false;
				} else {
					return true;
				}
			},
			onClick : function(event, treeId, treeNode) {
				$.ajax({
					url : treeNode.action,
					type : "GET",
					async : true,
					success : function(data) {
				        var doc = document.getElementById("classifyIframe").contentDocument || document.frames["classifyIframe"].document;  
				        doc.body.innerHTML = data;  
					},
					error : function() {
						classifyIframe.attr("src", "/admin/common/404.html");
						// window.location.href = treeNode.action;
					}
				});
				
			}
		}
	};
	$.ajax({
		url : "/admin/data/classify/tree",
		type : "GET",
		async : true,
		success : function(data) {
			$.fn.zTree.init($("#treeDemo"), setting, data);
			//成功加载完成数据后，默认选中事件
			var zTree = $.fn.zTree.getZTreeObj("treeDemo");
			var node = zTree.getNodeByParam("id", "2");
			zTree.selectNode(node);
			setting.callback.onClick(null,null,node);
		},
		error : function() {
			errorMessage("加载失败!");
		}
	});
}