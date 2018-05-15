package com.mr.modules.oti.mapper;

import com.mr.common.base.mapper.BaseMapper;
import com.mr.modules.oti.model.OtiConfig;

public interface OtiConfigMapper extends BaseMapper<OtiConfig> {

	/**
	 * 根据传输消息ID配置
	 * @param msgId
	 * @return
	 */
	OtiConfig findByMsgId(String msgId);
}