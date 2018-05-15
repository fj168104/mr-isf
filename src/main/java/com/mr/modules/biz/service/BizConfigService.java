package com.mr.modules.biz.service;

import com.github.pagehelper.PageInfo;
import com.mr.common.base.service.BaseService;
import com.mr.modules.biz.model.BizConfig;

/**
 * Created by JK on 2018/3/3.
 */
public interface BizConfigService extends BaseService<BizConfig> {
    /**
     *
     * @param pageNum  当前页码
     * @param pageSize  每页显示条数
     * @param appName   所属应用
     * @param startTime 开始时间
     * @param endTime   结束时间
     * @return
     * @throws Exception
     */
    PageInfo<BizConfig> findPage(Integer pageNum, Integer pageSize, String appName, String startTime, String endTime) throws Exception;

    /**
     * 根据所属应用名查询调用配置
     * @param appName
     * @return
     */
    BizConfig findByAppName(String appName) throws Exception;

    /**
     * 保存配置信息
     * @param bizConfig
     */
    Boolean saveBizConfig(BizConfig bizConfig) throws Exception;

    /**
     * 更新配置信息
     * @param bizConfig
     * @return
     * @throws Exception
     */
    Boolean updateBizConfig(BizConfig bizConfig) throws Exception;
}
