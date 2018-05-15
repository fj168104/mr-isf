package com.mr.modules.biz.controller;

import com.github.pagehelper.PageInfo;
import com.mr.common.annotation.OperationLog;
import com.mr.common.base.controller.BaseController;
import com.mr.common.security.token.FormToken;
import com.mr.modules.biz.model.BizConfig;
import com.mr.modules.biz.service.BizConfigService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author fengj
 * Created by mr on 2018/3/3.
 */
@Controller
@RequestMapping("/admin/biz/config")
public class BizConfigController extends BaseController {

    private static final String BASE_PATH = "admin/biz/";

    @Resource
    private BizConfigService bizConfigService;

    /**
     * 分页查询调用配置列表
     *
     * @param pageNum   当前页码
     * @param appName   所属应用
     * @param startTime 开始时间
     * @param endTime   结束时间
     * @param modelMap
     * @return
     */
    @RequiresPermissions("biz-config:list")
    @GetMapping
    public String list(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            String appName, String startTime, String endTime, ModelMap modelMap) throws Exception {
        try {
            log.debug("分页查询调用配置列表参数! pageNum = {}, appName = {}, startTime = {}, endTime = {}", pageNum, appName, startTime, endTime);
            PageInfo<BizConfig> pageInfo = bizConfigService.findPage(pageNum, PAGESIZE, appName, startTime, endTime);
            log.info("分页查询调用配置列表结果！ pageInfo = {}", pageInfo);
            modelMap.put("pageInfo", pageInfo);
            modelMap.put("username", appName);
            modelMap.put("startTime", startTime);
            modelMap.put("endTime", endTime);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return BASE_PATH + "bizConfig-list";
    }

    /**
     * 根据主键ID删除调用配置
     *
     * @param id
     * @return
     */
    @OperationLog(value = "删除调用配置")
    @RequiresPermissions("biz-config:delete")
    @DeleteMapping(value = "/{id}")
    public ResponseEntity<String> delete(@PathVariable("id") Long id) {
        log.debug("删除调用配置! id = {}", id);

        BizConfig bizConfig = bizConfigService.findById(id);
        if (null == bizConfig) {
            log.info("删除的调用配置不存在! id = {}", id);
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("调用配置不存在!");
        }

        bizConfigService.deleteById(id);
        log.info("删除调用配置成功! id = {}", id);
        return ResponseEntity.ok("已删除!");
    }

    /**
     * 批量删除管理员
     * @param ids
     * @return
     */
    @OperationLog(value = "批量删除调用配置")
    @RequiresPermissions("biz-config:delete")
    @DeleteMapping(value = "/batch/{ids}")
    public ResponseEntity<Void> deleteBatch(@PathVariable("ids") List<Object> ids) {
        log.debug("批量删除调用配置! ids = {}", ids);

        if (null == ids) {
            log.info("批量删除调用配置不存在! ids = {}", ids);
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
        bizConfigService.deleteByCondition(BizConfig.class, "id", ids);
        log.info("批量删除调用配置成功! ids = {}", ids);

        return ResponseEntity.ok(null);
    }

    /**
     * 禁用|启用
     * @param id
     * @return
     */
    @OperationLog(value = "禁用|启用调用配置")
    @RequiresPermissions("biz-config:status")
    @PutMapping(value = "/status/{id}")
    public ResponseEntity<String> updateStatus(@PathVariable("id") Long id){
        log.debug("禁用|启用调用配置参数! id = {}", id);
        BizConfig bizConfig = bizConfigService.findById(id);

        if (null == bizConfig) {
            log.info("调用配置不存在! id = {}", id);
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("调用配置不存在!");
        }

        //禁用启用
        bizConfig.setIsLock(!bizConfig.getIsLock());
        bizConfigService.updateSelective(bizConfig);

        log.info("禁用|启用调用配置成功! id = {}", id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

    /**
     * 跳转到调用配置管理添加页面
     * @return
     */
    @FormToken(save = true)
    @RequiresPermissions("biz-config:create")
    @GetMapping(value = "/add")
    public String add(ModelMap modelMap){
        log.info("跳转到调用配置添加页面!");
        return BASE_PATH + "bizConfig-add";
    }

    /**
     * 添加调用配置
     * @return
     */
    @FormToken(remove = true)
    @OperationLog(value = "添加调用配置")
    @RequiresPermissions("biz-config:create")
    @ResponseBody
    @PostMapping
    public ModelMap saveUser(BizConfig bizConfig) throws Exception {
        ModelMap messagesMap = new ModelMap();

        log.debug("添加调用配置参数! user = {}", bizConfig);
        if(bizConfigService.saveBizConfig(bizConfig)){
            log.info("添加调用配置成功! bizConfigId = {}", bizConfig.getId());
            messagesMap.put("status",SUCCESS);
            messagesMap.put("message","添加成功!");
            return messagesMap;
        }
        log.info("添加调用配置失败, 但没有抛出异常! bizConfigId = {}", bizConfig.getId());
        messagesMap.put("status",FAILURE);
        messagesMap.put("message","添加失败!");
        return messagesMap;
    }

    /**
     * 跳转到调用配置管理编辑页面
     * @return
     */
    @FormToken(save = true)
    @RequiresPermissions("biz-config:update")
    @GetMapping(value = "/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap modelMap){
        BizConfig bizConfig = bizConfigService.findById(id);
        log.info("跳转到编辑页面！id = {}", id);
        modelMap.put("model", bizConfig);
        return BASE_PATH + "bizConfig-edit";
    }

    /**
     * 更新调用配置管理信息
     * @param id
     * @param bizConfig
     * @return
     */
    @FormToken(remove = true)
    @OperationLog(value = "编辑调用配置")
    @RequiresPermissions("biz-config:update")
    @ResponseBody
    @PutMapping(value = "/{id}")
    public ModelMap updateUser(@PathVariable("id") Long id, BizConfig bizConfig) throws Exception {
        ModelMap messagesMap = new ModelMap();
        log.debug("编辑调用配置参数! id= {}, bizConfig = {}", id, bizConfig);

        BizConfig bizConfigPersist = bizConfigService.findById(id);
        if (null ==bizConfigPersist) {
            log.info("编辑调用配置不存在! id = {}", id);
            messagesMap.put("status",FAILURE);
            messagesMap.put("message","调用配置不存在!");
            return messagesMap;
        }

        bizConfigPersist.setAppNameDesp(bizConfig.getAppNameDesp());
        bizConfigPersist.setUrl(bizConfig.getUrl());
        Boolean flag = bizConfigService.updateBizConfig(bizConfigPersist);
        if(flag){
            log.info("编辑调用配置成功! id= {}, bizConfig = {}", id, bizConfig);
            messagesMap.put("status",SUCCESS);
            messagesMap.put("message","编辑成功!");
            return messagesMap;
        }
        log.info("编辑调用配置失败,但没有抛出异常 ! id= {}, bizConfig = {}", id, bizConfig);
        messagesMap.put("status",FAILURE);
        messagesMap.put("message","编辑失败!");
        return messagesMap;
    }

    /**
     * 检验调用配置是否存在
     * @param appName
     * @return
     */
    @ResponseBody
    @GetMapping(value = "/isExist")
    public Boolean isExist(Long id, String appName) throws Exception {
        boolean flag = true;
        log.debug("检验调用配置是否存在参数! id= {}, appName= {}", id, appName);
        BizConfig bizConfig = bizConfigService.findByAppName(appName);
        if (null != bizConfig && !bizConfig.getId().equals(id)) {
            flag = false;
        }
        log.info("检验调用配置是否存在结果! flag = {}", flag);
        return flag;
    }
}
