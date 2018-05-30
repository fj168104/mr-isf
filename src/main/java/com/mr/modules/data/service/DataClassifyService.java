package com.mr.modules.data.service;

import java.util.List;

import com.mr.common.base.service.BaseService;
import com.mr.modules.data.model.DataClassify;
import com.mr.modules.sys.vo.TreeNode;

/**
 * @author pxu 2018年5月18日
 */
public interface DataClassifyService extends BaseService<DataClassify> {
	/**
	 * 查询数据分类
	 * 
	 * @param name 分类名称
	 * @return
	 */
	List<DataClassify> findListByClassify(String name);

	/**
	 * 返回树列表
	 * 
	 * @return
	 */
	List<TreeNode> findTreeList();
}
