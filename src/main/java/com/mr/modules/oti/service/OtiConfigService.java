package com.mr.modules.oti.service;

import com.github.pagehelper.PageInfo;
import com.mr.common.base.service.BaseService;
import com.mr.modules.oti.model.OtiConfig;

import java.util.List;
import java.util.Map;

/**
 * Created by feng on 2018/4/13.
 */
public interface OtiConfigService extends BaseService<OtiConfig> {
	/**
	 * @param pageNum  当前页码
	 * @param pageSize 每页显示条数
	 * @param msgId    消息Id
	 * @return
	 * @throws Exception
	 */
	PageInfo<OtiConfig> findPage(Integer pageNum, Integer pageSize, String msgId) throws Exception;

	/**
	 * 根据解析配置名查询调用配置
	 *
	 * @param msgId
	 * @return
	 */
	OtiConfig findByMsgId(String msgId) throws Exception;

	/**
	 * 保存配置信息
	 *
	 * @param otiConfig
	 */
	Boolean saveOtiConfig(OtiConfig otiConfig) throws Exception;

	/**
	 * 更新配置信息
	 *
	 * @param otiConfig
	 * @return
	 * @throws Exception
	 */
	Boolean updateOtiConfig(OtiConfig otiConfig) throws Exception;


	int deleteCascadeByIds(List<Object> ids);

	Object createXmlConfig(List<Object> ids, Class clazz);

	Map<String, Object> outputOtiConfig(String msgId);
}
