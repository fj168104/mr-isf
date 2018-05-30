package com.mr.modules.data.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mr.common.base.service.impl.BaseServiceImpl;
import com.mr.modules.data.mapper.DataClassifyMapper;
import com.mr.modules.data.model.DataClassify;
import com.mr.modules.data.service.DataClassifyService;
import com.mr.modules.sys.model.Permission;
import com.mr.modules.sys.vo.TreeNode;
import com.xiaoleilu.hutool.util.StrUtil;

import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

/**
 * @author cuiP Created by mr on 2017/4/19.
 */
@Transactional
@Service
public class DataClassifyServiceImpl extends BaseServiceImpl<DataClassify> implements DataClassifyService {

	@Resource
	private DataClassifyMapper dataClassifyMapper;

	/**
	 * 根据分类名称查询 分类列表
	 */
	@Transactional(readOnly = true)
	@Override
	public List<DataClassify> findListByClassify(String name) {
		Example example = new Example(DataClassify.class);
		Criteria criteria = example.createCriteria();

		if (StrUtil.isNotEmpty(name)) {
			criteria.andLike("name", "%" + name + "%");
		}
		return this.selectByExample(example);
	}

	@Transactional(readOnly = true)
	@Override
	public List<TreeNode> findTreeList() {
		return dataClassifyMapper.findTreeList();
	}
}
