package com.mr.modules.data.controller;

import javax.annotation.Resource;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mr.common.base.controller.BaseController;
import com.mr.modules.data.service.DataClassifyService;

/**
 * 数据分类信息
 * 
 * @author pxu 2018年5月18日
 */
@Controller
@RequestMapping("/admin/data/info")
public class InfoController extends BaseController {

	private String prefix = "admin/data/info";

	@Resource
	private DataClassifyService dataClassifyService;
	
	/**
	 * 处罚信息
	 * @return
	 */
	@RequiresPermissions("data-info:list")
	@GetMapping()
	public String toList() {
		return prefix + "/info-list";
	}

	/**
	 * 处罚信息
	 * @return
	 */
	@RequiresPermissions("data-info:list")
	@GetMapping("/punish")
	public String punish() {
		return "admin/index";
	}
}
