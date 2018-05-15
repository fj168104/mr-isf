$(function () {
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});

	$("#form-oti-field-add").validate({
		rules: {
			// username:{
			//     required:true,
			//     minlength:4,
			//     maxlength:16,
			//     remote: {
			//         url: "/admin/manager/user/isExist",
			//         type: "get",
			//         data: {
			//             username: function () {
			//                 return $("#username").val();
			//             }
			//         }
			//     }
			// },
			fieldTag: {
				required: true
			},
			fieldDesp: {
				required: true
			},
			dataType: {
				required: true
			},
			sort: {
				required: true
			}
		},
		// messages : {
		//     username : {
		//         remote: "该用户名已经被注册！"
		//     }
		// },
		onkeyup: false,
		focusCleanup: true,
		success: "valid",
		submitHandler: function (form) {
			$(form).ajaxSubmit({
				type: 'post',
				url: '/admin/oti/field/add',
				dataType: "json",
				success: function (data) {
					if (data.status == "success") {
						succeedMessage(data.message);
						var index = parent.layer.getFrameIndex(window.name);
						parent.location.reload();
						parent.layer.close(index);
					} else {
						$(form).find(":submit").attr("disabled", false);
						errorMessage(data.message);
					}
				}
			});
			return false; // 非常重要，如果是false，则表明是不跳转，在本页上处理，也就是ajax，如果是非false，则传统的form跳转。
		}
	});

	//页面初始化的时候初始化显示隐藏表单元素
	var checkedValue = $("input[name='dataType']:checked").val();
	if (checkedValue == '5') {
		$(".fieldDefaultDiv").hide();
		$(".fieldLengthDiv").hide();
		$(".tableFieldDiv").show();
		$(".requireDiv").hide();
	} else if (checkedValue == '4') {
		$(".fieldDefaultDiv").hide();
		$(".fieldLengthDiv").hide();
		$(".tableFieldDiv").hide();
		$(".requireDiv").hide();
	} else {
		$(".fieldDefaultDiv").show();
		$(".fieldLengthDiv").show();
		$(".tableFieldDiv").hide();
		$(".requireDiv").show();
	}

	//基本类型不需要显示parentId
	var parentIdValue = $("#parentId").val();
	if ($("#parentId").val() == "") {
		$(".parentIdDiv").hide();
	}

	//为iCheck绑定选中事件
	$("input[name='dataType']").on('ifChecked', function (event) {
		var value = $(this).val();
		if (value == '5') {
			$(".fieldDefaultDiv").hide();
			$(".fieldLengthDiv").hide();
			$(".tableFieldDiv").show();
			$(".requireDiv").hide();
		} else if (value == '4') {
			$(".fieldDefaultDiv").hide();
			$(".fieldLengthDiv").hide();
			$(".tableFieldDiv").hide();
			$(".requireDiv").hide();
		} else {
			$(".fieldDefaultDiv").show();
			$(".fieldLengthDiv").show();
			$(".tableFieldDiv").hide();
			$(".requireDiv").show();
		}
	});

});