package com.mr.modules.search.controller;

import com.mr.common.base.controller.BaseController;
import com.mr.modules.sys.service.RoleService;
import com.mr.modules.sys.service.UserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author xuzj
 * Created by mr on 2018/05/19.
 */
@Controller
@RequestMapping("/admin/search")
public class BlurSearchController extends BaseController{
    private static final String BASE_PATH = "/admin/search/";

    @Resource
    private UserService userService;
    @Resource
    private RoleService roleService;
    /**
     * 模糊查询列表界面
     *
     * @param pageNum   当前页码
     * @param startTime 开始时间
     * @param endTime   结束时间
     * @param modelMap
     * @return
     */
    @RequiresPermissions("search-blur:list")
    @GetMapping(value = "/blur")
    public String list() throws Exception {
        return BASE_PATH + "blur-list";
    }
}
