$(function () {
    $('.skin-minimal input').iCheck({
        checkboxClass: 'icheckbox-blue',
        radioClass: 'iradio-blue',
        increaseArea: '20%'
    });

    $("#form-oti-config-edit").validate({
        rules:{
            msgId:{
                required:true,
                minlength:4,
                maxlength:16,
                remote: {
                    url: "/admin/oti/config/isExist",
                    type: "get",
                    data: {
						msgId: function () {
                            return $("#msgId").val();
                        },
                        id:$("#uid").val()
                    }
                }
            },
			msgNameDesp:{
                required:false
            },
			charset:{
                required:true
            }
        },
        messages : {
            msgId : {
                remote: "该调用配置已经存在！"
            }
        },
        onkeyup:false,
        focusCleanup:true,
        success:"valid",
        submitHandler:function(form){
            $(form).ajaxSubmit({
                type: 'PUT',
                url: "/admin/oti/config/"+$("#uid").val(),
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