package com.mr.modules.datamanage.controller;

import com.github.pagehelper.PageInfo;
import com.mr.common.base.controller.BaseController;
import com.mr.modules.datamanage.model.MrCrawlerOnebankTwomeetPunishDtl;
import com.mr.modules.datamanage.service.DataManageService;
import com.mr.modules.log.model.Log;
import com.mr.modules.log.service.LogService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 *
 * @author cuiP
 * Created by JK on 2017/5/5.
 */
@Controller
@RequestMapping("/admin/datamanage")
public class MrCrawlerOneBankTwomeetPunishDtlController extends BaseController {

    private static final String BASE_PATH = "admin/datamanage/";

    @Resource
    private DataManageService dataManageService;


    /**
     * 分页查询处罚信息列表
     *
     * @param pageNum   当前页码
     * @param username  用户名
     * @param startTime 开始时间
     * @param endTime   结束时间
     * @param modelMap
     * @return
     */
    @RequiresPermissions("data-classify:list")
    @GetMapping
    public String list(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            String username, String startTime, String endTime, ModelMap modelMap) {
        try {
            log.debug("分页查询处罚信息列表参数! pageNum = {}, username = {}, username = {}, startTime = {}, endTime = {}", pageNum, username, startTime, endTime);
            PageInfo<MrCrawlerOnebankTwomeetPunishDtl> pageInfo = dataManageService.findPage(pageNum, PAGESIZE, username, startTime, endTime);
            log.info("分页查询日志列表结果！ pageInfo = {}", pageInfo);
            modelMap.put("pageInfo", pageInfo);
            modelMap.put("username", username);
            modelMap.put("startTime", startTime);
            modelMap.put("endTime", endTime);
        } catch (Exception e) {
            log.error("分页查询日志列表失败! e = {}", e);
        }
        return BASE_PATH + "mrCrawlerOnebankTwomeetPunishDtl-list";
    }


    /**
     * 根据主键ID删除管理员
     *
     * @param id
     * @return
     */
//    @OperationLog(value = "删除处信息")
    @RequiresPermissions("datamanage:delete")
    @DeleteMapping(value = "/{id}")
    public ResponseEntity<String> delete(@PathVariable("id") Long id) {
        try {
            log.debug("删除处罚信息! id = {}", id);

            dataManageService.deleteById(id);
            log.info("删除处罚信息成功! id = {}", id);

            return ResponseEntity.ok("已删除!");
        } catch (Exception e) {
            log.error("删除处罚信息失败! id = {}, e = {}", id, e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    /**
     * 批量删除处罚信息
     * @param ids
     * @return
     */
//    @OperationLog(value = "批量删除处罚信息")
    @RequiresPermissions("datamanage:delete")
    @DeleteMapping(value = "/batch/{ids}")
    public ResponseEntity<String> deleteBatch(@PathVariable("ids") List<Object> ids) {
        try {
            log.debug("批量删除处罚信息! ids = {}", ids);

            if (null == ids) {
                log.info("批量删除处罚信息不存在! ids = {}", ids);
                return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
            }
            dataManageService.deleteByCondition(MrCrawlerOnebankTwomeetPunishDtl.class, "id", ids);
            log.info("批量删除处罚信息成功! ids = {}", ids);

            return ResponseEntity.ok("已删除!");
        } catch (Exception e) {
            log.error("批量删除处罚信息失败! ids = {}, e = {}", ids, e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    /**
     * 查询处罚详情
     * @param id
     * @return
     */
    @RequiresPermissions("datamanage:view")
    @GetMapping("/{id}")
    public String view(@PathVariable("id")Long id, ModelMap modelMap){
        MrCrawlerOnebankTwomeetPunishDtl mrCrawlerOnebankTwomeetPunishDtl = dataManageService.findById(id);

        modelMap.put("model", mrCrawlerOnebankTwomeetPunishDtl);
        return BASE_PATH + "mrCrawlerOnebankTwomeetPunishDtl-view";
    }

}
