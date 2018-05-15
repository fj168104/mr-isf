package com.mr.modules.oti.controller;

import com.mr.common.annotation.OperationLog;
import com.mr.common.base.controller.BaseController;
import com.mr.common.exception.ValidateException;
import com.mr.common.security.token.FormToken;
import com.mr.modules.oti.model.OtiConfig;
import com.mr.modules.oti.model.OtiFieldLibrary;
import com.mr.modules.oti.service.OtiConfigService;
import com.mr.modules.oti.service.OtiFieldLibraryService;
import com.xiaoleilu.hutool.util.StrUtil;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Objects;

/**
 * oti字段详细配置Controller
 * Created by fengj on 2017/4/30.
 */
@Controller
@RequestMapping("/admin/oti/field")
public class OtiFieldLibraryController extends BaseController {

	private static final String BASE_PATH = "admin/oti/";

	//demo 消息ID
	private static String MSG_ID_DEMO = "demo_msg";

	@Resource
	private OtiFieldLibraryService otiFieldLibraryService;
	@Resource
	private OtiConfigService otiConfigService;

	private static volatile String s_msgId;

	/**
	 * 分页查询字段详细配置列表
	 *
	 * @param pageNum  当前页码
	 * @param msgId    传输消息ID
	 * @param modelMap
	 * @return
	 */
	@RequiresPermissions("oti-field:list")
	@GetMapping
	public String toString(
			@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
			String msgId, ModelMap modelMap) throws Exception {
		try {
			msgId = StrUtil.isEmpty(msgId) ? MSG_ID_DEMO : msgId;
			log.debug("查询解析配置列表参数! msgId = {}", msgId);
			OtiConfig otiConfig = otiConfigService.findByMsgId(msgId);
			if (Objects.isNull(otiConfig)) {
				OtiConfig demoOtiConfig = new OtiConfig();
				demoOtiConfig.setMsgId(MSG_ID_DEMO);
				demoOtiConfig.setMsgNameDesp("样例消息ID");
				otiConfigService.save(demoOtiConfig);
			}

			modelMap.put("msgId", msgId);
			while(!Objects.isNull(s_msgId)) {
				Thread.sleep(100);
			}
			s_msgId = msgId;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return BASE_PATH + "otiField-list";
	}

	/**
	 * 分页查询字段详细配置列表
	 *
	 * @return
	 */
	@RequiresPermissions("oti-field:list")
	@ResponseBody
	@GetMapping(value = "/list")
	public List<OtiFieldLibrary> list(String msgId, ModelMap modelMap) throws Exception {
		if (StrUtil.isEmpty(msgId)) {
			msgId = s_msgId;
			s_msgId = null;
		}


		if (Objects.isNull(otiConfigService.findByMsgId(msgId))) {
			throw new ValidateException("msg config not exists");
		}
		modelMap.put("msgId", msgId);
		return otiFieldLibraryService.findListByMsgId(msgId);
	}

	/**
	 * 根据主键ID删除详情配置
	 *
	 * @param id
	 * @return
	 */
	@OperationLog(value = "删除配置")
	@RequiresPermissions("oti-field:delete")
	@DeleteMapping(value = "/{id}")
	public ResponseEntity<String> delete(@PathVariable("id") Long id) {
		log.debug("删除配置! id = {}", id);
		if (null == id) {
			log.info("删除配置不存在! id = {}", id);
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body("删除配置不存在!");
		}

		Boolean flag = otiFieldLibraryService.deleteFieldAndArrayOrObject(id);
		if (flag) {
			log.info("删除配置成功! id = {}", id);
			return ResponseEntity.ok("删除成功！");
		}

		log.info("删除配置失败，但没有抛出异常! id = {}", id);
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	}

	/**
	 * 跳转到字段详细配置添加页面
	 *
	 * @return
	 */
	@FormToken(save = true)
	@RequiresPermissions("oti-field:create")
	@GetMapping("/add/{msgId}")
	public String add(@PathVariable("msgId") String msgId, ModelMap modelMap) {
		log.info("跳转到配置添加页面!");
		modelMap.put("msgId", msgId);
		return BASE_PATH + "otiField-add";
	}

	/**
	 * 添加详细配置
	 *
	 * @param
	 * @return
	 */
	@FormToken(remove = true)
	@OperationLog(value = "添加详细配置")
	@RequiresPermissions("oti-field:create")
	@ResponseBody
	@PostMapping("/add")
	public ModelMap saveOtiFieldLibrary(HttpServletRequest request, OtiFieldLibrary otiFieldLibrary) {
		ModelMap messagesMap = new ModelMap();

		log.debug("添加详细配置参数! otiFieldLibrary = {}", otiFieldLibrary);
		if (otiFieldLibraryService.save(otiFieldLibrary) > 0) {
			log.info("添加解析配置成功! otiFieldLibraryId = {}", otiFieldLibrary.getId());
			messagesMap.put("status", SUCCESS);
			messagesMap.put("message", "添加成功!");
			return messagesMap;
		}
		log.info("添加解析配置失败, 但没有抛出异常! otiFieldLibraryId = {}", otiFieldLibrary.getId());
		messagesMap.put("status", FAILURE);
		messagesMap.put("message", "添加失败!");
		return messagesMap;
	}

	/**
	 * 跳转到详细配置编辑页面
	 *
	 * @return
	 */
	@FormToken(save = true)
	@RequiresPermissions("oti-field:update")
	@GetMapping(value = "/edit/{msgId}/{id}")
	public String edit(@PathVariable("id") Long id, @PathVariable("msgId") String msgId, ModelMap modelMap) {
		log.info("跳转到详细配置编辑页面！ msgid = {}, id = {}", msgId, id);
		OtiFieldLibrary otiFieldLibrary = otiFieldLibraryService.findById(id);

		modelMap.put("model", otiFieldLibrary);
		modelMap.put("msgId", msgId);
		return BASE_PATH + "otiField-edit";
	}

	/**
	 * 更新详细配置信息
	 *
	 * @param id
	 * @param otiFieldLibrary
	 * @return
	 */
	@FormToken(remove = true)
	@OperationLog(value = "编辑详细配置")
	@RequiresPermissions("oti-field:update")
	@ResponseBody
	@PutMapping(value = "/{msgId}/{id}")
	public ModelMap updatePermission(HttpServletRequest request,
									 @PathVariable("id") Long id,
									 @PathVariable("msgId") String msgId,
									 OtiFieldLibrary otiFieldLibrary) {
		ModelMap messagesMap = new ModelMap();
		log.debug("编辑详细配置参数! id= {}, otiFieldLibrary = {}", id, otiFieldLibrary);

		if (null == id) {
			messagesMap.put("status", FAILURE);
			messagesMap.put("message", "ID不能为空!");
			return messagesMap;
		}

		otiFieldLibraryService.updateSelective(otiFieldLibrary);
		log.info("编辑详细配置成功! id= {}, msgId = {}", id, msgId);
		messagesMap.put("status", SUCCESS);
		messagesMap.put("message", "编辑成功!");
		return messagesMap;
	}

	/**
	 * 跳转到子节点字段详细配置添加页面
	 *
	 * @return
	 */
	@FormToken(save = true)
	@RequiresPermissions("oti-field:create")
	@GetMapping(value = "/addChild/{msgId}/{id}")
	public String addChild(@PathVariable("id") Long id, @PathVariable("msgId") String msgId, ModelMap modelMap) {
		log.info("跳转到子节点详细配置编辑页面！ msgid = {}, id = {}", msgId, id);
		OtiFieldLibrary otiFieldLibrary = otiFieldLibraryService.findById(id);
		if(otiFieldLibrary.getDataType() != 4 && otiFieldLibrary.getDataType() != 5){
			throw new ValidateException("Message DataType must be object or array!");
		}

		modelMap.put("model", otiFieldLibrary);
		modelMap.put("msgId", msgId);
		modelMap.put("parentId", id);
		return BASE_PATH + "otiField-add";
	}

}
