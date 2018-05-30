package com.mr.modules.data.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mr.common.annotation.OperationLog;
import com.mr.common.base.controller.BaseController;
import com.mr.common.security.token.FormToken;
import com.mr.modules.data.model.DataClassify;
import com.mr.modules.data.service.DataClassifyService;
import com.mr.modules.sys.vo.TreeNode;

/**
 * 数据分类管理
 * 
 * @author pxu 2018年5月18日
 */
@Controller
@RequestMapping("/admin/data/classify")
public class DataClassifyController extends BaseController {

	private static final String BASE_PATH = "admin/data/classify/";

	@Resource
	private DataClassifyService dataClassifyService;

	/**
	 * 跳转到权限列表页面
	 * 
	 * @return
	 */
	@RequiresPermissions("data-classify:list")
	@GetMapping
	public String toList() {
		return BASE_PATH + "classify-list";
	}

	/**
	 * 查询分类列表
	 * 
	 * @param classifyName
	 *            分类名称
	 * @return
	 */
	@RequiresPermissions("data-classify:list")
	@ResponseBody
	@GetMapping("/list")
	public List<DataClassify> list(String classifyName) {
		return dataClassifyService.findListByClassify(classifyName);
	}

	/**
	 * 新增
	 */
	@FormToken(save = true)
	@RequiresPermissions("data-classify:add")
	@GetMapping("/add/{parentId}")
	public String add(@PathVariable("parentId") Long parentId, Model model) {
		log.info("跳转到分类添加页面!");
		DataClassify dataClassify = null;
		if (parentId == 0L) {
			dataClassify = new DataClassify();
		} else {
			dataClassify = dataClassifyService.findById(parentId);
			System.out.println(dataClassify);
		}
		model.addAttribute("dataClassify", dataClassify);
		return BASE_PATH + "classify-add";
	}

	/**
	 * 修改
	 */
	@FormToken(save = true)
	@RequiresPermissions("data-classify:edit")
	@GetMapping("/edit/{classifyId}")
	public String edit(@PathVariable("classifyId") Long classifyId, Model model) {
		DataClassify dataClassify = dataClassifyService.findById(classifyId);
		model.addAttribute("classify", dataClassify);
		return BASE_PATH + "classify-edit";
	}

	/**
	 * 保存分类
	 * 
	 * @param dataClassify
	 * @return
	 */
	@FormToken(remove = true)
	@OperationLog(value = "数据管理-保存分类")
	@RequiresPermissions("data-classify:add")
	@ResponseBody
	@PostMapping
	public ModelMap save(HttpServletRequest request, DataClassify dataClassify) {
		ModelMap messagesMap = new ModelMap();
		int iCount = 0;
		if (dataClassify.getId() == null) {
			log.debug("添加分类! dataClassify = {}", dataClassify);
			iCount = dataClassifyService.save(dataClassify);
		} else {
			log.debug("修改分类! dataClassify = {}", dataClassify);
			iCount = dataClassifyService.update(dataClassify);
		}
		if (iCount > 0) {
			log.info("操作成功! dataClassify = {}", dataClassify.getId());
			messagesMap.put("status", SUCCESS);
			messagesMap.put("message", "操作成功!");
		} else {
			log.warn("操作失败! dataClassify = {}", dataClassify.getId());
			messagesMap.put("status", FAILURE);
			messagesMap.put("message", "操作失败!");
		}
		return messagesMap;
	}

	/**
	 * 根据主键ID删除分类
	 * 
	 * @param id
	 * @return
	 */
	@OperationLog(value = "删除分类")
	@RequiresPermissions("data-classify:del")
	@DeleteMapping(value = "/{id}")
	public ResponseEntity<String> delete(@PathVariable("id") Long id) {
		log.debug("删除分类! id = {}", id);
		if (null == id) {
			log.info("删除分类不存在! id = {}", id);
			return ResponseEntity.status(HttpStatus.NOT_FOUND).body("删除分类不存在!");
		}
		int iRow = dataClassifyService.deleteById(id);
		if (iRow == 1) {
			log.info("删除分类成功! id = {}", id);
			return ResponseEntity.ok("删除成功！");
		}
		log.info("删除权限失败，但没有抛出异常! id = {}", id);
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
	}

	/**
	 * 选择分类树
	 */
	@GetMapping("/selectClassifyTree/{parentId}")
	public String selectClassifyTree(@PathVariable("parentId") Long parentId, Model model) {
		log.debug("选择树图,parentId={}", parentId);
		if (parentId > 0L) {
			model.addAttribute("treeName", dataClassifyService.findById(parentId).getName());
		}
		return BASE_PATH + "/classify-tree";
	}

	/**
	 * 查询数据分类树
	 *
	 * @return
	 */
	@GetMapping("/tree")
	public ResponseEntity<List<TreeNode>> getTreeList() {
		List<TreeNode> treeNodeList = dataClassifyService.findTreeList();
		return ResponseEntity.ok(treeNodeList);
	}
}
