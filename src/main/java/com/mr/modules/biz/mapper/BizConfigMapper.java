package com.mr.modules.biz.mapper;

import com.mr.common.base.mapper.BaseMapper;
import com.mr.modules.biz.model.BizConfig;

public interface BizConfigMapper extends BaseMapper<BizConfig> {
	/**
	 * 根据所属应用名配置
	 * @param appName
	 * @return
	 */
	BizConfig findByAppName(String appName);
}