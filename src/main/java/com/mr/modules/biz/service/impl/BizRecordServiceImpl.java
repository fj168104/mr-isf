package com.mr.modules.biz.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mr.common.base.service.impl.BaseServiceImpl;
import com.mr.modules.biz.model.BizRecord;
import com.mr.modules.biz.service.BizRecordService;
import com.xiaoleilu.hutool.date.DateUtil;
import com.xiaoleilu.hutool.util.StrUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * Created by feng on 18-3-2
 */

@Transactional
@Service
public class BizRecordServiceImpl extends BaseServiceImpl<BizRecord> implements BizRecordService {

	@Override
	public PageInfo<BizRecord> findPage(Integer pageNum, Integer pageSize, String appName, String startTime, String endTime) {
		Example example = new Example(BizRecord.class);
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
		List<BizRecord> bizRecordList = this.selectByExample(example);

		return new PageInfo<BizRecord>(bizRecordList);
	}
}
