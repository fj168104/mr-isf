package com.mr.modules.search.controller;

import com.github.pagehelper.PageInfo;
import com.mr.common.annotation.DataScope;
import com.mr.common.base.controller.BaseController;
import com.mr.modules.sys.model.User;
import com.mr.modules.sys.service.RoleService;
import com.mr.modules.sys.service.UserService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

/**
 * @author xuzj
 * Created by mr on 2018/05/19.
 */
@Controller
@RequestMapping("/admin/search")
public class FullSearchController extends BaseController{
    private static final String BASE_PATH = "/admin/search/";

    /**
     * 分页查询管理员列表
     *
     * @param pageNum   当前页码
     * @param startTime 开始时间
     * @param endTime   结束时间
     * @param modelMap
     * @return
     */
    @RequiresPermissions("search-full:list")
    @GetMapping(value = "/full")
    public String list() throws Exception {
        return BASE_PATH + "full-list";
    }
}
