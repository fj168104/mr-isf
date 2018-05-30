$(function () {
    $("#form-data-classify-add").validate({
        rules:{
            name:{
                required:true
            },
			sort : {
				digits : true
			}
        },
        onkeyup:false,
        focusCleanup:true,
        success:"valid",
        submitHandler:function(form){
            $(form).ajaxSubmit({
                type: 'post',
                url: "/admin/data/classify",
                dataType:"json",
                success: function(data){
                    if(data.status == "success"){
                        succeedMessage(data.message);
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.location.reload();
                        parent.layer.close(index);
                    }else {
                        $(form).find(":submit").attr("disabled", false);
                        errorMessage(data.message);
                    }
                }
            });
            return false; // 非常重要，如果是false，则表明是不跳转，在本页上处理，也就是ajax，如果是非false，则传统的form跳转。
        }
    });
});

/*数据管理-分类管理-新增-选择上级分类*/
function selectClassifyTree() {
    var parentId = $("#parentId").val();
    if(parentId > 0){
    	var url = "/admin/data/classify/selectClassifyTree/" + parentId;
        layer_show("选择分类", url, '380', '380');
    }else{
    	var url = "/admin/data/classify/selectClassifyTree/0";
        layer_show("选择分类", url, '380', '380');
    }
}