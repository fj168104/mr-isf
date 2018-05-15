package com.mr.modules.biz.controller;

import com.github.pagehelper.PageInfo;
import com.mr.common.annotation.OperationLog;
import com.mr.common.base.controller.BaseController;
import com.mr.modules.biz.model.BizRecord;
import com.mr.modules.biz.service.BizRecordService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 调用记录管理
 *
 * @author fengj
 * Created by JK on 2018/3/2.
 */
@Controller
@RequestMapping("/admin/biz")
public class BizRecordController extends BaseController {

	private static final String BASE_PATH = "admin/biz/";

	@Resource
	private BizRecordService bizRecordService;

	/**
	 * 分页查询调用记录列表
	 *
	 * @param pageNum   当前页码
	 * @param appName   调用记录名
	 * @param startTime 开始时间
	 * @param endTime   结束时间
	 * @param modelMap
	 * @return
	 */
	@RequiresPermissions("biz:list")
	@GetMapping
	public String list(
			@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
			String appName, String startTime, String endTime, ModelMap modelMap) {
		try {
			log.debug("分页查询调用记录列表参数! pageNum = {}, appName = {}, startTime = {}, endTime = {}", pageNum, appName, startTime, endTime);
			PageInfo<BizRecord> pageInfo = bizRecordService.findPage(pageNum, PAGESIZE, appName, startTime, endTime);
			log.info("分页查询调用记录列表结果！ pageInfo = {}", pageInfo);
			modelMap.put("pageInfo", pageInfo);
			modelMap.put("appName", appName);
			modelMap.put("startTime", startTime);
			modelMap.put("endTime", endTime);
		} catch (Exception e) {
			log.error("分页查询调用记录列表失败! e = {}", e);
		}
		return BASE_PATH + "bizRecord-list";
	}


	/**
	 * 根据主键ID删除调用记录
	 *
	 * @param id
	 * @return
	 */
    @OperationLog(value = "删除调用记录")
	@RequiresPermissions("biz:delete")
	@DeleteMapping(value = "/{id}")
	public ResponseEntity<String> delete(@PathVariable("id") Long id) {
		try {
			log.debug("删除调用记录! id = {}", id);

			bizRecordService.deleteById(id);
			log.info("删除调用记录成功! id = {}", id);

			return ResponseEntity.ok("已删除!");
		} catch (Exception e) {
			log.error("删除调用记录失败! id = {}, e = {}", id, e);
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
	}

	/**
	 * 批量删除调用记录
	 *
	 * @param ids
	 * @return
	 */
    @OperationLog(value = "批量删除调用记录")
	@RequiresPermissions("biz:delete")
	@DeleteMapping(value = "/batch/{ids}")
	public ResponseEntity<String> deleteBatch(@PathVariable("ids") List<Object> ids) {
		try {
			log.debug("批量删除调用记录! ids = {}", ids);

			if (null == ids) {
				log.info("批量删除调用记录不存在! ids = {}", ids);
				return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
			}
			bizRecordService.deleteByCondition(BizRecord.class, "id", ids);
			log.info("批量删除调用记录成功! ids = {}", ids);

			return ResponseEntity.ok("已删除!");
		} catch (Exception e) {
			log.error("批量删除调用记录失败! ids = {}, e = {}", ids, e);
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
		}
	}

	/**
	 * 查询调用记录详情
	 *
	 * @param id
	 * @return
	 */
	@RequiresPermissions("biz:view")
	@GetMapping("/{id}")
	public String view(@PathVariable("id") Long id, ModelMap modelMap) {
		BizRecord bizRecord = bizRecordService.findById(id);

		modelMap.put("model", bizRecord);
		return BASE_PATH + "bizRecord-view";
	}

}
