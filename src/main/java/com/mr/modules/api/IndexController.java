package com.mr.modules.api;

import com.mr.modules.oti.service.OtiConfigService;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

/**
 * @author cuiP
 * Created by mr on 2017/3/7.
 */
@RestController("APIIndexController")
public class IndexController extends BaseController {

	@Resource
	private OtiConfigService otiConfigService;

	//    @ApiOperation(value="测试接口", notes="测试接口详细描述")
//    @ApiImplicitParams({
//            @ApiImplicitParam(name = "ordersId", value = "订单ID", required = true, dataType = "long", paramType = "path", defaultValue = "1")
//    })
//    @ApiResponses(value = {
//            @ApiResponse(code = 200, message = "请求成功!"),
//            @ApiResponse(code = 401, message = "请求语法有问题!"),
//            @ApiResponse(code = 403, message = "请求未授权!"),
//            @ApiResponse(code = 404, message = "请求资源未找到!"),
//            @ApiResponse(code = 500, message = "请求失败!")})
	@GetMapping(value = "/index")
	public ModelMap index() {
		ModelMap map = new ModelMap();
		map.addAttribute("hello", "你好");
		map.addAttribute("veryGood", "很好");

		return map;
	}

	@GetMapping(value = "/oti_msg/{msgId}")
	public ModelMap outputOtiConfig(@PathVariable("msgId") String msgId) {
		ModelMap map = new ModelMap();
		map.put("message" ,otiConfigService.outputOtiConfig(msgId));
		return map;
	}
}
