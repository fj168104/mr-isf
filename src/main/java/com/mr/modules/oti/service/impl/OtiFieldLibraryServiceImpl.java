package com.mr.modules.oti.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.common.base.service.impl.BaseServiceImpl;
import com.mr.modules.oti.mapper.OtiFieldLibraryMapper;
import com.mr.modules.oti.model.OtiFieldLibrary;
import com.mr.modules.oti.service.OtiFieldLibraryService;
import com.mr.modules.sys.vo.TreeNode;
import io.jsonwebtoken.lang.Collections;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;
import tk.mybatis.mapper.entity.Example.Criteria;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by fengj on 2018/4/30.
 */
@Transactional
@Service
public class OtiFieldLibraryServiceImpl extends BaseServiceImpl<OtiFieldLibrary> implements OtiFieldLibraryService {

	@Resource
	private OtiFieldLibraryMapper otiFieldLibraryMapper;

	@Transactional(readOnly = true)
	@Override
	public PageInfo<OtiFieldLibrary> findPage(Integer pageNum, Integer pageSize, String msgId) {
		Example example = new Example(OtiFieldLibrary.class);
		Criteria criteria = example.createCriteria();
		criteria.andEqualTo("msgId", msgId);
		PageHelper.startPage(pageNum, pageSize);
		List<OtiFieldLibrary> otiFieldLibraryList = this.selectByExample(example);
		return new PageInfo<OtiFieldLibrary>(otiFieldLibraryList);
	}

	@Transactional(readOnly = true)
	@Override
	public List<OtiFieldLibrary> findListByType(int type, String msgId) {
		OtiFieldLibrary otiFieldLibrary = new OtiFieldLibrary();
		otiFieldLibrary.setMsgId(msgId);
		otiFieldLibrary.setDataType(type);
		return this.findListByWhere(otiFieldLibrary);
	}

	@Transactional(readOnly = true)
	@Override
	public List<TreeNode> findTreeList(String msgId) {
		return otiFieldLibraryMapper.findTreeListByMsgId(msgId);
	}

	@Override
	public Boolean deleteFieldAndArrayOrObject(Long fieldId) {
		//删除权限
		int count1 = this.deleteById(fieldId);
		Example example = new Example(OtiFieldLibrary.class);
		Criteria criteria = example.createCriteria();
		criteria.andEqualTo("parentId", fieldId);

		List<OtiFieldLibrary> otiFieldLibraries = this.selectByExample(example);
		if (!Collections.isEmpty(otiFieldLibraries)) {
			for (OtiFieldLibrary otiFieldLibrary : otiFieldLibraries) {
				return deleteFieldAndArrayOrObject(otiFieldLibrary.getId());
			}
		}
		return count1 == 1;
	}

	@Transactional(readOnly = true)
	@Override
	public List<OtiFieldLibrary> findListByMsgId(String msgId) {
		Example example = new Example(OtiFieldLibrary.class);
		Criteria criteria = example.createCriteria();
		criteria.andEqualTo("msgId", msgId);
		return this.selectByExample(example);
	}

}
