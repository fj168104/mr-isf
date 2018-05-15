package com.mr.modules.biz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.common.base.service.impl.BaseServiceImpl;
import com.mr.modules.biz.mapper.BizConfigMapper;
import com.mr.modules.biz.model.BizConfig;
import com.mr.modules.biz.service.BizConfigService;
import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaoleilu.hutool.util.StrUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * Created by feng on 18-3-3
 */

@Transactional
@Service
public class BizConfigServiceImpl extends BaseServiceImpl<BizConfig> implements BizConfigService {

	@Autowired
	private BizConfigMapper bizConfigMapper;

	@Override
	public PageInfo<BizConfig> findPage(Integer pageNum, Integer pageSize, String appName, String startTime, String endTime) throws Exception {
		Example example = new Example(BizConfig.class);
		Example.Criteria criteria = example.createCriteria();
		if (StringUtils.isNotEmpty(appName)) {
			criteria.andLike("appName", "%" + appName + "%");
		}
		if (StrUtil.isNotEmpty(startTime)) {
			criteria.andGreaterThanOrEqualTo("createTime", DateUtil.beginOfDay(DateUtil.parse(startTime)));
		}
		if (StrUtil.isNotEmpty(endTime)) {
			criteria.andLessThanOrEqualTo("createTime", DateUtil.endOfDay(DateUtil.parse(endTime)));
		}

		//倒序
		example.orderBy("createTime").desc();

		//分页
		PageHelper.startPage(pageNum, pageSize);
		List<BizConfig> bizRecordList = this.selectByExample(example);

		return new PageInfo<BizConfig>(bizRecordList);
	}

	@Override
	public BizConfig findByAppName(String appName) throws Exception {
		if (StrUtil.isEmpty(appName)) return null;
		return bizConfigMapper.findByAppName(appName);
	}

	@Override
	public Boolean saveBizConfig(BizConfig bizConfig) throws Exception {
		bizConfig.setIsLock(false);
		return bizConfigMapper.insert(bizConfig) > 0 ? true : false;
	}

	@Override
	public Boolean updateBizConfig(BizConfig bizConfig) throws Exception {
		return bizConfigMapper.updateByPrimaryKey(bizConfig) > 0 ? true : false;
	}
}
