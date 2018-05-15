$(function () {
    $('.skin-minimal input').iCheck({
        checkboxClass: 'icheckbox-blue',
        radioClass: 'iradio-blue',
        increaseArea: '20%'
    });

    $("#form-biz-config-edit").validate({
        rules:{
            appName:{
                required:true,
                minlength:4,
                maxlength:16,
                remote: {
                    url: "/admin/biz/config/isExist",
                    type: "get",
                    data: {
						appName: function () {
                            return $("#appName").val();
                        },
                        id:$("#uid").val()
                    }
                }
            },
			appNameDesp:{
                required:false
            },
			url:{
                required:true
            }
        },
        messages : {
            appName : {
                remote: "该调用配置已经存在！"
            }
        },
        onkeyup:false,
        focusCleanup:true,
        success:"valid",
        submitHandler:function(form){
            $(form).ajaxSubmit({
                type: 'PUT',
                url: "/admin/biz/config/"+$("#uid").val(),
                dataType:"json",
                success: function(data){
                    if(data.status == "success"){
                        succeedMessage(data.message);
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.location.reload();
                        parent.layer.close(index);
                    }else {
                        errorMessage(data.message);
                    }
                }
            });
            return false; // 非常重要，如果是false，则表明是不跳转，在本页上处理，也就是ajax，如果是非false，则传统的form跳转。
        }
    });
});